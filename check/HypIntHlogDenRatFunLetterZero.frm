*{{{ HypIntHlogDenRatFunLetterZero_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(0)*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterZero(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(0)
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(0)
    +
    HYPnum(b)*
      HYPden(a)*
      HYPdenx(a,b)*HYPdx(z)
    -
    HYPnum(b)*
      HYPden(a)*
      HYPdenx(0)*HYPdx(z)
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
*{{{ HypIntHlogDenRatFunLetterZero_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^3*HYPLx(0)*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterZero(z)
.sort
*
local diff = 
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*HYPLx(0)
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*HYPLx(0)
    -1/2*
      HYPnum(b)^2*
      HYPden(a)^2*
      HYPdenx(a,b)*HYPdx(z)
    +1/2*
      HYPnum(b)*
      HYPden(a)*
      HYPdenx(a,b)^2*HYPdx(z)
    +1/2*
      HYPnum(b)^2*
      HYPden(a)^2*
      HYPdenx(0)*HYPdx(z)
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
*{{{ HypIntHlogDenRatFunLetterZero_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(0,0)*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterZero(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*
      HYPLx(0,0)
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*
      HYPLx(0,0)
    +
    HYPnum(b)*
      HYPden(a)*
      HYPdenx(a,b)*
      HYPLx(0)*
      HYPdx(z)
    -
    HYPnum(b)*
      HYPden(a)*
      HYPdenx(0)*
      HYPLx(0)*
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
*{{{ HypIntHlogDenRatFunLetterZero_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^3*HYPLx(0,0)*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterZero(z)
.sort
*
local diff = 
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*
      HYPLx(0,0)
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*
      HYPLx(0,0)
    -1/2*
      HYPnum(b)^2*
      HYPden(a)^2*
      HYPdenx(a,b)*
      HYPLx(0)*
      HYPdx(z)
    +1/2*
      HYPnum(b)*
      HYPden(a)*
      HYPdenx(a,b)^2*
      HYPLx(0)*
      HYPdx(z)
    +1/2*
      HYPnum(b)^2*
      HYPden(a)^2*
      HYPdenx(0)*
      HYPLx(0)*
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
