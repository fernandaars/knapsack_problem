#!/bin/sh
echo data\; > test.dat
echo param p := \'$1\'\; >> test.dat
echo end\; >> test.dat
glpsol -m all_solution.mod -d test.dat
