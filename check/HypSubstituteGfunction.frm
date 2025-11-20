*{{{ HypSubstituteGfunction_1 :
#include- hyperform.h
*
symbol ep;
symbols n1,...,n4;
cfunctions G,invG,Gamma,invGamma;
*
local F = 
  + G(1, 1, 0, 0)
;
*
#call HypSubstituteGfunction(G,invG,Gamma,invGamma,ep,n1,...,n4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(ep)*Gamma(1-ep)^2*invGamma(1)^2*invGamma(2-2*ep)
")
*}}}
*
*{{{ HypSubstituteGfunction_2 :
#include- hyperform.h
*
symbol ep;
symbols n1,...,n4;
cfunctions G,invG,Gamma,invGamma;
*
local F = 
  + G(2, 3, 4, 5)
;
*
#call HypSubstituteGfunction(G,invG,Gamma,invGamma,ep,n1,...,n4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(-1-ep)*Gamma(-2+ep)*Gamma(4-ep)*invGamma(2)*invGamma(3)*invGamma(3-2*ep)
")
*}}}
*
*{{{ HypSubstituteGfunction_3 :
#include- hyperform.h
*
symbol ep;
symbols n1,...,n4;
cfunctions G,invG,Gamma,invGamma;
*
local F = 
  + invG(1, 1, 0, 0)
;
*
#call HypSubstituteGfunction(G,invG,Gamma,invGamma,ep,n1,...,n4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(1)^2*Gamma(2-2*ep)*invGamma(ep)*invGamma(1-ep)^2
")
*}}}
*
*{{{ HypSubstituteGfunction_4 :
#include- hyperform.h
*
symbol ep;
symbols n1,...,n4;
cfunctions G,invG,Gamma,invGamma;
*
local F = 
  + invG(2, 3, 4, 5)
;
*
#call HypSubstituteGfunction(G,invG,Gamma,invGamma,ep,n1,...,n4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(2)*Gamma(3)*Gamma(3-2*ep)*invGamma(-1-ep)*invGamma(-2+ep)*invGamma(4-ep)
")
*}}}
