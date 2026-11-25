library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM is
    PORT(RAM_ADDR: in std_logic_vector(12 downto 0); -- Address to write/read RAM
             RAM_MI: in std_logic_vector(7 downto 0); -- Data to write into RAM
			 RAM_MO: out std_logic_vector(7 downto 0) -- Data output of RAM
             RAM_WR: in std_logic; -- Write enable 
             CLK: in std_logic; -- clock input for RAM
             );
end RAM;

architecture Behavioral of RAM is

    type ram_array is array (0 to 5631) --44k bits
        of std_logic_vector(7 downto 0);

    signal ram_data : ram_array := (others => x"00");

begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RAM_WR = '1' then
                ram_data(to_integer(unsigned(address))) <= RAM_MI;
            end if;
        end if;
    end process;

    RAM_MO <= ram_data(to_integer(unsigned(address)));

end Behavioral;