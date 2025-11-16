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
	-- inicializando a uut e realizando o port map
	uut:entity work.alternador
    
    port map(
		entrada => entrada,
        saida => saida,
		clk => clk
	);
    
    -- inicializando o pulso do clock
    clk <= clk_enable and not clk after tempo/2;
    
    stim: process
    begin
    	-- estímulos de entrada
    	entrada <= '1'; wait for tempo*5;
        entrada <= '0'; wait for tempo*5;
        entrada <= '1'; wait for tempo*10;
        entrada <= '0'; wait for tempo*5;
        entrada <= '1'; wait for tempo*20;
        entrada <= '0'; wait for tempo*5;
            
        -- finaliza o clock
        clk_enable <= '0';

		-- termina simulação
        wait;  
    end process;
end architecture;
