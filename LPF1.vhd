library IEEE;
use IEEE.math_real.all;
use IEEE.electrical_systems.all;

entity LPF1 is
    generic (
        R  : real := 10000.0; --10k ohm
        C  : real := 1.0e-6; --1 uF 
        AV : real := 2.0 
    ); --fc = 1/(2*pi*R*C)

    port (
        terminal LPF1_IN    : electrical;
		terminal LPF1_IN_P  : electrical;
        terminal LPF1_OUT   : electrical;
        terminal gnd        : electrical
    );

end entity LPF1;

architecture BEHAVIORAL of LPF1 is

    quantity vi across LPF1_IN to gnd;
    quantity vo across LPF1_OUT to gnd;

begin

    R*C*vo'dot + vo == AV*vi; --time domain transfer function

end architecture BEHAVIORAL;