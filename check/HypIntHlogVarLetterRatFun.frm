*{{{ HypIntHlogVarLetterRatFun_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z*
    HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    1/2*
      HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b))*
      z^2
    -1/2*
      HYPlim(z,0)*
      HYPLx(HYPrat(a,b))*
      z^2
    -1/2*
      HYPdx(z)*
      z
    -1/2*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a)^2*
       HYPden(b)^2*
      HYPLx(HYPrat(a,b))
    -1/2*
      HYPnum(a)*
      HYPden(b)*
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
*{{{ HypIntHlogVarLetterRatFun_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^2*
    HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    1/3*
      HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b))*
      z^3
    -1/3*
      HYPlim(z,0)*
      HYPLx(HYPrat(a,b))*
      z^3
    -1/3*
      HYPdx(z)*
      z^2
    -1/3*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a)^3*
       HYPden(b)^3*
      HYPLx(HYPrat(a,b))
    -1/3*
      HYPnum(a)*
      HYPden(b)*
      HYPdx(z)*
      z
    -1/3*
      HYPnum(a)^2*
      HYPden(b)^2*
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
*{{{ HypIntHlogVarLetterRatFun_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^3*
    HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    1/4*
      HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b))*
      z^4
    -1/4*
      HYPlim(z,0)*
      HYPLx(HYPrat(a,b))*
      z^4
    -1/4*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a)^4*
       HYPden(b)^4*
      HYPLx(HYPrat(a,b))
    -1/4*
      HYPdx(z)*
      z^3
    -1/4*
      HYPnum(a)*
      HYPden(b)*
      HYPdx(z)*
      z^2
    -1/4*
      HYPnum(a)^2*
      HYPden(b)^2*
      HYPdx(z)*
      z
    -1/4*
      HYPnum(a)^3*
      HYPden(b)^3*
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
*{{{ HypIntHlogVarLetterRatFun_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^4*
    HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    1/5*
      HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b))*
      z^5
    -1/5*
      HYPlim(z,0)*
      HYPLx(HYPrat(a,b))*
      z^5
    -1/5*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a)^5*
       HYPden(b)^5*
      HYPLx(HYPrat(a,b))
    -1/5*
      HYPdx(z)*
      z^4
    -1/5*
      HYPnum(a)*
      HYPden(b)*
      HYPdx(z)*
      z^3
    -1/5*
      HYPnum(a)^2*
      HYPden(b)^2*
      HYPdx(z)*
      z^2
    -1/5*
      HYPnum(a)^3*
      HYPden(b)^3*
      HYPdx(z)*
      z
    -1/5*
      HYPnum(a)^4*
      HYPden(b)^4*
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
*{{{ HypIntHlogVarLetterRatFun_5 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z*
    HYPLx(HYPrat(a,b),HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    1/2*
      HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b),HYPrat(a,b))*
      z^2
    -1/2*
      HYPlim(z,0)*
      HYPLx(HYPrat(a,b),HYPrat(a,b))*
      z^2
    -1/2*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a)^2*
       HYPden(b)^2*
      HYPLx(HYPrat(a,b),HYPrat(a,b))
    -1/2*
      HYPdx(z)*
      HYPLx(HYPrat(a,b))*
      z
    -1/2*
      HYPnum(a)*
      HYPden(b)*
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
*{{{ HypIntHlogVarLetterRatFun_6 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^2*
    HYPLx(HYPrat(a,b),HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    1/3*
      HYPlim(z,HYPinf)*
      HYPLx(HYPrat(a,b),HYPrat(a,b))*
      z^3
    -1/3*
      HYPlim(z,0)*
      HYPLx(HYPrat(a,b),HYPrat(a,b))*
      z^3
    -1/3*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a)^3*
       HYPden(b)^3*
      HYPLx(HYPrat(a,b),HYPrat(a,b))
    -1/3*
      HYPdx(z)*
      HYPLx(HYPrat(a,b))*
      z^2
    -1/3*
      HYPnum(a)*
      HYPden(b)*
      HYPLx(HYPrat(a,b))*
      HYPdx(z)*
      z
    -1/3*
      HYPnum(a)^2*
      HYPden(b)^2*
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
