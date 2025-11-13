library IEEE;
use IEEE.std_logic_1164.all;
entity tb_decodificador is
end entity;

architecture arq of tb_decodificador is
	signal estado_codificado : std_logic_vector(2 downto 0);
    signal sinal_verde       : std_logic;
    signal sinal_amarelo     : std_logic;
    signal sinal_vermelho    : std_logic;
    signal clk               : std_logic:= '1';
    signal clk_enable        : std_logic := '1';
    constant tempo           : time := 10 ns;
    
begin
	uut:entity work.decodificador
    	port map(
        	estado_codificado => estado_codificado,
            sinal_verde => sinal_verde,
            sinal_amarelo => sinal_amarelo,
            sinal_vermelho => sinal_vermelho,
            clk => clk
         );
         clk <= clk_enable and not clk after tempo/2;
         process
         begin
         	estado_codificado <= "000"; wait for tempo;
        	estado_codificado <= "001"; wait for tempo;
        	estado_codificado <= "010"; wait for tempo;
        	estado_codificado <= "011"; wait for tempo;
        	estado_codificado <= "100"; wait for tempo;
        	estado_codificado <= "101"; wait for tempo;
        	estado_codificado <= "110"; wait for tempo;
        	estado_codificado <= "111"; wait for tempo;
            
            clk_enable <= '0';
        
        wait;
    end process;
end architecture;
