*{{{ G-integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "5"

#define IntegralExpr "G"

#define IntegrationSequence "1,"
#define ChenWuVar "2"

symbols x1,x2;
symbol ep;
cfunction num,den;
cfunction Gamma,invGamma;

local `IntegralExpr' = 
  (x1 + x2)^(-2+2*ep)*
  (x1*x2)^(-ep)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,x2)

.sort

#call HypAutoRegularize(`IntegralExpr')

#call HypEpExpand

#call HypApplyChenWu(`IntegralExpr',ChenWuVar)

#do IntVar=1,1
  #call HypIntegrationStep(`IntegralExpr',`IntVar')
#enddo

************************
* FINAL NORMALIZATION: *
************************
multiply Gamma(ep);

#call HypToGscheme(1,Gamma,invGamma,ep,`HYPMAXEP')

#call HypFinalizeResult(ep,{`HYPMAXEP'-1})

#call HypPrintStatistics

.sort

local Diff = 
  `IntegralExpr' 
  -
  (
    + ep^-1
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
