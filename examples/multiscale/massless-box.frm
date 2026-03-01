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
symbols s,t;
symbols [-s/-t],[s/-t],[-s/mu^2],[-t/mu^2];
symbol x;
cfunctions num,den,rat,Linf,L,log;
cfunctions acc,acc2;

local `IntegralExpr' = 
  (x1 + x2 + x3 + x4)^(2*ep)*
  (x1*x3*[-s/-t] + x2*x4)^(-2-ep)
;

.sort

#call HypParseInputExpr(ep,num,den,x1,x2,x3,x4)

.sort

#call HypAutoRegularize(`IntegralExpr',[-s/-t])

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
* Increase aesthetics by getting rid of the internal notation:
multiply replace_(HYPnum,num,HYPden,den,HYPrat,rat,HYPLinfRegInfZero,Linf,HYPlog,log);
* Getting rid of numerators to facilitate early cancellations:
id num(HYPn1?) = HYPn1;
* No need for a wrapper function when the denominator oncly contains symbols
* (symbols in the denominators automatically cancel with the same ones in the 
* numerator):
id den(HYPn1?symbol_) = 1/HYPn1;
*
* The fibration basis works best when all letters have an exposed minus sign
* at the front:
Repeat;
  id Linf(?a,[-s/-t],?b) = Linf(?a,-[s/-t],?b);
  id Linf(?a,rat(1,[-s/-t]),?b) = Linf(?a,rat(-1,[s/-t]),?b);
EndRepeat;
*
#call HypFibrationBasis(`IntegralExpr',Linf,L,rat,[-s/-t],[s/-t])

* Getting rid of the composite variables everywhere:
Argument den;
  id [-s/-t] = s/t;
  id [s/-t] = -s/t;
EndArgument;
id [-s/-t] = s/t;
id [s/-t] = -s/t;
id 1/[-s/-t] = t/s;
id 1/[s/-t] = -t/s;
FactArg den;
ChainOut den;
id den(HYPn1?symbol_) = 1/HYPn1;
id den(1/HYPn1?symbol_) = HYPn1;
id den(HYPn1?number_) = 1/HYPn1;
*
.sort
* Start simplifying the rational function coefficients by hand:
ArgToExtrasymbol den;
id den(HYPn1?symbol_) = 1/HYPn1;
.sort
bracket ep,z2,z3,z4,L,Linf,log;
.sort
collect acc,acc2;
FactArg acc;
ChainOut acc;
*
id acc(HYPn1?symbol_) = HYPn1;
id acc(1/HYPn1?symbol_) = den(HYPn1);
id acc(HYPn1?number_) = HYPn1;
*
Argument acc,den;
  FromPolynomial;
EndArgument;
*
id acc(0) = 0;
.sort
id den(HYPn1?symbol_) = 1/HYPn1;
*
FactArg acc;
ChainOut acc;
id den(HYPn1?)*acc(HYPn1?) = 1;
.sort
id acc(HYPn1?symbol_) = HYPn1;
id acc(HYPn1?number_) = HYPn1;
*
.sort
*
* Final simplifications from hyperlog to log basis:
id L(0,HYPn1?) = log(HYPn1);
id L(0,0,HYPn1?) = log(HYPn1)^2/2;

* Including the \mathcal{N} prefactor:
multiply ((ep^2*(6*z2 + 6*log([-t/mu^2])^2 - 12*log([-t/mu^2])))/12 + (1 - log([-t/mu^2]))*ep + 1)/t^2;
.sort
* Drop terms being higher in expansion than really considered:
if (count(ep,1) > `HYPMAXEP') discard;

id log([s/-t]) = log([-s/-t]) + i_*pi_;
id log([-s/-t])*log([-t/mu^2]) = log([-s/-t])*(- log([-s/-t]) + log([-s/mu^2]));
id pi_^2 = 6*z2;
if (match(log([-s/-t])) == 1);
  id log([-s/-t]) = log([-s/mu^2]) - log([-t/mu^2]);
endif;
id log([-s/mu^2])*log([-t/mu^2]) = 1/2*(log([-s/mu^2])^2 + log([-t/mu^2])^2- log([-s/-t])^2);
.sort

*
local diff =
  `IntegralExpr'
  -
  (
    + ep^-2*s^-1*t^-1 * (
       + 4
       )

    + ep^-1*s^-1*t^-1 * (
       - 2*log([-s/mu^2])
       - 2*log([-t/mu^2])
       )

    + s^-1*t^-1 * (
       - 8*z2
       - log([-s/-t])^2
       + log([-s/mu^2])^2
       + log([-t/mu^2])^2
       )
  )
;
.sort

bracket ep,s,t;

print +s;
*

.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
