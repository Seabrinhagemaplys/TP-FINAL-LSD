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

## FSM de alto nível -RTL fase 1

<img src="https://cdn.discordapp.com/attachments/724821027816734760/1439404175581642902/graphviz_2.png?ex=691a651a&is=6919139a&hm=f075a909f6bf794ba3c553f497fe6ed49cb2bc999b81000c076cf4496b54f4f1&" alt="Caminho de Dados - RTL fase 2">

## Datapath - RTL fase 2

<img src="https://media.discordapp.net/attachments/724821027816734760/1439409671281836124/vvvvvv_page-0001_1.jpg?ex=691a6a38&is=691918b8&hm=3e4742e3ff5cfb4f3e515d796725bd00bf318a5636b163dd6dec8640a9ea2e72&=&format=webp&width=822&height=569" alt="Caminho de Dados - RTL fase 2">

## Integração Caminho de dados e Controladora - RTL fase 3
<img src="https://media.discordapp.net/attachments/724821027816734760/1439410138913050824/Fluxograma_2dadsa_page-0001_1.jpg?ex=691a6aa8&is=69191928&hm=6d4df3a2709521feb3863b053d569499c8943ef6f43efe0cb5ad374093fe1242&=&format=webp&width=1205&height=552" alt="Integração Caminho de dados e Controladora - RTL fase 3">

## FSM de baixo nível - RTL fase 4
<img src="https://media.discordapp.net/attachments/724821027816734760/1439403565394301029/graphviz_1.png?ex=691a6488&is=69191308&hm=8bd6c6162cdde7a9501528d0a54f80a81fdf8b999450b64a845747488063088a&=&format=webp&quality=lossless&width=822&height=643" alt="FSM de baixo nível - RTL fase 4">
