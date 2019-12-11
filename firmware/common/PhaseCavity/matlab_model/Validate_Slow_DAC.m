% ####################################################################
% Filename: Validate_Slow_DAC.m
% Author: Chengcheng Xu (charliex@slac.stanford.ed)
% Date: 05/06/2019
% ####################################################################
close all
clear all

% Take information on the DC and UC board
disp('Welcome to ATCA LLRF card Slow DAC testing script')
disp('Make sure Slow DAC output is connected to the scope.')
disp('The input channel should be in DC couple, high impedance input resistance')
disp('Trigger should be set to DC couple at 0V threshold')
input('Press "Enter" after completing the instruction above')
disp('')
disp('Connect the RF out port to the 8th port from the right.')
input('Press "Enter" after verifying the reference connection')

% disp('What is the PC number of the downconverter (i.e. PC_379_396_16_C03_A01)')
% P.DC_PC = input('>> ', 's');
% disp('What is the downconverter card serial number?')
% P.DC_SN = input('>> ', 's');

disp('Enter the PC number of the upconverter (i.e. PC_379_396_17_C02_A01)')
P.UC_PC = input('>> ', 's');
disp('What is the upconverter card serial number?')
P.UC_SN = input('>> ', 's');
% P.UC_PC = 'PC_379_396_17_C02_A01';
% P.UC_SN = '01';

prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';
llrfhw   = 'AT:AC:Llrf';
DAC_PV   = 'DC:Dac2:SetValue:St';
DAC_Dsp  = 'DC:Dac:SelectDspCore:St';  % PV for controlling where the slow DAC gets data from

Vmax = 5.12;
Vmin = -4.68;
DAC_bit  = 16;
DAC_Tic_Max  = 2^(DAC_bit);
DAC_Tic_Min  = 0;
DAC_V_Max = 5;
DAC_V_Min = -5;
Tic2V = 5/(DAC_Tic_Max/2);

V_Step = 0.2;
V_linspa = linspace(0, 2*pi, ((DAC_V_Max-DAC_V_Min)/V_Step));
V_sin = (((DAC_Tic_Max-DAC_Tic_Min)/2)*sin(V_linspa)+((DAC_Tic_Max-DAC_Tic_Min)/2));

lcaPut([prefix llrfhw DAC_Dsp], 1);
lcaPut([prefix llrfhw DAC_Dsp], 0);
lcaPut([prefix llrfhw DAC_PV], 32000);

disp(['The DC output will now sweep between ' num2str(Vmin) ' and ' num2str(Vmax) 'V for a minute'])
disp('Please pay attention')
input('Press "Enter" when you are ready.')

i = 0;
j = 0;
while (i<1)
    for j=1:(length(V_sin))
        lcaPut([prefix llrfhw DAC_PV], V_sin(1,j));
        % (V_sin(1,j)-(DAC_Tic_Max/2))*Tic2V
        j = j + 1;
        pause(0.2);
        if j > 300
            i = 2
        end
    end
end

disp(['Did the output sweep between ' num2str(Vmin) ' and ' num2str(Vmax) 'V?'])
disp('');
DC_DAC_test = input('Enter 1 if yes, 0 if no: ');
if DC_DAC_test == 1
    fn_UC = ['DC_DAC_test_' P.UC_PC '_' P.UC_SN '_' datestr(now,'yy_mm_dd_HH_MM_SS') '.txt'];
    file_UC = fopen(fn_UC, 'w+');
    fprintf(file_UC, 'Model, %s\nSN, %s\nDate, %s\n' ...
    , P.UC_PC, P.UC_SN,datestr(now,'yy_mm_dd_HH_MM_SS'));
    fprintf(file_UC, 'DC DAC Range test, Pass')
end

