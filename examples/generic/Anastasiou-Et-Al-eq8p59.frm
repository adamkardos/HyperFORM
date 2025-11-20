*{{{ Anastasiou et al. example:
* This is Eq. (8.59) of arXiv:1302.4379
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "3"

#define IntegralExpr "AnastasiouEtAl"

#define IntegrationSequence "1,2,3"

symbols x1,x2,x3;
symbol ep;
cfunctions num,den;

* NOTE: we performed a change of integration variables to have all of them
* defined between zero and infinity!

local `IntegralExpr' = 
(x1+1)^ep*
(x2+1)^((-2*ep)-1)*
(x2+x1+1)^(ep-1)*
x3^ep*
(x1*x3+x1+1)^((-ep)-1)*
(x2^(-ep)*
den(x3+1))
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
    2*z3
    -
    ep*7/180*z4*90
    +
    ep^2*(
      25*z5 - 1/2*z3*z2*6
    )
    +
    ep^3*(
      -6*z3^2 - 809/22680*z6*945
    )
  )
;

.sort

InExpression Diff;
  if (count(ep,1) > `HYPMAXEP') discard;
EndInExpression;

#if 0
#endif

print +s;

.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
