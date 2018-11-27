param c;

# Items: index, size, profit
set I, dimen 3;

# Indices
set J := setof{(i,s,p) in I} i;

# Assignment
var a{J}, binary;

maximize obj :
  sum{(i,s,p) in I} p*a[i];

s.t. size :
  sum{(i,s,p) in I} s*a[i] <= c;

solve;

printf "The knapsack contains:\n";
printf {(i,s,p) in I: a[i] == 1} " %i", i;
printf "\n";

data;

# Size of the knapsack
param c := 4;

# Items: index, size, profit
set I :=