*{{{ One-loop massless box integral :
#-
#include- hyperform.h

off statistics; 

#define HYPMAXEP "0"

#define IntegralExpr "D0"

#define IntegrationSequence "1,2,3"
#define ChenWuVar "4"

symbols x1,...,x4;
symbol ep;
symbols U,u;
symbol x;
cfunctions num,den,rat,Linf,L,log;
cfunctions acc,acc2;

local `IntegralExpr' = 
  (x1 + x2 + x3 + x4)^(2*ep)*
  (x1*x3 + x2*x4*U)^(-2-ep)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,x2,x3,x4)

.sort

#call HypAutoRegularize(`IntegralExpr',U)

#call HypEpExpand

* Applying the Chen-Wu theorem:
#call HypApplyChenWu(`IntegralExpr',ChenWuVar)

#call HypSimplify

#do IntVar={`IntegrationSequence'}
  #call HypIntegrationStep(`IntegralExpr',`IntVar')
  .sort
  PolyRatFun;
#enddo

************************
* FINAL NORMALIZATION: *
************************
#call HypFinalizeResult(ep,`HYPMAXEP')
*
.sort
*
multiply replace_(HYPnum,num,HYPden,den,HYPrat,rat,HYPLinfRegInfZero,Linf,HYPlog,log);
id num(HYPn1?) = HYPn1;
id den(HYPn1?symbol_) = 1/HYPn1;
*
Repeat id Linf(?a,U,?b) = Linf(?a,-u,?b);
*
#call HypFibrationBasis(`IntegralExpr',Linf,L,rat,u,U)
*
.sort
ArgToExtrasymbol den;
id den(HYPn1?symbol_) = 1/HYPn1;
.sort
bracket ep,z2,z3,z4,L,Linf,log;
.sort
collect acc,acc2;
FactArg acc;
ChainOut acc;
Argument acc;
  FromPolynomial;
EndArgument;
id acc(0) = 0;
.sort
FactArg acc;
ChainOut acc;
Argument acc;
  denominators den;
EndArgument;
Repeat;
  id acc(HYPn1?number_) = HYPn1;
  id acc(HYPn1?)*acc(den(HYPn1?)) = 1;
  id acc(HYPn1?symbol_) = HYPn1;
  id acc(1/HYPn1?symbol_) = 1/HYPn1;
EndRepeat;
id acc(HYPn1?) = HYPn1;
id L(0,HYPn1?) = log(HYPn1);
id L(0,0,HYPn1?) = log(HYPn1)^2/2;
.sort
id U = -u;
id 1/U = -1/u;
id log(U) = log(-u);
.sort
bracket ep,u,log,z2;

print +s;
*
.sort
*
local diff =
  `IntegralExpr'
  -
  (
    0
  )
;

.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
