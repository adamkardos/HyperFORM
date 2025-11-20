*{{{ HypSimplifyNumericNumFuncs_1 :
#include- hyperform.h
symbol n1;
cfunction num;
*
local F = num(2) 
;
.sort
#call HypSimplifyNumericNumFuncs(num,n1)
*
.sort
*
local diff =
  F
  -
  (
    2
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
*{{{ HypSimplifyNumericNumFuncs_2 :
#include- hyperform.h
symbol n1;
symbol a;
cfunction num;
*
local F = num(a) 
;
.sort
#call HypSimplifyNumericNumFuncs(num,n1)
*
.sort
*
local diff =
  F
  -
  (
    num(a)
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
*{{{ HypSimplifyNumericNumFuncs_3 :
#include- hyperform.h
symbol n1;
symbol a;
cfunction num;
*
local F = num(2*a) 
;
.sort
#call HypSimplifyNumericNumFuncs(num,n1)
*
.sort
*
local diff =
  F
  -
  (
    num(2*a)
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
