## Visão Geral

O semáforo deve ter um bloco que garante qual saída será acionada a depender do estado no qual está. Para isso, foi implementado um decodificador que recebe um vetor de 3 bits e, para cada certas codificações de estado, resulta em certas saídas. Os estados 000 e 011, acionam sinal_verde; 001 aciona sinal_amarelo e 010 e 100 acionam sinal_vermelho. Há um tratamento de excessão que "joga" todas saídas para 0 caso o valor de entrada não seja um dos estados codificados.

A maior diferença entre esse bloco e o outro decodificador implementado é que esse é síncrono ou seja, tem seu funcionamento
sincronizado com um clock. Toda vez que há uma borda de subida do clk, as entradas são reavaliadas.
Inicialmente, antes que haja a primeira borda de subida do clock, todas as saídas são "jogadas" para 0, para que não fiquem 
indefinidas. Assim que há a primeira borda de subida, as saídas são atualizadas. Logo, se estamos em um estado, o próximo
irá somente aparecer na saída assim que houver a borda de subida.
Segue a mesma lógica de saídas do outro:

* 000 e 001: sinal_verde
* 010: sinal_amarelo
* 010 e 100: sinal_vermelho
* outro : todos desligados

### Link do projeto EDA playground

[link do projeto](https://edaplayground.com/x/hYRW)

Novamente, quando recebe uma entrada, ela só é exibida na próxima borda de subida do clock.
