*{{{ HypSimplifyPowerFuncs_1 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow;
*
local F = 
  + pow(x, 0)
;
*
.sort
#call HypSimplifyPowerFuncs(pow,n1,n2,n3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1
")
*}}}
*
*{{{ HypSimplifyPowerFuncs_2 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow;
*
local F = 
  + pow(2, 2)
;
*
.sort
#call HypSimplifyPowerFuncs(pow,n1,n2,n3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 4
")
*}}}
*
*{{{ HypSimplifyPowerFuncs_3 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow;
*
local F = 
  + pow(2, -2)
;
*
.sort
#call HypSimplifyPowerFuncs(pow,n1,n2,n3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/4
")
*}}}
*
*{{{ HypSimplifyPowerFuncs_4 :
#include- hyperform.h
*
symbols x,y,z,ep;
symbols a,b,n1,n2,n3;
cfunctions pow;
*
local F = 
  + pow(a, ep)*pow(a, -1)
;
*
.sort
#call HypSimplifyPowerFuncs(pow,n1,n2,n3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + pow(a, -1+ep)
")
*}}}
*
*{{{ HypSimplifyPowerFuncs_5 :
#include- hyperform.h
*
symbols x,y,z,ep;
symbols a,b,n1,n2,n3;
cfunctions pow;
*
local F = 
  + pow((x + y + z)^3, 2 + ep)
;
*
.sort
#call HypSimplifyPowerFuncs(pow,n1,n2,n3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + pow(z + y + x, 6 + 3*ep)
")
*}}}
