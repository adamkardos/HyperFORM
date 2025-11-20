*{{{ HypFromLimitHlogsToNumbers_1 :
#include- hyperform.h
*
symbol a;
cfunction RegLinf;
cfunction Linf;
*
local F = RegLinf(-a);
*
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + RegLinf(-a)
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_2 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-z);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + RegLinf(-z)
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_3 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-a*z);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + RegLinf(-z*a)
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_4 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_5 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_6 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_7 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_8 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1, -1, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_9 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_10 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_11 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, 0, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_12 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, 0, 0, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_13 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, 0, 0, 0, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_14 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_15 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_16 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, 0, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_17 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, -1, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_18 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_19 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, 0, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2*z3
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_20 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_21 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0 
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_22 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, 0, 0, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 7/10*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_23 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, 0, -1, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 21/10*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_24 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, 0, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 7/10*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_25 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, -1, 0, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 19/10*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_26 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, -1, -1, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 1/2*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_27 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, -1, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2/5*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_28 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, 0, 0, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 1/2*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_29 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, 0, -1, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 9/10*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_30 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, 0, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 6/5*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_31 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1, 0, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 6/5*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_32 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1, -1, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2/5*z2^2
")
*}}}
*
*{{{ HypFromLimitHlogsToNumbers_33 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(-1, -1, -1, -1);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*
*
*
*{{{ HypFromLimitHlogsToNumbers_34 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction RegLinf;
cfunction Linf;
local F = RegLinf(0, -1)*RegLinf(0, 1, 0);
.sort
#call HypFromLimitHlogsToNumbers(F,RegLinf,Linf)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + RegLinf(0, 1, 0)*z2
")
*}}}
