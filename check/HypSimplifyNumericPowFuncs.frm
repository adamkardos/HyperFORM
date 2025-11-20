*{{{ HypSimplifyNumericPowFuncs_1 :
#include- hyperform.h
cfunction pow;
symbols n1,n2;
*
local F = pow(2,3) 
;
.sort
#call HypSimplifyNumericPowFuncs(pow,n1,...,n2)
*
.sort
*
local diff =
  F
  -
  (
    8
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
*
*{{{ HypSimplifyNumericPowFuncs_2 :
#include- hyperform.h
cfunction pow;
symbol a;
symbols n1,n2;
*
local F = pow(0,3) 
;
.sort
#call HypSimplifyNumericPowFuncs(pow,n1,...,n2)
*
.sort
*
local diff =
  F
  -
  (
    0
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
*
*{{{ HypSimplifyNumericPowFuncs_3 :
#include- hyperform.h
cfunction pow;
symbol a;
symbols n1,n2;
*
local F = pow(a,0) 
;
.sort
#call HypSimplifyNumericPowFuncs(pow,n1,...,n2)
*
.sort
*
local diff =
  F
  -
  (
    1
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
