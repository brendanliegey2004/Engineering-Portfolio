library IEEE;
use IEEE.math_real.all;
use IEEE.electrical_systems.all;

entity LPF2 is
    generic (
        R2  : real := 10000.0; --10k ohm
        C2  : real := 1.0e-6; --1 uF 
        AV2 : real := 2.0 
    ); --fc = 1/(2*pi*R*C)

    port (
        terminal LPF2_IN    : electrical;
		terminal LPF2_IN_P  : electrical;
        terminal LPF2_OUT   : electrical;
        terminal gnd        : electrical
    );

end entity LPF2;

architecture BEHAVIORAL of LPF2 is

    quantity vi across LPF2_IN to gnd;
    quantity vo across LPF2_OUT to gnd;

begin

    R*C*vo'dot + vo == AV*vi; --time domain transfer function

end architecture BEHAVIORAL;