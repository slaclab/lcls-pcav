-------------------------------------------------------------------------------
-- File       : AppDiagnBus.vhd
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2023-07-27
-- Last update: 2023-07-29
-------------------------------------------------------------------------------
-- Description: Application Diagnostic Bus calculations
--
-------------------------------------------------------------------------------
-- This file is part of 'LCLS2 AMC Carrier Firmware'.
-- It is subject to the license terms in the LICENSE.txt file found in the
-- top-level directory of this distribution and at:
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
-- No part of 'LCLS2 AMC Carrier Firmware', including this file,
-- may be copied, modified, propagated, or distributed except according to
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


library surf;
use surf.StdRtlPkg.all;
use surf.AxiLitePkg.all;

library lcls_timing_core;
use lcls_timing_core.TimingPkg.all;

library amc_carrier_core;
use amc_carrier_core.AmcCarrierPkg.all;

entity AppDiagnBus is
   generic (
      TPD_G              : time                    := 1 ns );
   port (
      -- Clocks and resets
      clk                 : in    sl;
      rst                 : in    sl;
      dbus                : in    DiagnosticBusType;
      clkO                : out   sl;
      rstO                : out   sl;
      dbusO               : out   DiagnosticBusType;
      axilClk             : in    sl;
      axilRst             : in    sl;
      axilReadMaster      : in    AxiLiteReadMasterType;
      axilReadSlave       : out   AxiLiteReadSlaveType;
      axilWriteMaster     : in    AxiLiteWriteMasterType;
      axilWriteSlave      : out   AxiLiteWriteSlaveType );
end AppDiagnBus;

architecture mapping of AppDiagnBus is

  type StateType is (IDLE_C, WEIGHT_C, SUM_C, SUM2_C, DONE_C);

  constant DEP_C       : integer := 18;
  constant WGT_BITS_C  : integer := 3;  -- (0, 1, or 2) + 1-bit for sign
  constant WGT_SUM_C   : slv(WGT_BITS_C-1 downto 0) := "01" & toSlv(0,WGT_BITS_C-2);
  constant NRM_BITS_C  : integer := 18;
  
  
  type RegType is record
    dbus    : DiagnosticBusType;
    state   : StateType;
    phref   : signed(WGT_BITS_C+DEP_C-1 downto 0);
    ph00    : signed(DEP_C-1 downto 0);
    ph01    : signed(DEP_C-1 downto 0);
    ph10    : signed(DEP_C-1 downto 0);
    ph11    : signed(DEP_C-1 downto 0);
    wph00   : signed(WGT_BITS_C+DEP_C-1 downto 0);
    wph01   : signed(WGT_BITS_C+DEP_C-1 downto 0);
    wph10   : signed(WGT_BITS_C+DEP_C-1 downto 0);
    wph11   : signed(WGT_BITS_C+DEP_C-1 downto 0);
    wq00    : signed(WGT_BITS_C+DEP_C-1 downto 0);
    wq01    : signed(WGT_BITS_C+DEP_C-1 downto 0);
    wq10    : signed(WGT_BITS_C+DEP_C-1 downto 0);
    wq11    : signed(WGT_BITS_C+DEP_C-1 downto 0);
    time0   : signed(WGT_BITS_C+DEP_C-1 downto 0);
    time1   : signed(WGT_BITS_C+DEP_C-1 downto 0);
    q0      : signed(WGT_BITS_C+DEP_C-1 downto 0);
    q1      : signed(WGT_BITS_C+DEP_C-1 downto 0);
  end record;

  constant REG_INIT_C : RegType := (
    dbus    => DIAGNOSTIC_BUS_INIT_C,
    state   => IDLE_C,
    phref   => (others=>'0'),
    ph00    => (others=>'0'),
    ph01    => (others=>'0'),
    ph10    => (others=>'0'),
    ph11    => (others=>'0'),
    wph00   => (others=>'0'),
    wph01   => (others=>'0'),
    wph10   => (others=>'0'),
    wph11   => (others=>'0'),
    wq00    => (others=>'0'),
    wq01    => (others=>'0'),
    wq10    => (others=>'0'),
    wq11    => (others=>'0'),
    time0   => (others=>'0'),
    time1   => (others=>'0'),
    q0      => (others=>'0'),
    q1      => (others=>'0') );

  signal r    : RegType := REG_INIT_C;
  signal r_in : RegType;
  
  type AxilRegType is record
    ph00_offset : slv(DEP_C-1 downto 0);
    ph01_offset : slv(DEP_C-1 downto 0);
    ph10_offset : slv(DEP_C-1 downto 0);
    ph11_offset : slv(DEP_C-1 downto 0);
    wt00        : slv(WGT_BITS_C-1 downto 0);
    wt01        : slv(WGT_BITS_C-1 downto 0);
    wt10        : slv(WGT_BITS_C-1 downto 0);
    wt11        : slv(WGT_BITS_C-1 downto 0);
    normtime    : slv(NRM_BITS_C-1 downto 0);
    normq       : slv(NRM_BITS_C-1 downto 0);
    axilWriteS  : AxiLiteWriteSlaveType;
    axilReadS   : AxiLiteReadSlaveType;
  end record;

  constant AXIL_REG_INIT_C : AxilRegType := (
    ph00_offset => (others=>'0'),
    ph01_offset => (others=>'0'),
    ph10_offset => (others=>'0'),
    ph11_offset => (others=>'0'),
    wt00        => "001" & toSlv(0,WGT_BITS_C-3),
    wt01        => "001" & toSlv(0,WGT_BITS_C-3),
    wt10        => "001" & toSlv(0,WGT_BITS_C-3),
    wt11        => "001" & toSlv(0,WGT_BITS_C-3),
    normtime    => toSlv(DEP_C-15315,NRM_BITS_C),  -- 0.5E+6 / 2852
    normq       => toSlv(     1,NRM_BITS_C),
    axilWriteS  => AXI_LITE_WRITE_SLAVE_INIT_C,
    axilReadS   => AXI_LITE_READ_SLAVE_INIT_C );

  signal c   , csync : AxilRegType := AXIL_REG_INIT_C;
  signal c_in : AxilRegType;

  constant AXIL_REG_BITS_C : integer := 4*18 + 4*WGT_BITS_C+2*NRM_BITS_C;
  signal cvec, cvecsync : slv(AXIL_REG_BITS_C-1 downto 0);
  
  function toSlv(r : AxilRegType) return slv is
    variable v : slv(AXIL_REG_BITS_C-1 downto 0) := (others=>'0');
    variable i : integer := 0;
  begin
    assignSlv(i, v, r.ph00_offset);
    assignSlv(i, v, r.ph01_offset);
    assignSlv(i, v, r.ph10_offset);
    assignSlv(i, v, r.ph11_offset);
    assignSlv(i, v, r.wt00);
    assignSlv(i, v, r.wt01);
    assignSlv(i, v, r.wt10);
    assignSlv(i, v, r.wt11);
    assignSlv(i, v, r.normtime);
    assignSlv(i, v, r.normq);
    return v;
  end function;
    
  function toAxilRegType(v : slv) return AxilRegType is
    variable r : AxilRegType := AXIL_REG_INIT_C;
    variable i : integer := 0;
  begin
    assignRecord(i, v, r.ph00_offset);
    assignRecord(i, v, r.ph01_offset);
    assignRecord(i, v, r.ph10_offset);
    assignRecord(i, v, r.ph11_offset);
    assignRecord(i, v, r.wt00);
    assignRecord(i, v, r.wt01);
    assignRecord(i, v, r.wt10);
    assignRecord(i, v, r.wt11);
    assignRecord(i, v, r.normtime);
    assignRecord(i, v, r.normq);
    return r;
  end function;
  
begin

  clkO  <= clk;
  rstO  <= rst;
  dbusO <= r.dbus;
  
   comb : process ( r, rst, dbus, csync ) is
     variable v : RegType;
     variable d : signed(r.time0'range);
   begin
     v := r;

     v.dbus.strobe  := '0';
     
     case (r.state) is
       when IDLE_C =>
         if dbus.strobe = '1' then
           v.dbus   := dbus;
           v.dbus.strobe  := '0';
           v.phref  := signed(dbus.data(1)(DEP_C-1 downto 0)) * signed(WGT_SUM_C);
           v.ph00   := signed(csync.ph00_offset) + signed(dbus.data( 2)(DEP_C-1 downto 0));
           v.ph01   := signed(csync.ph01_offset) + signed(dbus.data( 6)(DEP_C-1 downto 0));
           v.ph10   := signed(csync.ph10_offset) + signed(dbus.data(10)(DEP_C-1 downto 0));
           v.ph11   := signed(csync.ph11_offset) + signed(dbus.data(14)(DEP_C-1 downto 0));
           v.state  := WEIGHT_C;
         end if;
       when WEIGHT_C =>
         v.wph00  := signed(csync.wt00) * signed(r.ph00);
         v.wph01  := signed(csync.wt01) * signed(r.ph01);
         v.wph10  := signed(csync.wt10) * signed(r.ph10);
         v.wph11  := signed(csync.wt11) * signed(r.ph11);
         v.wq00   := signed(csync.wt00) * signed(r.dbus.data( 3)(DEP_C-1 downto 0));
         v.wq01   := signed(csync.wt01) * signed(r.dbus.data( 7)(DEP_C-1 downto 0));
         v.wq10   := signed(csync.wt10) * signed(r.dbus.data(11)(DEP_C-1 downto 0));
         v.wq11   := signed(csync.wt11) * signed(r.dbus.data(15)(DEP_C-1 downto 0));
         v.state  := SUM_C;
       when SUM_C =>
         v.time0  := r.wph00 + r.wph01;
         v.time1  := r.wph10 + r.wph11;
         v.q0     := r.wq00  + r.wq01;
         v.q1     := r.wq10  + r.wq11;
         v.state        := SUM2_C;
       when SUM2_C =>
         v.dbus.strobe   := '1';
         d               := r.time0 - r.phref;
         v.dbus.data(16) := resize(slv(d),32,d(d'left));
         d               := r.time1 - r.phref;
         v.dbus.data(17) := resize(slv(d),32,d(d'left));
         v.dbus.data(18) := resize(slv(r.q0),32,r.q0(r.q0'left));
         v.dbus.data(19) := resize(slv(r.q1),32,r.q1(r.q1'left));
       --   v.time0  := r.time0 - r.phref;
       --   v.time1  := r.time1 - r.phref;
       --   v.state  := DONE_C;
       -- when DONE_C =>
       --   v.dbus.strobe   := '1';
       --   v.dbus.data(16) := r.time0 * signed(csync.normtime);
       --   v.dbus.data(17) := r.time1 * signed(csync.normtime);
       --   v.dbus.data(18) := r.q0 * signed(csync.normq);
       --   v.dbus.data(19) := r.q1 * signed(csync.normq);
         v.state         := IDLE_C;
       when others =>
         v.state         := IDLE_C;
     end case;
     
     if rst = '1' then
       v := REG_INIT_C;
     end if;

     r_in <= v;
   end process comb;

   seq : process ( clk ) is
   begin
     if rising_edge(clk) then
       r <= r_in;
     end if;
   end process seq;

     -----------------------------
     -- Register access
     -----------------------------
   reg_comb: process(c, axilRst, axilReadMaster, axilWriteMaster ) is
     variable v   : AxilRegType;
     variable ep  : AxiLiteEndPointType;
   begin
     v := c;
     
     -- Start transaction block
     axiSlaveWaitTxn(ep, axilWriteMaster, axilReadMaster, v.axilWriteS, v.axilReadS);

     axiSlaveRegister(ep, x"000", 0, v.ph00_offset);
     axiSlaveRegister(ep, x"004", 0, v.ph01_offset);
     axiSlaveRegister(ep, x"008", 0, v.ph10_offset);
     axiSlaveRegister(ep, x"00C", 0, v.ph11_offset);

     axiSlaveRegister(ep, x"010", 0, v.wt00);
     axiSlaveRegister(ep, x"014", 0, v.wt01);
     axiSlaveRegister(ep, x"018", 0, v.wt10);
     axiSlaveRegister(ep, x"01C", 0, v.wt11);

     axiSlaveRegister(ep, x"020", 0, v.normtime);
     axiSlaveRegister(ep, x"024", 0, v.normq);

     axiSlaveDefault (ep, v.axilWriteS, v.axilReadS);

     if axilRst = '1' then
       v := AXIL_REG_INIT_C;
     end if;

     c_in <= v;
     
     axilReadSlave  <= c_in.axilReadS;
     axilWriteSlave <= c_in.axilWriteS;
   end process;

   reg_seq: process(axilClk) is
   begin
     if rising_edge(axilClk) then
       c <= c_in;
     end if;
   end process;

  cvec  <= toSlv(c);
  csync <= toAxilRegType(cvecsync);

  U_CSync : entity surf.SynchronizerVector
    generic map ( WIDTH_G => cvec'length )
    port map ( clk     => clk,
               dataIn  => cvec,
               dataOut => cvecsync );
  
end mapping;
