library IEEE;
use IEEE.math_real.all;
use IEEE.electrical_systems.all;

entity COMP is

    generic (
        VSAT : voltage := 5.0
    );

    port (
        terminal COMP_IN    : electrical;
		terminal COMP_IN_P  : electrical;
        terminal COMP_OUT   : electrical;
        terminal gnd        : electrical
    );

end entity COMP;

architecture IDEAL of COMP is

    quantity vdiff across vp to vn;
    quantity vo    across vout to gnd;

begin

    if vdiff > 0.0 use
        vo == VSAT;
    else
        vo == -VSAT;
    end use;

end architecture IDEAL;