*{{{ T1-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "2"

#define IntegralExpr "T1"

#define IntegrationSequence "1,2,4,3"
#define ChenWuVar "5"

symbols x1,...,x5;
symbol ep;
cfunctions num,den;
cfunctions Gamma,invGamma;

local `IntegralExpr' = 
  (x4*x5 + x3*x5 + x2*x5 + x1*x5 + x3*x4 + x2*x4 + x1*x3 + x1*x2)^(-1+3*ep)*
  (x2*x4*x5 + x1*x4*x5 + x2*x3*x5 + x1*x3*x5 + x2*x3*x4 + x1*x3*x4 + x1*x2*x4 + x1*x2*x3)^(-1-2*ep)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,...,x5)

.sort

#call HypAutoRegularize(`IntegralExpr')

#call HypEpExpand

#call HypApplyChenWu(`IntegralExpr',ChenWuVar)

#do IntVar={`IntegrationSequence'}
  #call HypIntegrationStep(`IntegralExpr',`IntVar')
#enddo

************************
* FINAL NORMALIZATION: *
************************
multiply Gamma(1 + 2*ep);

#call HypToGscheme(2,Gamma,invGamma,ep,`HYPMAXEP')

#call HypFinalizeResult(ep,`HYPMAXEP')

#call HypPrintStatistics

.sort

local Diff = 
  `IntegralExpr' 
  -
  (
    + 6*z3 
    + 9*ep*z4 
    - 12*ep*z3 
    - 18*ep^2*z4
    + 42*ep^2*z5 
  )
;

.sort

InExpression Diff;
  if (count(ep,1) > `HYPMAXEP') discard;
EndInExpression;

print +ss;

.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
