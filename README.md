# Knapsack Problem

## Sobre as instancias:<br>
Instancia 1: 6 itens e 3 mochilas;<br>
Instancia 2: 15 itens e 3 mochilas;<br>
Instancia 3: 50 itens e 3 mochilas;<br>
Instancia 4: 100 itens e 4 mochilas;<br>
Instancia 5: 250 itens e 5 mochilas;<br>
Instancia 6: 500 itens e 6 mochilas;<br>

## Como executar no GLPK:<br>
Comando: glpsol -m arquivo.mod -d entrada.dat -o saida.txt<br>
arquivo: kp_binary.mod ou kp_normal.mod<br>
entrada: escolher uma das instancias da pasta<br>
saida: arquivo onde irao todas as informacoes da execucao<br>

## Observacoes:<br>
Apenas os modelos kp_binary e kp_normal rodam com as instancias<br>
desta pasta, pois todas as instancias referem-se ao knapsack Pro-<br>
blem nao-multidimensional, tendo assim apenas peso, sem volume.
