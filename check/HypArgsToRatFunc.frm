*{{{ HypArgsToRatFunc_1 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(a)
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(a, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_2 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(a, b)
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(a, 1), HYPrat(b, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_3 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(a, b, c)
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(a, 1), HYPrat(b, 1), HYPrat(c, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_4 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(a, b, c, d)
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(a, 1), HYPrat(b, 1), HYPrat(c, 1), HYPrat(d, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_5 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(a, b, c, d, e)
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(a, 1), HYPrat(b, 1), HYPrat(c, 1), HYPrat(d, 1), HYPrat(e, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_6 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(HYPrat(-a, b))
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-a, b))
")
*}}}
*
*{{{ HypArgsToRatFunc_7 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(HYPrat(-a, b), HYPrat(-c, d))
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-a, b), HYPrat(-c, d))
")
*}}}
*
*{{{ HypArgsToRatFunc_8 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e, f;
cfunction Linf;
*
local F = Linf(HYPrat(-a, b), HYPrat(-c, d), HYPrat(-e, f))
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-a, b), HYPrat(-c, d), HYPrat(-e, f))
")
*}}}
*
*{{{ HypArgsToRatFunc_9 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(HYPrat(-a, 1))
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-a, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_10 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(HYPrat(-a, 1), HYPrat(-b, 1))
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-a, 1), HYPrat(-b, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_11 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(HYPrat(-a, 1), HYPrat(-b, 1), HYPrat(-c, 1))
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-a, 1), HYPrat(-b, 1), HYPrat(-c, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_12 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(-1-z)
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-1-z, 1))
")
*}}}
*
*{{{ HypArgsToRatFunc_13 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1))
;
.sort
#call HypArgsToRatFunc(F,Linf,HYPrat,HYPaux,HYPn1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-1-z, 1))
")
*}}}
