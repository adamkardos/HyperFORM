*{{{ Y2-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "Y2"

#define IntegrationSequence "1,3,4,5,6"
#define ChenWuVar "2"

symbols x1,...,x6;
symbol ep;
cfunctions num,den;
cfunctions Gamma,invGamma;

local `IntegralExpr' = 
  x2^2/2*
  (
      x4*x5*x6 + x3*x5*x6 + x3*x4*x6 + x3*x4*x5 + x2*x4*x6 + x2*x4*x5
    + x2*x3*x6 + x2*x3*x5 + x1*x4*x6 + x1*x4*x5 + x1*x3*x6 + x1*x3*x5
  )^(4*ep)*
  (
      x1*x4*x5*x6 + x1*x3*x5*x6 + x1*x3*x4*x6 + x1*x3*x4*x5 + x1*x2*x4*x6
    + x1*x2*x4*x5 + x1*x2*x3*x6 + x1*x2*x3*x5
  )^(-2-3*ep)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,...,x6)

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
multiply Gamma(2 + 3*ep);

#call HypToGscheme(3,Gamma,invGamma,ep,`HYPMAXEP')

#call HypFinalizeResult(ep,`HYPMAXEP')

#call HypPrintStatistics

.sort

local Diff = 
  `IntegralExpr' 
  -
  (
    - 26/3 - 2/3*ep^-2 + 10/3*ep^-1
  )
;

.sort

InExpression Diff;
  if (count(ep,1) > `HYPMAXEP') discard;
EndInExpression;

#if 0
#endif

print +ss;

.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
