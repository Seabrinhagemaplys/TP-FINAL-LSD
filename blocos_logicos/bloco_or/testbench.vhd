library IEEE;
use IEEE.std_logic_1164.all;
entity tb_bloco_or is
end entity;

architecture arqsim of tb_bloco_or is
    --Declaração dos signals
    signal entrada_um   :std_logic;
    signal entrada_dois : std_logic;
    signal saida        : std_logic;
    constant tempo    : time := 10 ns;
begin
    	
    -- Declarando a uut e realizando o port map
    uut:entity work.bloco_or
        
    port map(
        entrada_um => entrada_um,
        entrada_dois => entrada_dois,
        saida => saida
    );
    process
    begin
        
        --Testes implementados
        entrada_um <= '0';
        entrada_dois <= '0'; wait for tempo*5;
        
        entrada_um <= '1'; 
        entrada_dois <= '0'; wait for tempo*5;
        
        entrada_um <= '0';
        entrada_dois <= '1'; wait for tempo*5;
        
        entrada_um <= '1';
        entrada_dois <= '1'; wait for tempo*5;
        
        --Fim da simulação
        wait;
    end process;
end architecture;
