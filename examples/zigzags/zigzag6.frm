*{{{ zigzag6 :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "Z6"

#define IntegrationSequence "3,1,2,4,7,5,6,8,9,11,10"
#define ChenWuVar "12"

symbols al1,...,al12;
symbol ep;
cfunctions num,den;

local `IntegralExpr' = 
  den(al1*al2*al4*al5*al8*al10+al1*al2*al4*al5*al8*al11+al1*al2*al4*al5*al8*al12
    + al1*al2*al4*al5*al9*al10+al1*al2*al4*al5*al9*al11+al1*al2*al4*al5*al9*al12
    + al1*al2*al4*al5*al10*al11+al1*al2*al4*al5*al10*al12+al1*al2*al4*al6*al8*al10
    + al1*al2*al4*al6*al8*al11+al1*al2*al4*al6*al8*al12+al1*al2*al4*al6*al9*al10
    + al1*al2*al4*al6*al9*al11+al1*al2*al4*al6*al9*al12+al1*al2*al4*al6*al10*al11
    + al1*al2*al4*al6*al10*al12 + al1*al2*al4*al8*al9*al10 + al1*al2*al4*al8*al9*al11
    + al1*al2*al4*al8*al9*al12 + al1*al2*al4*al8*al10*al11 + al1*al2*al4*al8*al10*al12
    + al1*al2*al5*al6*al8*al10 + al1*al2*al5*al6*al8*al11 + al1*al2*al5*al6*al8*al12
    + al1*al2*al5*al6*al9*al10 + al1*al2*al5*al6*al9*al11 + al1*al2*al5*al6*al9*al12
    + al1*al2*al5*al6*al10*al11 + al1*al2*al5*al6*al10*al12 + al1*al2*al5*al7*al8*al10
    + al1*al2*al5*al7*al8*al11 + al1*al2*al5*al7*al8*al12 + al1*al2*al5*al7*al9*al10
    + al1*al2*al5*al7*al9*al11 + al1*al2*al5*al7*al9*al12 + al1*al2*al5*al7*al10*al11
    + al1*al2*al5*al7*al10*al12 + al1*al2*al5*al8*al9*al10 + al1*al2*al5*al8*al9*al11
    + al1*al2*al5*al8*al9*al12
    + al1*al2*al5*al8*al10*al11+al1*al2*al5*al8*al10*al12+al1*al2*al6*al7*al8*al10
    + al1*al2*al6*al7*al8*al11+al1*al2*al6*al7*al8*al12+al1*al2*al6*al7*al9*al10
    + al1*al2*al6*al7*al9*al11+al1*al2*al6*al7*al9*al12+al1*al2*al6*al7*al10*al11
    + al1*al2*al6*al7*al10*al12+al1*al2*al7*al8*al9*al10+al1*al2*al7*al8*al9*al11
    + al1*al2*al7*al8*al9*al12+al1*al2*al7*al8*al10*al11+al1*al2*al7*al8*al10*al12
    + al1*al3*al4*al5*al8*al10+al1*al3*al4*al5*al8*al11+al1*al3*al4*al5*al8*al12
    + al1*al3*al4*al5*al9*al10+al1*al3*al4*al5*al9*al11+al1*al3*al4*al5*al9*al12
    + al1*al3*al4*al5*al10*al11+al1*al3*al4*al5*al10*al12+al1*al3*al4*al6*al8*al10
    + al1*al3*al4*al6*al8*al11+al1*al3*al4*al6*al8*al12+al1*al3*al4*al6*al9*al10
    + al1*al3*al4*al6*al9*al11+al1*al3*al4*al6*al9*al12+al1*al3*al4*al6*al10*al11
    + al1*al3*al4*al6*al10*al12+al1*al3*al4*al8*al9*al10+al1*al3*al4*al8*al9*al11
    + al1*al3*al4*al8*al9*al12+al1*al3*al4*al8*al10*al11+al1*al3*al4*al8*al10*al12
    + al1*al3*al5*al6*al8*al10+al1*al3*al5*al6*al8*al11+al1*al3*al5*al6*al8*al12
    + al1*al3*al5*al6*al9*al10+al1*al3*al5*al6*al9*al11+al1*al3*al5*al6*al9*al12
    + al1*al3*al5*al6*al10*al11+al1*al3*al5*al6*al10*al12+al1*al3*al5*al7*al8*al10
    + al1*al3*al5*al7*al8*al11+al1*al3*al5*al7*al8*al12+al1*al3*al5*al7*al9*al10
    + al1*al3*al5*al7*al9*al11+al1*al3*al5*al7*al9*al12+al1*al3*al5*al7*al10*al11
    + al1*al3*al5*al7*al10*al12+al1*al3*al5*al8*al9*al10+al1*al3*al5*al8*al9*al11
    + al1*al3*al5*al8*al9*al12+al1*al3*al5*al8*al10*al11+al1*al3*al5*al8*al10*al12
    + al1*al3*al6*al7*al8*al10+al1*al3*al6*al7*al8*al11+al1*al3*al6*al7*al8*al12
    + al1*al3*al6*al7*al9*al10+al1*al3*al6*al7*al9*al11+al1*al3*al6*al7*al9*al12
    + al1*al3*al6*al7*al10*al11+al1*al3*al6*al7*al10*al12+al1*al3*al7*al8*al9*al10
    + al1*al3*al7*al8*al9*al11+al1*al3*al7*al8*al9*al12+al1*al3*al7*al8*al10*al11
    + al1*al3*al7*al8*al10*al12+al1*al4*al5*al7*al8*al10+al1*al4*al5*al7*al8*al11
    + al1*al4*al5*al7*al8*al12+al1*al4*al5*al7*al9*al10+al1*al4*al5*al7*al9*al11
    + al1*al4*al5*al7*al9*al12+al1*al4*al5*al7*al10*al11+al1*al4*al5*al7*al10*al12
    + al1*al4*al5*al8*al9*al10+al1*al4*al5*al8*al9*al11+al1*al4*al5*al8*al9*al12
    + al1*al4*al5*al8*al10*al12+al1*al4*al5*al8*al11*al12+al1*al4*al5*al9*al10*al11
    + al1*al4*al5*al9*al11*al12+al1*al4*al5*al10*al11*al12+al1*al4*al6*al7*al8*al10
    + al1*al4*al6*al7*al8*al11+al1*al4*al6*al7*al8*al12+al1*al4*al6*al7*al9*al10
    + al1*al4*al6*al7*al9*al11+al1*al4*al6*al7*al9*al12+al1*al4*al6*al7*al10*al11
    + al1*al4*al6*al7*al10*al12+al1*al4*al6*al8*al9*al10+al1*al4*al6*al8*al9*al11
    + al1*al4*al6*al8*al9*al12+al1*al4*al6*al8*al10*al12+al1*al4*al6*al8*al11*al12
    + al1*al4*al6*al9*al10*al11+al1*al4*al6*al9*al11*al12+al1*al4*al6*al10*al11*al12
    + al1*al4*al7*al8*al9*al10+al1*al4*al7*al8*al9*al11+al1*al4*al7*al8*al9*al12
    + al1*al4*al7*al8*al10*al11+al1*al4*al7*al8*al10*al12+al1*al4*al8*al9*al10*al11
    + al1*al4*al8*al9*al11*al12+al1*al4*al8*al10*al11*al12+al1*al5*al6*al7*al8*al10 
    + al1*al5*al6*al7*al8*al11+al1*al5*al6*al7*al8*al12+al1*al5*al6*al7*al9*al10
    + al1*al5*al6*al7*al9*al11+al1*al5*al6*al7*al9*al12+al1*al5*al6*al7*al10*al11
    + al1*al5*al6*al7*al10*al12+al1*al5*al6*al8*al9*al10+al1*al5*al6*al8*al9*al11
    + al1*al5*al6*al8*al9*al12+al1*al5*al6*al8*al10*al12+al1*al5*al6*al8*al11*al12
    + al1*al5*al6*al9*al10*al11+al1*al5*al6*al9*al11*al12+al1*al5*al6*al10*al11*al12
    + al1*al5*al7*al8*al10*al11+al1*al5*al7*al8*al11*al12+al1*al5*al7*al9*al10*al11
    + al1*al5*al7*al9*al11*al12+al1*al5*al7*al10*al11*al12+al1*al5*al8*al9*al10*al11
    + al1*al5*al8*al9*al11*al12+al1*al5*al8*al10*al11*al12+al1*al6*al7*al8*al9*al10
    + al1*al6*al7*al8*al9*al11+al1*al6*al7*al8*al9*al12+al1*al6*al7*al8*al10*al12
    + al1*al6*al7*al8*al11*al12+al1*al6*al7*al9*al10*al11+al1*al6*al7*al9*al11*al12
    + al1*al6*al7*al10*al11*al12+al1*al7*al8*al9*al10*al11+al1*al7*al8*al9*al11*al12
    + al1*al7*al8*al10*al11*al12+al2*al3*al4*al5*al8*al10+al2*al3*al4*al5*al8*al11
    + al2*al3*al4*al5*al8*al12+al2*al3*al4*al5*al9*al10+al2*al3*al4*al5*al9*al11
    + al2*al3*al4*al5*al9*al12+al2*al3*al4*al5*al10*al11+al2*al3*al4*al5*al10*al12
    + al2*al3*al4*al6*al8*al10+al2*al3*al4*al6*al8*al11+al2*al3*al4*al6*al8*al12
    + al2*al3*al4*al6*al9*al10+al2*al3*al4*al6*al9*al11+al2*al3*al4*al6*al9*al12
    + al2*al3*al4*al6*al10*al11+al2*al3*al4*al6*al10*al12+al2*al3*al4*al8*al9*al10
    + al2*al3*al4*al8*al9*al11+al2*al3*al4*al8*al9*al12+al2*al3*al4*al8*al10*al11
    + al2*al3*al4*al8*al10*al12+al2*al3*al5*al6*al8*al10+al2*al3*al5*al6*al8*al11
    + al2*al3*al5*al6*al8*al12+al2*al3*al5*al6*al9*al10+al2*al3*al5*al6*al9*al11
    + al2*al3*al5*al6*al9*al12+al2*al3*al5*al6*al10*al11+al2*al3*al5*al6*al10*al12
    + al2*al3*al5*al7*al8*al10+al2*al3*al5*al7*al8*al11+al2*al3*al5*al7*al8*al12
    + al2*al3*al5*al7*al9*al10+al2*al3*al5*al7*al9*al11+al2*al3*al5*al7*al9*al12
    + al2*al3*al5*al7*al10*al11+al2*al3*al5*al7*al10*al12+al2*al3*al5*al8*al9*al10
    + al2*al3*al5*al8*al9*al11+al2*al3*al5*al8*al9*al12+al2*al3*al5*al8*al10*al11
    + al2*al3*al5*al8*al10*al12+al2*al3*al6*al7*al8*al10+al2*al3*al6*al7*al8*al11
    + al2*al3*al6*al7*al8*al12+al2*al3*al6*al7*al9*al10+al2*al3*al6*al7*al9*al11
    + al2*al3*al6*al7*al9*al12+al2*al3*al6*al7*al10*al11+al2*al3*al6*al7*al10*al12
    + al2*al3*al7*al8*al9*al10+al2*al3*al7*al8*al9*al11+al2*al3*al7*al8*al9*al12
    + al2*al3*al7*al8*al10*al11+al2*al3*al7*al8*al10*al12+al2*al4*al5*al6*al8*al10
    + al2*al4*al5*al6*al8*al11+al2*al4*al5*al6*al8*al12+al2*al4*al5*al6*al9*al10
    + al2*al4*al5*al6*al9*al11+al2*al4*al5*al6*al9*al12+al2*al4*al5*al6*al10*al11
    + al2*al4*al5*al6*al10*al12+al2*al4*al5*al8*al10*al11+al2*al4*al5*al8*al11*al12
    + al2*al4*al5*al9*al10*al11+al2*al4*al5*al9*al11*al12+al2*al4*al5*al10*al11*al12
    + al2*al4*al6*al8*al9*al10+al2*al4*al6*al8*al9*al11+al2*al4*al6*al8*al9*al12
    + al2*al4*al6*al8*al10*al12+al2*al4*al6*al8*al11*al12+al2*al4*al6*al9*al10*al11
    + al2*al4*al6*al9*al11*al12+al2*al4*al6*al10*al11*al12+al2*al4*al8*al9*al10*al11
    + al2*al4*al8*al9*al11*al12+al2*al4*al8*al10*al11*al12+al2*al5*al6*al7*al8*al10
    + al2*al5*al6*al7*al8*al11+al2*al5*al6*al7*al8*al12+al2*al5*al6*al7*al9*al10
    + al2*al5*al6*al7*al9*al11+al2*al5*al6*al7*al9*al12+al2*al5*al6*al7*al10*al11
    + al2*al5*al6*al7*al10*al12+al2*al5*al6*al8*al9*al10+al2*al5*al6*al8*al9*al11
    + al2*al5*al6*al8*al9*al12+al2*al5*al6*al8*al10*al12+al2*al5*al6*al8*al11*al12
    + al2*al5*al6*al9*al10*al11+al2*al5*al6*al9*al11*al12+al2*al5*al6*al10*al11*al12
    + al2*al5*al7*al8*al10*al11+al2*al5*al7*al8*al11*al12+al2*al5*al7*al9*al10*al11
    + al2*al5*al7*al9*al11*al12+al2*al5*al7*al10*al11*al12+al2*al5*al8*al9*al10*al11
    + al2*al5*al8*al9*al11*al12+al2*al5*al8*al10*al11*al12+al2*al6*al7*al8*al9*al10
    + al2*al6*al7*al8*al9*al11+al2*al6*al7*al8*al9*al12+al2*al6*al7*al8*al10*al12
    + al2*al6*al7*al8*al11*al12+al2*al6*al7*al9*al10*al11+al2*al6*al7*al9*al11*al12
    + al2*al6*al7*al10*al11*al12+al2*al7*al8*al9*al10*al11+al2*al7*al8*al9*al11*al12
    + al2*al7*al8*al10*al11*al12+al3*al4*al5*al6*al8*al10+al3*al4*al5*al6*al8*al11
    + al3*al4*al5*al6*al8*al12+al3*al4*al5*al6*al9*al10+al3*al4*al5*al6*al9*al11
    + al3*al4*al5*al6*al9*al12+al3*al4*al5*al6*al10*al11+al3*al4*al5*al6*al10*al12
    + al3*al4*al5*al7*al8*al10+al3*al4*al5*al7*al8*al11+al3*al4*al5*al7*al8*al12
    + al3*al4*al5*al7*al9*al10+al3*al4*al5*al7*al9*al11+al3*al4*al5*al7*al9*al12
    + al3*al4*al5*al7*al10*al11+al3*al4*al5*al7*al10*al12+al3*al4*al5*al8*al9*al10
    + al3*al4*al5*al8*al9*al11+al3*al4*al5*al8*al9*al12+al3*al4*al5*al8*al10*al11
    + al3*al4*al5*al8*al10*al12+al3*al4*al6*al7*al8*al10+al3*al4*al6*al7*al8*al11
    + al3*al4*al6*al7*al8*al12+al3*al4*al6*al7*al9*al10+al3*al4*al6*al7*al9*al11
    + al3*al4*al6*al7*al9*al12+al3*al4*al6*al7*al10*al11+al3*al4*al6*al7*al10*al12
    + al3*al4*al7*al8*al9*al10+al3*al4*al7*al8*al9*al11+al3*al4*al7*al8*al9*al12
    + al3*al4*al7*al8*al10*al11+al3*al4*al7*al8*al10*al12+al4*al5*al6*al7*al8*al10
    + al4*al5*al6*al7*al8*al11+al4*al5*al6*al7*al8*al12+al4*al5*al6*al7*al9*al10
    + al4*al5*al6*al7*al9*al11+al4*al5*al6*al7*al9*al12+al4*al5*al6*al7*al10*al11
    + al4*al5*al6*al7*al10*al12+al4*al5*al6*al8*al9*al10+al4*al5*al6*al8*al9*al11
    + al4*al5*al6*al8*al9*al12+al4*al5*al6*al8*al10*al12+al4*al5*al6*al8*al11*al12
    + al4*al5*al6*al9*al10*al11+al4*al5*al6*al9*al11*al12+al4*al5*al6*al10*al11*al12
    + al4*al5*al7*al8*al10*al11+al4*al5*al7*al8*al11*al12+al4*al5*al7*al9*al10*al11
    + al4*al5*al7*al9*al11*al12+al4*al5*al7*al10*al11*al12+al4*al5*al8*al9*al10*al11
    + al4*al5*al8*al9*al11*al12+al4*al5*al8*al10*al11*al12+al4*al6*al7*al8*al9*al10
    + al4*al6*al7*al8*al9*al11+al4*al6*al7*al8*al9*al12+al4*al6*al7*al8*al10*al12
    + al4*al6*al7*al8*al11*al12+al4*al6*al7*al9*al10*al11+al4*al6*al7*al9*al11*al12
    + al4*al6*al7*al10*al11*al12+al4*al7*al8*al9*al10*al11+al4*al7*al8*al9*al11*al12
    + al4*al7*al8*al10*al11*al12
  )^2
;

.sort

#call HypParseInputExpr(ep,num,den,al1,...,al12)

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
    168*z9
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
