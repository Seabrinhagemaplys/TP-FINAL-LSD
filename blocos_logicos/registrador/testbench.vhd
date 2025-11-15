library IEEE;
use IEEE.std_logic_1164.all;

entity tb_registrador_n_bits is
end entity;

architecture sim of tb_registrador_n_bits is
	constant N : integer := 1;
    signal clk : std_logic := '1';
    signal clk_enable : std_logic := '1';
    signal I : std_logic_vector(N - 1 downto 0) := "1";
    signal Q : std_logic_vector(N - 1 downto 0);
    signal reset : std_logic := '0';
    constant tempo : time := 10 ns;
begin
	-- inicializando a uut e realizando o port map
	uut: entity work.registrador_n_bits
    generic map (
    	N => N
    )
    
    port map (
    	clk => clk,
        I => I,
        Q => Q,
        reset => reset
    );
    
    -- inicializando o pulso do clock
    clk <= clk_enable and not clk after tempo / 2;
    
    stim: process
    begin
        I <= "0"; wait for tempo * 5;
        I <= "1"; wait for tempo * 5;
        I <= "0"; wait for tempo * 5;
        I <= "1"; wait for tempo * 5;
        reset <= '1'; I <= "1"; wait for tempo * 5;
        reset <= '0';
        
        clk_enable <= '0';
    	wait;
    end process;
end architecture;
