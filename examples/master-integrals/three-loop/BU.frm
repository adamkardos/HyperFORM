*{{{ BU-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "1"

#define IntegralExpr "BU"

#define IntegrationSequence "2,3,4,1,5,7"
#define ChenWuVar "6"

symbols x1,...,x7;
symbol ep;
cfunctions num,den;
cfunctions Gamma,invGamma;

local `IntegralExpr' = 
  (
      x4*x6*x7 + x3*x6*x7 + x2*x6*x7 + x1*x6*x7 + x4*x5*x7 + x3*x5*x7
    + x2*x5*x7 + x1*x5*x7 + x3*x4*x7 + x2*x4*x7 + x1*x4*x7 + x4*x5*x6 + x3*x5*x6
    + x2*x5*x6 + x1*x5*x6 + x1*x4*x6 + x1*x3*x6 + x1*x2*x6 + x3*x4*x5 + x2*x4*x5
    + x1*x3*x5 + x1*x2*x5 + x1*x3*x4 + x1*x2*x4
  )^(-1+4*ep)*
  (
      x2*x4*x6*x7 + x1*x4*x6*x7 + x2*x3*x6*x7 + x1*x3*x6*x7 + x2*x4*x5*x7
    + x1*x4*x5*x7 + x2*x3*x5*x7 + x1*x3*x5*x7 + x2*x3*x4*x7 + x1*x3*x4*x7
    + x2*x4*x5*x6 + x1*x4*x5*x6 + x2*x3*x5*x6 + x1*x3*x5*x6 + x1*x2*x4*x6
    + x1*x2*x3*x6 + x2*x3*x4*x5 + x1*x3*x4*x5 + x1*x2*x4*x5 + x1*x2*x3*x5
    + x1*x2*x3*x4
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
    + ep * ( 50*z6 - 80*z5 + 20*z3^2 )
    + ep^2 * ( 380*z7 - 200*z6 + 80*z5 + 60*z3*z4 - 80*z3^2 )
    + ep^3 * 
      ( 
        6734 - 2476*z7 - 500*z6 - 1284*z5 - 606*z4 + 90*z4^2 
        - 
        1724*z3 + 760*z3*z5 - 84*z3*z4 + 300*z3^2
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
