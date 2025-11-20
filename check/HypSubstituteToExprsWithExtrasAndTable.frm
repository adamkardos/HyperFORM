*{{{ HypSubstituteToExprsWithExtrasAndTable_1 :
#include- hyperform.h
*
symbol z;
cfunctions f, g, sol, aux;
ctable sparse,tbl(1);
*
local F =
  + (g(1) + g(1,1))*sol(1)
  + (g(2) + g(2,2))*sol(2)
  + (g(3) + g(3,3))*sol(3)
  + (g(4) + g(4,4))*sol(4)
;
*
local G1 =
  + f(1)
  + f(2)
  + f(3)
  + f(4)
  + f(5)
;
*
local G2 =
  + f(2)
  + f(3)
  + f(4)
  + f(5)
;
*
local G3 =
  + f(3)
  + f(4)
  + f(5)
;
*
local G4 =
  + f(4)
  + f(5)
;
*
*
.sort
*
#call HypSubstituteToExprsWithExtrasAndTable(F,f,sol,aux,tbl,G1,G2,G3,G4)
print +s;
.end
assert succeeded?
assert result("G1") =~ expr("
  + f(5)
  + g(1) + g(1, 1)
  + g(2) + g(2, 2)
  + g(3) + g(3, 3)
  + g(4) + g(4, 4)
")
assert result("G2") =~ expr("
  + f(5)
  + g(2) + g(2, 2)
  + g(3) + g(3, 3)
  + g(4) + g(4, 4)
")
assert result("G3") =~ expr("
  + f(5)
  + g(3) + g(3, 3)
  + g(4) + g(4, 4)
")
assert result("G4") =~ expr("
  + f(5)
  + g(4) + g(4, 4)
")
*}}}
