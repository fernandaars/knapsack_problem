# i:     indice do item;
# j:     indice do compartimento;
# p:     peso do item;
# v:     valor do item;
# w:     capacidade de peso do compartimento;
# vo:    valor objetivo;
# rpeso: restricoes de peso;
# runit: restricoes de unidade;

set Item, dimen 3;
set Moch, dimen 2;

# Indices
set N := setof{(i,v,p) in Item} i;
set M := setof{(j,w) in Moch} j;

# Assignment
var x{N, M}, binary;

maximize  vo:                      sum{(i,v,p) in Item, (j,w) in Moch} v*x[i,j];
s.t.      rpeso {(j,w) in Moch}:   sum{(i,v,p) in Item} p*x[i,j] <= w;
s.t.      runit {(i,v,p) in Item}: sum{(j,w) in Moch} x[i,j] <= 1;

solve;
