library IEEE;
use IEEE.std_logic_1164.all;

entity decodificador is
    -- Entradas e saídas do bloco
    port(
        estado_codificado : in  std_logic_vector(2 downto 0);
        sinal_verde       : out std_logic;
        sinal_amarelo     : out std_logic;
        sinal_vermelho    : out std_logic
    );
end decodificador;

architecture decodArq of decodificador is
begin
    process(estado_codificado)
    begin
        -- Condição para semáforo verde
        if (estado_codificado = "000" or estado_codificado = "011") then
            sinal_verde     <= '1';
            sinal_amarelo   <= '0';
            sinal_vermelho  <= '0';
        
        -- Condição para semáforo amarelo
        elsif (estado_codificado = "001") then
            sinal_verde     <= '0';
            sinal_amarelo   <= '1';
            sinal_vermelho  <= '0';
        
        -- Condição para semáforo vermelho
        elsif (estado_codificado = "010" or estado_codificado = "100") then
            sinal_verde     <= '0';
            sinal_amarelo   <= '0';
            sinal_vermelho  <= '1';
        
        -- Estado não definido: tratamento de exceção
        else
            sinal_verde     <= '0';
            sinal_amarelo   <= '0';
            sinal_vermelho  <= '0';
        end if;
    end process;
end architecture;
