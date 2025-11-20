*{{{ LA-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "1"

#define IntegralExpr "LA"

#define IntegrationSequence "1,6,7,2,3,5,4"
#define ChenWuVar "8"

symbols x1,...,x8;
symbol ep;
cfunctions num,den;
cfunctions Gamma,invGamma;

local `IntegralExpr' = 
  (
    x6*x7*x8 + x5*x7*x8 + x4*x7*x8 + x3*x7*x8 + x2*x7*x8 + x1*x7*x8
  + x5*x6*x8 + x4*x6*x8 + x3*x6*x8 + x2*x6*x8 + x1*x5*x8 + x1*x4*x8 + x1*x3*x8
  + x1*x2*x8 + x4*x6*x7 + x3*x6*x7 + x4*x5*x7 + x3*x5*x7 + x2*x4*x7 + x1*x4*x7
  + x2*x3*x7 + x1*x3*x7 + x4*x5*x6 + x3*x5*x6 + x2*x4*x6 + x2*x3*x6 + x1*x4*x5
  + x1*x3*x5 + x1*x2*x4 + x1*x2*x3
  )^(4*ep)*
  (
    x3*x6*x7*x8 + x2*x6*x7*x8 + x1*x6*x7*x8 + x3*x5*x7*x8 + x2*x5*x7*x8
  + x1*x5*x7*x8 + x3*x4*x7*x8 + x2*x4*x7*x8 + x1*x4*x7*x8 + x3*x5*x6*x8
  + x2*x5*x6*x8 + x1*x5*x6*x8 + x3*x4*x6*x8 + x2*x4*x6*x8 + x1*x4*x6*x8
  + x1*x3*x6*x8 + x1*x2*x6*x8 + x1*x3*x5*x8 + x1*x2*x5*x8 + x1*x3*x4*x8
  + x1*x2*x4*x8 + x3*x4*x6*x7 + x2*x4*x6*x7 + x1*x4*x6*x7 + x2*x3*x6*x7
  + x1*x3*x6*x7 + x3*x4*x5*x7 + x2*x4*x5*x7 + x1*x4*x5*x7 + x2*x3*x5*x7
  + x1*x3*x5*x7 + x2*x3*x4*x7 + x1*x3*x4*x7 + x3*x4*x5*x6 + x2*x4*x5*x6
  + x1*x4*x5*x6 + x2*x3*x5*x6 + x1*x3*x5*x6 + x2*x3*x4*x6 + x1*x2*x4*x6
  + x1*x2*x3*x6 + x1*x3*x4*x5 + x1*x2*x4*x5 + x1*x2*x3*x5 + x1*x2*x3*x4
  )^(-2-3*ep)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,...,x8)

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
    + ep * (
       + 50*z6
       - 80*z5
       + 44*z3^2
       )
    + ep^2 * (
       + 317*z7
       - 200*z6
       + 80*z5
       + 132*z3*z4
       - 176*z3^2
       )
    + 20*z5
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
