*{{{ Anastasiou et al. example:
* This is the fibration basis calculation (Eq. (D.56)) from arXiv:1302.4379
#include- hyperform.h
*
cfunctions Linf, L, rat;
symbols x2, x3;
*
local F = Linf(rat(-1-x2-x3, x3),-1);
.sort
#call HypFibrationBasis(F,Linf,L,rat,x2,x3)
*
.sort
*
local Diff = 
  F
  -
  (
    - z2
    - L(-1, - 1 - x3,x2)
    - L(-1,x2)*L(-1,x3)
    + L(-1,x2)*L(0,x3)
    + L(0,-1,x3)
    - L(0,0,x3)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
