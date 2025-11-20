*{{{ Anastasiou et al. example:
* This is Eq. (8.69) of arXiv:1302.4379
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "3"

#define IntegralExpr "AnastasiouEtAl"

#define IntegrationSequence "1,3,4,5,2"

symbols t1,...,t2,v1,...,v3;
symbol ep;
cfunctions num,den;

* NOTE: as for other examples even in this case we changed integration variables
* to have sufficient limits for integration in terms of Hlogs

local `IntegralExpr' = 
  t1^(2-4*ep)*
  (t1+1)^(ep-1)*
  t2^(1-2*ep)*
  v1^(1-ep)*
  (v1+1)^(2*ep-2)*
  v2^(1-3*ep)*
  (t2*v3+v3+1)*
  (((t2+1)*v2+1)*v3+v2+1)^ep*
  (((((t1+1)*t2^2+(2*t1+2)*t2+t1+1)*v1+t1*t2+t1)*v2+((t1+1)*t2+t1+1)*v1+t1*t2+t1)*v3+(((t1+1)*t2+t1+1)*v1+t1)*v2+(t2+t1+1)*v1+t1)^(3*ep)*
  v3^(-ep)*
  ((t2+1)*v3+1)^(-3*ep)*
  den(
    t1*t2^2*v1*v2*v3+t2^2*v1*v2*v3+
    2*t1*t2*v1*v2*v3+2*t2*v1*v2*v3+
    t1*v1*v2*v3+v1*v2*v3+t1*t2*v2*v3+
    t1*v2*v3+t1*t2*v1*v3+t2*v1*v3+t1*v1*v3+
    v1*v3+t1*t2*v3+t1*v3+t1*t2*v1*v2+t2*v1*v2+
    t1*v1*v2+v1*v2+t1*v2+t2*v1 +t1*v1+v1+t1
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
    + 1/2 + z3 - z2 + 11/2*ep + 75/8*ep*z4 - 19/4*ep*z3 - 23/4*ep*z2
    + 147/4*ep^2 + 5/16*ep^2*z4 + 185/4*ep^2*z5 - 323/8*ep^2*z3 - 191/8*ep^2*z2 + 5/2*ep^2*z2*z3
    + 1547/8*ep^3 + 18817/96*ep^3*z6 - 3745/32*ep^3*z4 + 139/8*ep^3*z5 - 3013/16*ep^3*z3 + 22*ep^3*z3^2 - 1445/16*ep^3*z2 + 67/2*ep^3*z2*z3
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
