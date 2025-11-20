*{{{ Y5-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "1"

#define IntegralExpr "Y5"

#define IntegrationSequence "1,2,3,4,5"
#define ChenWuVar "6"

symbols x1,...,x6;
symbol ep;
cfunctions num,den;
cfunctions Gamma,invGamma;

local `IntegralExpr' = 
  (
       x2*x4*x6 + x2*x4*x5 + x2*x3*x6 + x2*x3*x5
     + x1*x4*x6 + x1*x4*x5 + x1*x3*x6 + x1*x3*x5
  )^(-2+4*ep)*
  (
       x2*x4*x5*x6 + x2*x3*x5*x6 + x2*x3*x4*x6 + x2*x3*x4*x5
     + x1*x4*x5*x6 + x1*x3*x5*x6 + x1*x3*x4*x6 + x1*x3*x4*x5
     + x1*x2*x4*x6 + x1*x2*x4*x5 + x1*x2*x3*x6 + x1*x2*x3*x5
  )^(-3*ep)
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
multiply Gamma(3*ep);

#call HypToGscheme(3,Gamma,invGamma,ep,`HYPMAXEP')

#call HypFinalizeResult(ep,{`HYPMAXEP'-1})

#call HypPrintStatistics

.sort

local Diff = 
  `IntegralExpr' 
  -
  (
    ep^-3
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
