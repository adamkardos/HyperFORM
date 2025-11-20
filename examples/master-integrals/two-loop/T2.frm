*{{{ T2-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "T2"

#define IntegrationSequence "3,2,1"
#define ChenWuVar "4"

symbols x1,...,x4;
symbol ep;
cfunctions num,den;
cfunctions Gamma,invGamma;

local `IntegralExpr' = 
  x1*(x1*x3 + x2*x3 + x1*x4 + x2*x4 + x3*x4)^(-1+3*ep)*
  (x1*x2*x3 + x1*x2*x4 + x2*x3*x4)^(-1-2*ep)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,...,x4)

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
    - 3/2 
    - 1/2*ep^-2 
    + 3/2*ep^-1
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
