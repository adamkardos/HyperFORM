*{{{ Anastasiou et al. example:
* This is Eq. (8.68) of arXiv:1302.4379
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "3"

#define IntegralExpr "AnastasiouEtAl"

#define IntegrationSequence "1,3,4,5,2"

symbols t1,...,t2,v1,...,v3;
symbol ep;
cfunctions num,den;

* NOTE: we performed a change of integration variables to have all of them
* defined between zero and infinity!

local `IntegralExpr' = 
- t1^(2-4*ep)*
  (t1+1)^(ep-1)*
  t2^(1-2*ep)*
  (v1+1)^(-1+2*ep)*
  v2^(1-3*ep)*
  (t2*v3+v3+1)*
  (((t2+1)*v2+1)*v3+v2+1)^ep*
  (
    (
      (((t1+1)*t2^2 + (2*t1+2)*t2 + t1+ 1)*v1 + t2^2 + (t1+2)*t2 + t1+1)*v2
      +
      ((t1+1)*t2+t1+1)*v1 + (t1+1)*t2+t1+1
    )*v3
    +
    (((t1+1)*t2+t1+1)*v1+t2+t1+1)*v2
    +
    (t2+t1+1)*v1+t2+t1+1
  )^(3*ep)*
  v1^(-ep)*
  v3^(-ep)*
  ((t2+1)*v3+1)^(-3*ep)*
  den(
    t1*t2^2*v1*v2*v3+t2^2*v1*v2*v3+2*t1*t2*v1*v2*v3+2*t2*v1*v2*v3
    + t1*v1*v2*v3+v1*v2*v3+t2^2*v2*v3+t1*t2*v2*v3
    + 2*t2*v2*v3+t1*v2*v3+v2*v3+t1*t2*v1*v3+t2*v1*v3
    + t1*v1*v3+v1*v3+t1*t2*v3+t2*v3+t1*v3+v3+t1*t2*v1*v2
    + t2*v1*v2+t1*v1*v2+v1*v2+t2*v2+t1*v2+v2+t2*v1+t1*v1
    + v1+t2+t1+1
  )^3
;

.sort

#call HypParseInputExpr(ep,num,den,t1,...,t2,v1,...,v3)

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
    + 1/2 - 1/2*z3
    + 11/2*ep - 41/8*ep*z4 - ep*z3 + 1/4*ep*z2
    + 147/4*ep^2 - 195/16*ep^2*z4 - 123/4*ep^2*z5 + 15/4*ep^2*z3 + 5/8*ep^2*z2 - 1/2*ep^2*z2*z3
    + 1547/8*ep^3 - 13973/96*ep^3*z6 + 295/32*ep^3*z4 - 649/8*ep^3*z5 + 315/8*ep^3*z3 - 23/2*ep^3*z3^2 - 81/16*ep^3*z2 - 3*ep^3*z2*z3

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
