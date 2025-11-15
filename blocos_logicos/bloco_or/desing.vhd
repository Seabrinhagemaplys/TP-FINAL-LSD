library IEEE;
use IEEE.std_logic_1164.all;

entity bloco_or is 
	port(
      entrada_um   : in std_logic;
      entrada_dois : in std_logic;
      saida        : out std_logic
    );
end bloco_or;

architecture arq of bloco_or is
	begin
  		saida <= entrada_um or entrada_dois;
end architecture;
