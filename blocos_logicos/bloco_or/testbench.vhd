library IEEE;
use IEEE.std_logic_1164.all;
entity tb_bloco_or is
end entity;

architecture arqsim of tb_bloco_or is
	signal entrada_um   :std_logic;
    signal entrada_dois : std_logic;
    signal saida        : std_logic;
    constant tempo    : time := 10 ns;
    begin
    	uut:entity work.bloco_or
        port map(
        	entrada_um => entrada_um,
            entrada_dois => entrada_dois,
            saida => saida
        );
        process
        begin
        
        entrada_um <= '0';
        entrada_dois <= '0'; wait for tempo*5;
        
        entrada_um <= '1'; 
        entrada_dois <= '0'; wait for tempo*5;
        
        entrada_um <= '0';
        entrada_dois <= '1'; wait for tempo*5;
        
        entrada_um <= '1';
        entrada_dois <= '1'; wait for tempo*5;
        
        wait;
        end process;
end architecture;
