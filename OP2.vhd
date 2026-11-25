library IEEE;
use IEEE.math_real.all;
use IEEE.electrical_systems.all;

entity OP1 is
    generic (
        A : real := 1.0e6
    );

    port (
        terminal OP1_IN   : electrical;
		terminal OP1_IN_P : electrical;
        terminal OP1_OUT  : electrical
    );

end entity OP1;

architecture IDEAL of OP1 is

    quantity vdiff across OP1_IN_P to OP1_IN;
    quantity OP1_OUT across iout through vout;

begin

    OP1_OUT == A * vdiff; --recall 4.7k ohm resistor

end architecture IDEAL;