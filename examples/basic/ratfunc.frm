#include- hyperform.h
#define IntegrationSequence ""
symbols a,b;
local F = HYPden(a + b*HYPz1)^2;
.sort
#call HypIntegrationStep(F,1)
#call HypFinalizeResult(HYPep,0)
print;
.end
