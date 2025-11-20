*{{{ zigzag4 :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "Z4"

#define IntegrationSequence "1,2,7,3,4,5,6"
#define ChenWuVar "8"

symbols al1,...,al8;
symbol ep;
cfunctions num,den;

local `IntegralExpr' = 
  den(al4*al6*al7*al8 + al2*al6*al7*al8 + al1*al6*al7*al8 + al3*al4*al7*al8 + 
      al1*al4*al7*al8 + al2*al3*al7*al8 + al1*al3*al7*al8 + al1*al2*al7*al8 + 
      al4*al5*al6*al8 + al2*al5*al6*al8 + al1*al5*al6*al8 + al2*al4*al6*al8 + 
      al1*al4*al6*al8 + al3*al4*al5*al8 + al1*al4*al5*al8 + al2*al3*al5*al8 + 
      al1*al3*al5*al8 + al1*al2*al5*al8 + al2*al3*al4*al8 + al1*al3*al4*al8 + 
      al1*al2*al4*al8 + al4*al5*al6*al7 + al2*al5*al6*al7 + al1*al5*al6*al7 + 
      al3*al4*al6*al7 + al1*al4*al6*al7 + al2*al3*al6*al7 + al1*al3*al6*al7 + 
      al1*al2*al6*al7 + al3*al4*al5*al7 + al1*al4*al5*al7 + al2*al3*al5*al7 + 
      al1*al3*al5*al7 + al1*al2*al5*al7 + al3*al4*al5*al6 + al2*al4*al5*al6 + 
      al2*al3*al5*al6 + al1*al3*al5*al6 + al1*al2*al5*al6 + al2*al3*al4*al6 +
      al1*al3*al4*al6 + al1*al2*al4*al6 + al2*al3*al4*al5 + al1*al3*al4*al5 + 
      al1*al2*al4*al5)^2;

.sort

#call HypParseInputExpr(ep,num,den,al1,...,al8)

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
    20*z5
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
