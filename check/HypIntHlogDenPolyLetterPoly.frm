*{{{ HypIntHlogDenPolyLetterPoly_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a)^2*HYPLx(b)*HYPdx(z);
.sort
#call HypIntHlogDenPolyLetterPoly(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a)*HYPLx(b)
    +
    HYPlim(z,0)*
      HYPdenx(a)*HYPLx(b)
    +
    HYPden(a - b)*
      HYPdenx(a)*HYPdx(z)
    -
    HYPden(a - b)*
      HYPdenx(b)*HYPdx(z)
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
*{{{ HypIntHlogDenPolyLetterPoly_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a)^3*HYPLx(b)*HYPdx(z);
.sort
#call HypIntHlogDenPolyLetterPoly(z)
.sort
*
local diff = 
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a)^2*
      HYPLx(b)
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a)^2*
      HYPLx(b)
    +1/2*
      HYPden(a - b)^2*
      HYPdenx(b)*
      HYPdx(z)
    -1/2*
      HYPden(a - b)^2*
      HYPdenx(a)*
      HYPdx(z)
    +1/2*
      HYPden(a - b)*
      HYPdenx(a)^2*
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
*{{{ HypIntHlogDenPolyLetterPoly_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a)^2*HYPLx(b,b)*HYPdx(z);
.sort
#call HypIntHlogDenPolyLetterPoly(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a)*
      HYPLx(b,b)
    +
    HYPlim(z,0)*
      HYPdenx(a)*
      HYPLx(b,b)
    +
    HYPden(a - b)*
      HYPdenx(a)*
      HYPLx(b)*
      HYPdx(z)
    -
    HYPden(a - b)*
      HYPdenx(b)*
      HYPLx(b)*
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
*{{{ HypIntHlogDenPolyLetterPoly_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a)^3*HYPLx(b,b)*HYPdx(z);
.sort
#call HypIntHlogDenPolyLetterPoly(z)
.sort
*
local diff = 
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a)^2*
      HYPLx(b,b)
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a)^2*
      HYPLx(b,b)
    +1/2*
      HYPden(a - b)^2*
      HYPdenx(b)*
      HYPLx(b)*
      HYPdx(z)
    -1/2*
      HYPden(a - b)^2*
      HYPdenx(a)*
      HYPLx(b)*
      HYPdx(z)
    +1/2*
      HYPden(a - b)*
      HYPdenx(a)^2*
      HYPLx(b)*
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
