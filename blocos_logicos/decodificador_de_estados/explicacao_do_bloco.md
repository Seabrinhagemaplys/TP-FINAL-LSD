## Visão Geral
O semáforo deve ter um bloco que garante qual saída será acionada a depender do estado no qual está. Para isso, foi implementado um decodificador que recebe um vetor de 3 bits e, para cada certas codificações de estado, resulta em certas saídas. Os estados 000 e 011, acionam sinal_verde; 001 aciona sinal_amarelo e 010 e 100 acionam sinal_vermelho. Há um tratamento de excessão que "joga" todas saídas para 0 caso o valor de entrada não seja um dos estados codificados.

A explicação pode ser visualizada mais facilmente na seguinte lista:

* 000 e 001: sinal_verde
* 010: sinal_amarelo
* 010 e 100: sinal_vermelho
* outro : todos desligados

### Link do projeto EDA playground

[link do projeto](https://edaplayground.com/x/TLdc) 
