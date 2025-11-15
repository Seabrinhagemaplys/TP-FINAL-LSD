library IEEE;
use IEEE.std_logic_1164.all;

entity alternador is
    --Declaração das entradas e saídas
    port(
        entrada : in  std_logic := '0';
        saida   : out std_logic;
        clk     : in  std_logic
    );
end entity;

architecture arq of alternador is
    --Sinal que será sempre invertido
    signal inversor : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if entrada = '1' then -- Só realiza processo caso entrada for 1      
            inversor <= not inversor;
            end if;
        end if;
    end process;

    saida <= inversor;
end architecture;
