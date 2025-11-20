*{{{ HypIntHlogDenPolyLetterRatFun_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a+b)^2*HYPLx(HYPrat(c,d))*HYPdx(z);
.sort
#call HypIntHlogDenPolyLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a+b)*HYPLx(HYPrat(c,d)) 
    +
    HYPlim(z,0)*
      HYPdenx(a+b)*HYPLx(HYPrat(c,d))
    -
    HYPnum(d)*
      HYPden((a + b)*d - c)*
      HYPdenx(c,d)*HYPdx(z)
    +
    HYPnum(d)*
      HYPden((a + b)*d - c)*
      HYPdenx(a+b)*HYPdx(z)
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
*{{{ HypIntHlogDenPolyLetterRatFun_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a+b)^3*HYPLx(HYPrat(c,d))*HYPdx(z);
.sort
#call HypIntHlogDenPolyLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a+b)^2*HYPLx(HYPrat(c,d)) 
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a+b)^2*HYPLx(HYPrat(c,d))
    +1/2*
      HYPnum(d)^2*
      HYPden((a + b)*d - c)^2*
      HYPdenx(c,d)*HYPdx(z)
    -1/2*
      HYPnum(d)^2*
      HYPden((a + b)*d - c)^2*
      HYPdenx(a+b)*HYPdx(z)
    +1/2*
      HYPnum(d)*
      HYPden((a + b)*d - c)*
      HYPdenx(a+b)^2*HYPdx(z)
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
