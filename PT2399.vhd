LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY dff_clr IS
PORT ( clr : in bit;
       d, clk : in std_logic;
       q : out std_logic );
END dff_clr;
ARCHITECTURE behavior OF dff_clr IS
    BEGIN
        PROCESS(clk)
        BEGIN
           IF rising_edge(clk) THEN
               IF clr = '0' THEN
                  q <= '0';
               ELSE
                  q <= d;
               END IF;
           END IF;
        END PROCESS;
END behavior;