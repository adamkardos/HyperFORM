*{{{ HypIntHlogNoDenNoVarLetterRatFun_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogNoDenNoVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b))*
      z
    -
    HYPlim(z,0)*
      HYPLx(HYPrat(a,b))*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPden(b)*
      HYPLx(HYPrat(a,b))
    -
      HYPdx(z)
  )
;
*
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}} 
*
*{{{ HypIntHlogNoDenNoVarLetterRatFun_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + HYPLx(HYPrat(a,b),HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogNoDenNoVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b),HYPrat(a,b))*
      z
    -
    HYPlim(z,0)*
      HYPLx(HYPrat(a,b),HYPrat(a,b))*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPden(b)*
      HYPLx(HYPrat(a,b),HYPrat(a,b))
    -
    HYPLx(HYPrat(a,b))*
      HYPdx(z)
  )
;
*
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}} 
*
*{{{ HypIntHlogNoDenNoVarLetterRatFun_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*
  HYPdx(z)
;
.sort
#call HypIntHlogNoDenNoVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*
      z
    -
    HYPlim(z,0)*
      HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPden(b)*
      HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))
    -
    HYPLx(HYPrat(a,b),HYPrat(a,b))*
      HYPdx(z)
  )
;
*
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}} 
*
*{{{ HypIntHlogNoDenNoVarLetterRatFun_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogNoDenNoVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*
      z
    -
    HYPlim(z,0)*
      HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPden(b)*
      HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))
    -
    HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*
      HYPdx(z)
  )
;
*
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}} 
