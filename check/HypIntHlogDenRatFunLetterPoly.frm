*{{{ HypIntHlogDenRatFunLetterPoly_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(c+d)*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterPoly(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(c+d)  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(c+d)  
    +
    HYPnum(b)*
      HYPden(a - b*d - b*c)*
      HYPdenx(a,b)*HYPdx(z)
    -
    HYPnum(b)*
      HYPden(a - b*d - b*c)*
      HYPdenx(c+d)*HYPdx(z)
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
*{{{ HypIntHlogDenRatFunLetterPoly_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^3*HYPLx(c+d)*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterPoly(z)
.sort
*
local diff = 
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*HYPLx(c+d)  
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*HYPLx(c+d)  
    -1/2*
      HYPnum(b)^2*
      HYPden(a - b*d - b*c)^2*
      HYPdenx(a,b)*HYPdx(z)
    +1/2*
      HYPnum(b)*
      HYPden(a - b*d - b*c)*
      HYPdenx(a,b)^2*HYPdx(z)
    +1/2*
      HYPnum(b)^2*
      HYPden(a - b*d - b*c)^2*
      HYPdenx(c+d)*HYPdx(z)
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
*{{{ HypIntHlogDenRatFunLetterPoly_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(c+d,c+d)*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterPoly(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(c+d,c+d)  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(c+d,c+d)  
    +
    HYPnum(b)*
      HYPden(a - b*d - b*c)*
      HYPdenx(a,b)*
      HYPLx(c+d)*
      HYPdx(z)
    -
    HYPnum(b)*
      HYPden(a - b*d - b*c)*
      HYPdenx(c+d)*
      HYPLx(c+d)*
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
