*{{{ HypSimplifyNumericDenFuncs_1 :
#include- hyperform.h
cfunction den;
symbols n1;
*
local F = den(2) 
;
.sort
#call HypSimplifyNumericDenFuncs(den,n1)
*
.sort
*
local diff =
  F
  -
  (
    1/2
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
