*{{{ Anastasiou et al. example:
* This is the toy example (Eq. (D.45)) from arXiv:1302.4379
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "3"

#define IntegralExpr "AnastasiouEtAl"

#define IntegrationSequence "1,2,3"

symbols x1,...,x3;
symbol ep;
cfunctions num,den;

local `IntegralExpr' = 
  x1^ep *
  (1 + x1)^(3*ep - 2) *
  x2^-ep *
  (1 + x2)^(-4*ep - 2) *
  x3^(2*ep) *
  (1 + x3)^(-ep - 1) *
  (1 + x2 + x3 + x1*x3)^(-2*ep - 1)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,...,x3)

.sort

#call HypAutoRegularize(`IntegralExpr')

#call HypEpExpand

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
    6*z2/9 - 2/3
    +
    ep*(-5*z3 + 12*z2/9 + 5/3)
    +
    ep^2*(90*z4*149/216 - 10*z3 - 16*6*z2/9 - 157/6)
    +
    ep^3*(-910/3*z5 + 90*z4*149/108 + 607/6*z3 - 6*z2*z3*277/18 + 6*z2*29/3 + 1175/12)
  )
;

.sort

InExpression Diff;
  if (count(ep,1) > `HYPMAXEP') discard;
EndInExpression;

print +s;

.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
