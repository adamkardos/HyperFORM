*{{{ D.45 :
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
*
*{{{ 8.59 :
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

print +s;

.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
*
*{{{ 8.68 :
* This is Eq. (8.68) of arXiv:1302.4379
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "AnastasiouEtAl"

#define IntegrationSequence "1,3,4,5,2"

symbols t1,...,t2,v1,...,v3;
symbol ep;
cfunctions num,den;

local `IntegralExpr' = 
  - t1^(2-4*ep)*
  (t1+1)^(ep-1)*
  t2^(1-2*ep)*
  (v1+1)^(-1+2*ep)*
  v2^(1-3*ep)*
  (t2*v3+v3+1)*
  (((t2+1)*v2+1)*v3+v2+1)^ep*
  (((((t1+1)*t2^2+(2*t1+2)*t2+t1+1)*v1+t2^2+(t1+2)*t2+t1+1)*v2+((t1+1)*t2+t1+1)*v1+(t1+1)*t2+t1+1)*v3+(((t1+1)*t2+t1+1)*v1+t2+t1+1)*v2+(t2+t1+1)*v1+t2+t1+1)^(3*ep)*
  v1^(-ep)*
  v3^(-ep)*
  ((t2+1)*v3+1)^(-3*ep)*
  den(t1*t2^2*v1*v2*v3+t2^2*v1*v2*v3+2*t1*t2*v1*v2*v3+2*t2*v1*v2*v3
  +t1*v1*v2*v3+v1*v2*v3+t2^2*v2*v3+t1*t2*v2*v3
  +2*t2*v2*v3+t1*v2*v3+v2*v3+t1*t2*v1*v3+t2*v1*v3
  +t1*v1*v3+v1*v3+t1*t2*v3+t2*v3+t1*v3+v3+t1*t2*v1*v2
  +t2*v1*v2+t1*v1*v2+v1*v2+t2*v2+t1*v2+v2+t2*v1+t1*v1
  +v1+t2+t1+1)^3
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
*
*{{{ 8.69 :
* This is Eq. (8.69) of arXiv:1302.4379
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "AnastasiouEtAl"

#define IntegrationSequence "1,3,4,5,2"

symbols t1,...,t2,v1,...,v3;
symbol ep;
cfunctions num,den;

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
