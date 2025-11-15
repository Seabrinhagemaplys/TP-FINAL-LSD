Integrantes do grupo: Arthur Coronho Seabra Eiras, Lucas Araújo Campos Szuster e Murillo Kelvin de Andrade Santos

## Projeto final da discplina de Laboratório de Sistemas Digitais

### Descrição do projeto

O projeto final do nosso grupo visa o desenvolvimento de um sistema de dois
semáforos responsável por controlar o tráfego em uma interseção de duas ruas. A ideia
central é que, enquanto um sinal estiver fechado, o outro estará aberto, operando em ciclos
opostos.
Cada sinal possui quatro entradas, sendo elas:
* pedestre;
* emergência;
* outro_pedestre;
* outro_sinal_emergencia.

As saídas correspondentes a cada semáforo são:
* sinal_verde;
* sinal_amarelo;
* sinal_vermelho;
* virar_a_direita.

Dessa forma, o sistema global apresenta um total de oito entradas e oito saídas.

#### Comportamento do Sistema
Para cada semáforo, caso a entrada pedestre seja ativada enquanto o sinal estiver
verde, o sistema deve transicionar imediatamente para o vermelho. Considera-se que
um pedestre deve sempre pressionar o botão de pedestre para atravessar a via desejada.
A entrada de emergência, quando ativa, mantém o sinal de sua via no estado sinal_verde
enquanto o outro sinal é forçado ao estado sinal_vermelho. Por esse motivo, a entrada
outro_sinal_emergencia está conectada à entrada de emergência do outro semáforo. Assim,
caso essa entrada seja ativada no outro sinal, o semáforo atual permanecerá fechado até
que o sinal de emergência seja desativado.
No controle das duas vias, os veículos que estão na faixa da direita devem poder
virar à direita desde que não existam pedestres atravessando nem na sua via nem na
via cruzada. Como um pedestre só atravessa se tiver pressionado o botão de pedestre
correspondente, utiliza-se a entrada outro_pedestre para verificar se há travessia ativa

## Datapath - RTL fase 2

<img src="https://media.discordapp.net/attachments/724821027816734760/1439382183604387932/Diagrama_em_branco_1_page-0001_1.jpg?ex=691a509e&is=6918ff1e&hm=d0a426ef293bd4954423d99149584c2b6d9cbf4cebffb78aad40fac3fcd05c88&=&format=webp&width=930&height=552" alt="Caminho de Dados - RTL fase 2">
