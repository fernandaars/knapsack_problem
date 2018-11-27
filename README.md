# knapsack_problem
-> SOBRE AS INSTANCIAS:

instancia 1: 6 itens e 3 mochilas;

instancia 2: 15 itens e 3 mochilas;

instancia 3: 50 itens e 3 mochilas;

instancia 4: 100 itens e 4 mochilas;

instancia 5: 250 itens e 5 mochilas;

instancia 6: 500 itens e 6 mochilas;

-> COMO EXECUTAR NO GLPK:

Comando: glpsol -m arquivo.mod -d entrada.dat -o saida.txt

arquivo: kp_binary.mod ou kp_normal.mod

entrada: escolher uma das instancias da pasta

saida: arquivo onde irao todas as informacoes da execucao

-> OBSERVACOES:

Apenas os modelos kp_binary e kp_normal rodam com as instancias

desta pasta, pois todas as instancias referem-se ao knapsack

problem nao-multidimensional, tendo assim apenas peso, sem vo-

lume.
