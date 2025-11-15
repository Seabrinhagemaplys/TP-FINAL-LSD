-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
entity tb_alternador is
end entity;

architecture arq of tb_alternador is
	signal entrada    : std_logic;
   	signal saida      : std_logic;
    signal clk        : std_logic := '1';
    signal clk_enable : std_logic := '1';
    constant tempo    : time := 10 ns;
    begin
		uut:entity work.alternador
        	port map(
            	entrada => entrada,
                saida => saida,
                clk => clk
            );
            clk <= clk_enable and not clk after tempo/2;
            process
            begin
            entrada <= '1'; wait for tempo*5;
            entrada <= '0'; wait for tempo*5;
            entrada <= '1'; wait for tempo*5;
            
            clk_enable <= '0';

        wait;  -- termina simulação
    end process;
end architecture;
            
            
    
