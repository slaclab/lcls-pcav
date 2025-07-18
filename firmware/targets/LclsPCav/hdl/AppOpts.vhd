LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library surf;
use surf.StdRtlPkg.all;

package AppOpts is

  constant APP_TIMING_MODE_C : integer := 1; -- 1 or 2 (LCLS-I/II)
  constant UPCONVERT_V2_C    : boolean := false;
  
end AppOpts;
