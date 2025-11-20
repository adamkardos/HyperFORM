*{{{ FA-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "2"

#define IntegralExpr "FA"

#define IntegrationSequence "2,3,7,4,6,5"
#define ChenWuVar "1"

symbols x1,...,x7;
symbol ep;
cfunctions num,den;
cfunctions Gamma,invGamma;

local `IntegralExpr' = 
  (
      x5*x6*x7 + x4*x6*x7 + x3*x6*x7 + x2*x6*x7 + x1*x6*x7 + x4*x5*x7
    + x3*x5*x7 + x2*x5*x7 + x1*x4*x7 + x1*x3*x7 + x1*x2*x7 + x3*x5*x6 + x2*x5*x6
    + x3*x4*x6 + x2*x4*x6 + x1*x3*x6 + x1*x2*x6 + x3*x4*x5 + x2*x4*x5 + x1*x3*x4
    + x1*x2*x4
  )^(-1+4*ep)*
  (
      x2*x5*x6*x7 + x1*x5*x6*x7 + x2*x4*x6*x7 + x1*x4*x6*x7 + x2*x3*x6*x7
    + x1*x3*x6*x7 + x2*x4*x5*x7 + x1*x4*x5*x7 + x2*x3*x5*x7 + x1*x3*x5*x7
    + x1*x2*x5*x7 + x1*x2*x4*x7 + x1*x2*x3*x7 + x2*x3*x5*x6 + x1*x3*x5*x6
    + x1*x2*x5*x6 + x2*x3*x4*x6 + x1*x3*x4*x6 + x1*x2*x4*x6 + x1*x2*x3*x6
    + x2*x3*x4*x5 + x1*x3*x4*x5 + x1*x2*x4*x5 + x1*x2*x3*x4
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
    + ep * (
          + 50*z6
          - 80*z5
          - 4*z3^2
          )
    + ep^2 * (
          + 359*z7
          - 200*z6
          + 80*z5
          - 12*z3*z4
          + 16*z3^2
          )
    + 20*z5
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
