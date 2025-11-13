library IEEE;
use IEEE.std_logic_1164.all;

entity tb_calcular_virar_a_direita is
end entity;

architecture sim of tb_calcular_virar_a_direita is
	-- declarações de signals necessários
	signal pedestre : std_logic;
    signal outro_pedestre : std_logic;
    signal virar_a_direita : std_logic;
    constant tempo : time := 10 ns;
begin
	-- inicializando a uut e realizando o port map
	uut: entity work.calcular_virar_a_direita
    
    port map (
    	pedestre => pedestre,
        outro_pedestre => outro_pedestre,
        virar_a_direita => virar_a_direita
    );
    
    stim: process
    begin
      -- teste 1: 0 0
      pedestre <= '0'; outro_pedestre <= '0'; wait for tempo;

      -- teste 1: 0 0
      pedestre <= '0'; outro_pedestre <= '1'; wait for tempo;

      -- teste 1: 0 0
      pedestre <= '1'; outro_pedestre <= '0'; wait for tempo;

      -- teste 1: 0 0
      pedestre <= '1'; outro_pedestre <= '1'; wait for tempo;
      
      --fim da simulação
      wait;
    end process;
end architecture;
