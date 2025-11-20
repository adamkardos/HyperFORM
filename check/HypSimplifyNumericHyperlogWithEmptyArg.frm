*{{{ HypSimplifyNumericHyperlogWithEmptyArg_1 :
#include- hyperform.h
cfunctions aux,L;
*
local F = L
;
.sort
#call HypSimplifyNumericHyperlogWithEmptyArg(aux,L)
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
*
*{{{ HypSimplifyNumericHyperlogWithEmptyArg_2 :
#include- hyperform.h
symbols a,b;
cfunctions aux,L,Lx;
*
local F = a*L + b*Lx
;
.sort
#call HypSimplifyNumericHyperlogWithEmptyArg(aux,L,Lx)
*
.sort
*
local diff =
  F
  -
  (
    a + b
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
*{{{ HypSimplifyNumericHyperlogWithEmptyArg_3 :
#include- hyperform.h
symbols a,b,c;
cfunctions aux,L,Lx;
*
local F = a*L + b*Lx + c*L(-1)
;
.sort
#call HypSimplifyNumericHyperlogWithEmptyArg(aux,L,Lx)
*
.sort
*
local diff =
  F
  -
  (
    a + b + c*L(-1)
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
