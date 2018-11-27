# i:     indice do item;
# j:     indice do compartimento;
# l:     volume do item;
# p:     peso do item;
# v:     valor do item;
# s:     volume do compartimento;
# w:     capacidade de peso do compartimento;
# vo:    valor objetivo;
# rpeso: restricoes de peso;
# rvolu: restricoes de volume;
# runit: restricoes de unidade;

set Item, dimen 4;
set Moch, dimen 3;

# Indices
set N := setof{(i,v,p,l) in Item} i;
set M := setof{(j,w,s) in Moch} j;

# Assignment
var x{N, M}, binary;

maximize  vo:                        sum{(i,v,p,l) in Item, (j,w,s) in Moch} v*x[i,j];
s.t.      rpeso {(j,w,s) in Moch}:   sum{(i,v,p,l) in Item} p*x[i,j] <= w;
s.t.      rvolu {(j,w,s) in Moch}:   sum{(i,v,p,l) in Item} l*x[i,j] <= s;
s.t.      runit {(i,v,p,l) in Item}: sum{(j,w,s) in Moch} x[i,j] <= 1;

solve;
