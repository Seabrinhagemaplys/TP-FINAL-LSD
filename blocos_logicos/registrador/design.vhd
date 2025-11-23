-- Arthur Coronho, Lucas Szuster, Murillo Kelvin - Turma PN5
library IEEE;
use IEEE.std_logic_1164.all;

entity registrador_n_bits is
	generic (
    	-- generic para a quantidade de bits
    	N : integer := 1
    );
    
    port (
    	-- entradas
        clk : in std_logic;
        reset : in std_logic;
        I : in std_logic_vector(N - 1 downto 0);
        
        -- saídas
        Q : out std_logic_vector(N - 1 downto 0) := (others => '0')
    );
end entity;

architecture reg of registrador_n_bits is
begin
	process(clk, reset)
    begin
    	if (reset = '1') then
        	-- caso o reset esteja ativa, a saída é 0
        	Q <= (others => '0');
        elsif (rising_edge(clk)) then
        	-- caso reset não esteja ativo
            -- e seja borda de subida do clock
            -- deve-se amostrar a entrada I na saída Q
        	Q <= I;
        end if;
    end process;
end architecture;
