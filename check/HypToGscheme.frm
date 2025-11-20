*{{{ HypToGscheme_1 :
#include- hyperform.h
#redefine HYPMAXEP "2"
*
symbol ep;
symbols n1,...,n4;
symbols z2,z3,z5,z7,z9;
cfunctions G,invG,Gamma,invGamma;
*
local F = 
  + Gamma(ep)
;
*
#call HypToGscheme(1,Gamma,invGamma,ep,`HYPMAXEP')
.sort
*
multiply replace_(HYPzeta2,z2,HYPzeta3,z3,HYPzeta5,z5,HYPzeta7,z7,HYPzeta9,z9);
*
.sort
local Diff = 
  F
  -
  (
    -
    ep^2*(6*z2-6*z3)/3
    +
    ep*z2
    +
    1/ep
    -
    2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
