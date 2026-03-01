#include- hyperform.h
#define IntegrationSequence ""
symbols a,b,c,d;
cfunctions log,L,Linf,rat,den;
local F = HYPden(a + b*HYPz1)*HYPden(c+d*HYPz1);
.sort
#call HypIntegrationStep(F,1)
#call HypFinalizeResult(HYPep,0)
multiply replace_(HYPden,den,HYPrat,rat,HYPLinfRegInfZero,Linf);
#call HypFibrationBasis(F,Linf,L,rat,a,b,c,d)
id L(0,a?) = log(a);
bracket den;
print +s;
.end
