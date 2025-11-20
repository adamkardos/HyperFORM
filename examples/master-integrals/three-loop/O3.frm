*{{{ O3-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "O3"

#define IntegrationSequence "6,7,2,3,1,4"
#define ChenWuVar "5"

symbols x1,...,x7;
symbol ep;
cfunctions num,den;
cfunctions Gamma,invGamma;

local `IntegralExpr' = 
  (
      x4*x5*x7 + x4*x5*x6 + x3*x5*x7 + x3*x5*x6 + x3*x4*x7 + x3*x4*x6
    + x2*x5*x7 + x2*x5*x6 + x2*x4*x7 + x2*x4*x6 + x1*x5*x7 + x1*x5*x6
    + x1*x3*x7 + x1*x3*x6 + x1*x2*x7 + x1*x2*x6
  )^(-1+4*ep)*
  (
      x4*x5*x6*x7 + x3*x5*x6*x7 + x3*x4*x6*x7 + x2*x5*x6*x7
    + x2*x4*x6*x7 + x2*x4*x5*x7 + x2*x4*x5*x6 + x2*x3*x5*x7
    + x2*x3*x5*x6 + x2*x3*x4*x7 + x2*x3*x4*x6 + x1*x5*x6*x7
    + x1*x4*x5*x7 + x1*x4*x5*x6 + x1*x3*x6*x7 + x1*x3*x5*x7
    + x1*x3*x5*x6 + x1*x3*x4*x7 + x1*x3*x4*x6 + x1*x2*x6*x7
    + x1*x2*x4*x7 + x1*x2*x4*x6 + x1*x2*x3*x7 + x1*x2*x3*x6
  )^(-1-3*ep)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,...,x7)

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
multiply Gamma(1 + 3*ep);

#call HypToGscheme(3,Gamma,invGamma,ep,`HYPMAXEP')

#call HypFinalizeResult(ep,`HYPMAXEP')

#call HypPrintStatistics

.sort

local Diff = 
  `IntegralExpr' 
  -
  (
    6*ep^-1*z3 + 9*z4 - 12*z3
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
