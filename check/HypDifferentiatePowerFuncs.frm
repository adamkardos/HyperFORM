*{{{ HypDifferentiatePowerFuncs_1 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow,diff,exp,aux,d;
*
local F = 
  + pow(x, 1)*diff(x)
;
*
.sort
#call HypDifferentiatePowerFuncs(pow,diff,d,pow,exp,aux,n1,...,n3,diffvar,0)
print +s;
ModuleOption,local,$diffvar;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1
")
*}}}
*
*{{{ HypDifferentiatePowerFuncs_2 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow,diff,exp,aux,d;
*
local F = 
  + pow(x, 2)*diff(x)
;
*
.sort
#call HypDifferentiatePowerFuncs(pow,diff,d,pow,exp,aux,n1,...,n3,diffvar,0)
print +s;
ModuleOption,local,$diffvar;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2*pow(x,1)
")
*}}}
*
*{{{ HypDifferentiatePowerFuncs_3 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow,diff,exp,aux,d;
*
local F = 
  + pow(x + y, 2)*diff(x)
;
*
.sort
#call HypDifferentiatePowerFuncs(pow,diff,d,pow,exp,aux,n1,...,n3,diffvar,0)
print +s;
ModuleOption,local,$diffvar;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2*pow(y + x, 1)
")
*}}}
*
*{{{ HypDifferentiatePowerFuncs_4 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow,diff,exp,aux,d;
*
local F = 
  + pow(x*y + z, 2)*diff(x)
;
*
.sort
#call HypDifferentiatePowerFuncs(pow,diff,d,pow,exp,aux,n1,...,n3,diffvar,0)
print +s;
ModuleOption,local,$diffvar;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2*pow(y, 1)*pow(z + x*y, 1)
")
*}}}
*
*{{{ HypDifferentiatePowerFuncs_5 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow,diff,exp,aux,d;
*
local F = 
  + pow(x^2*y + z, 2)*diff(x)
;
*
.sort
#call HypDifferentiatePowerFuncs(pow,diff,d,pow,exp,aux,n1,...,n3,diffvar,0)
print +s;
ModuleOption,local,$diffvar;
.end
assert succeeded?
assert result("F") =~ expr("
  + 4*pow(x, 1)*pow(y, 1)*pow(z + x^2*y, 1)
")
*}}}
*
*{{{ HypDifferentiatePowerFuncs_6 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow,diff,exp,aux,d;
*
local F = 
  + pow(x^2*y + z, 2)*pow(x, 2)*diff(x)
;
*
.sort
#call HypDifferentiatePowerFuncs(pow,diff,d,pow,exp,aux,n1,...,n3,diffvar,0)
print +s;
ModuleOption,local,$diffvar;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2*pow(x,1)*pow(z + x^2*y, 2)
  + 4*pow(x,3)*pow(y, 1)*pow(z + x^2*y, 1)
")
*}}}
*
*{{{ HypDifferentiatePowerFuncs_7 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow,diff,exp,aux,d;
*
local F = 
  + x*pow(x, 1)*diff(x)
;
*
.sort
#call HypDifferentiatePowerFuncs(pow,diff,d,pow,exp,aux,n1,...,n3,diffvar,0)
print +s;
ModuleOption,local,$diffvar;
.end
assert succeeded?
assert result("F") =~ expr("
  + x
")
*}}}
*
*{{{ HypDifferentiatePowerFuncs_8 :
#include- hyperform.h
*
symbols x,y,z;
symbols a,b,n1,n2,n3;
cfunctions pow,diff,exp,aux,d;
*
local F = 
  - x*pow(x, 1)*diff(x)
;
*
.sort
#call HypDifferentiatePowerFuncs(pow,diff,d,pow,exp,aux,n1,...,n3,diffvar,0)
print +s;
ModuleOption,local,$diffvar;
.end
assert succeeded?
assert result("F") =~ expr("
  - x
")
*}}}
