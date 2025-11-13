-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
entity tb_decodificador is
end entity;

architecture arq of tb_decodificador is
	signal estado_codificado : std_logic_vector(2 downto 0);
    signal sinal_verde       : std_logic;
    signal sinal_amarelo     : std_logic;
    signal sinal_vermelho    : std_logic;
begin
	uut:entity work.decodificador
    	port map(
        	estado_codificado => estado_codificado,
            sinal_verde => sinal_verde,
            sinal_amarelo => sinal_amarelo,
            sinal_vermelho => sinal_vermelho
         );
         process
         begin
         	estado_codificado <= "000"; wait for 10 ns;
        	estado_codificado <= "001"; wait for 10 ns;
        	estado_codificado <= "010"; wait for 10 ns;
        	estado_codificado <= "011"; wait for 10 ns;
        	estado_codificado <= "100"; wait for 10 ns;
        	estado_codificado <= "101"; wait for 10 ns;
        	estado_codificado <= "110"; wait for 10 ns;
        	estado_codificado <= "111"; wait for 10 ns;
        
        wait;
    end process;
end architecture;
