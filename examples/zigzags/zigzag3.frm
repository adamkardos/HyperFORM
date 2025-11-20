*{{{ zigzag3 :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "Z3"

#define IntegrationSequence "1,2,3,4,5"
#define ChenWuVar "6"

symbols al1,...,al6;
symbol ep;
cfunctions num,den;

local `IntegralExpr' = den(al4*al5*al6 + al2*al5*al6 + al1*al5*al6 + al3*al4*al6 + 
                           al1*al4*al6 + al2*al3*al6 + al1*al3*al6 + al1*al2*al6 + 
                           al3*al4*al5 + al2*al4*al5 + al2*al3*al5 + al1*al3*al5 + 
                           al1*al2*al5 + al2*al3*al4 + al1*al3*al4 + al1*al2*al4)^2;

.sort

#call HypParseInputExpr(ep,num,den,al1,...,al6)

.sort

#call HypEpExpand

#call HypApplyChenWu(`IntegralExpr',ChenWuVar)

#do IntVar={`IntegrationSequence'}
  #call HypIntegrationStep(`IntegralExpr',`IntVar')
#enddo

#call HypFinalizeResult(ep,`HYPMAXEP')

#call HypPrintStatistics

.sort

local Diff = 
  `IntegralExpr'
  -
  (
    6*z3
  )
;

.sort

print +s;

.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
