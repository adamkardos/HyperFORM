*{{{ HypFinalizeResult_1 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
cfunctions Gamma,invGamma;
symbol EulerG;
*
local F = pi_^2/6;
;
.sort
*
#call HypFinalizeResult(ep,6)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
")
*}}}
*
*{{{ HypFinalizeResult_2 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
cfunctions Gamma,invGamma;
symbol EulerG;
*
local F = pi_^4/90;
;
.sort
*
#call HypFinalizeResult(ep,6)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z4
")
*}}}
*
*{{{ HypFinalizeResult_3 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
cfunctions Gamma,invGamma;
symbol EulerG;
*
local F = pi_^6/945;
;
.sort
*
#call HypFinalizeResult(ep,6)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z6
")
*}}}
*
*{{{ HypFinalizeResult_4 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
cfunctions Gamma,invGamma;
symbol EulerG;
*
local F = pi_^8/9450;
;
.sort
*
#call HypFinalizeResult(ep,6)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z8
")
*}}}
*
*{{{ HypFinalizeResult_5 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
cfunctions Gamma,invGamma;
symbol EulerG;
*
local F = pi_^10/93555;
;
.sort
*
#call HypFinalizeResult(ep,6)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z10
")
*}}}
