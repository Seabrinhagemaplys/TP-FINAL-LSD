library IEEE;
use IEEE.std_logic_1164.all;

entity calcular_virar_a_direita is
  port (
    -- entradas
	pedestre : in std_logic;
    outro_pedestre : in std_logic;
    emergencia : in std_logic;
    outra_emergencia : in std_logic;
    
    -- saídas
    virar_a_direita : out std_logic := '0'
  );
end entity;

architecture calc of calcular_virar_a_direita is
begin
	-- pode virar a direita se nenhum pedestre está atravessando
	virar_a_direita <= not(pedestre) and not(outro_pedestre) and not(emergencia) and not(outra_emergencia);	
end architecture;
