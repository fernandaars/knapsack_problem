# i:     indice do item;
# j:     indice do compartimento;
# p:     peso do item;
# v:     valor do item;
# w:     capacidade de peso do compartimento;
# vo:    valor objetivo;
# rpeso: restricoes de peso;

set Item, dimen 3;
set Moch, dimen 2;

# Indices
set N := setof{(i,v,p) in Item} i;
set M := setof{(j,w) in Moch} j;

# Assignment
var x{N, M}, integer, >= 0;

maximize  vo:                    sum{(i,v,p) in Item, (j,w) in Moch} v*x[i,j];
s.t.      rpeso {(j,w) in Moch}: sum{(i,v,p) in Item} p*x[i,j] <= w;

solve;
