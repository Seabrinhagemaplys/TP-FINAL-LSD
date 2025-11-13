library IEEE;
use IEEE.std_logic_1164.all;

entity decodificador is
    port(
        estado_codificado : in std_logic_vector(2 downto 0);
        clk               : in std_logic;
        sinal_verde       : out std_logic := '0';
        sinal_amarelo     : out std_logic := '0';
        sinal_vermelho    : out std_logic := '0'
    );
end decodificador;

architecture decodArq of decodificador is
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if (estado_codificado = "000" or estado_codificado = "011") then
                sinal_verde     <= '1';
                sinal_amarelo   <= '0';
                sinal_vermelho  <= '0';

            elsif (estado_codificado = "001") then
                sinal_verde     <= '0';
                sinal_amarelo   <= '1';
                sinal_vermelho  <= '0';

            elsif (estado_codificado = "010" or estado_codificado = "100") then
                sinal_verde     <= '0';
                sinal_amarelo   <= '0';
                sinal_vermelho  <= '1';
            else
                -- Estado não definido: todos desligados
                sinal_verde     <= '0';
                sinal_amarelo   <= '0';
                sinal_vermelho  <= '0';
            end if;
        end if;
    end process;
end architecture;
