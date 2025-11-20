*{{{ HypIntHlogDenRatFunLetterRatFun_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(c,d))*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(c,d))
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(c,d))
    +
    HYPnum(b*d)*
      HYPden(a*d - b*c)*
      HYPdenx(a,b)*HYPdx(z)
    -
    HYPnum(b*d)*
      HYPden(a*d - b*c)*
      HYPdenx(c,d)*HYPdx(z)
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
*{{{ HypIntHlogDenRatFunLetterRatFun_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^3*HYPLx(HYPrat(c,d))*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(c,d))
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(c,d))
    +1/2*
      HYPnum(b*d)^2*
      HYPden(a*d - b*c)^2*
      HYPdenx(c,d)*HYPdx(z)
    -1/2*
      HYPnum(b*d)^2*
      HYPden(a*d - b*c)^2*
      HYPdenx(a,b)*HYPdx(z)
    +1/2*
      HYPnum(b*d)*
      HYPden(a*d - b*c)*
      HYPdenx(a,b)^2*HYPdx(z)
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
*{{{ HypIntHlogDenRatFunLetterRatFun_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(c,d),HYPrat(c,d))*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*
      HYPLx(HYPrat(c,d),HYPrat(c,d))
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*
      HYPLx(HYPrat(c,d),HYPrat(c,d))
    +
    HYPnum(b*d)*
      HYPden(a*d - b*c)*
      HYPdenx(a,b)*
      HYPLx(HYPrat(c,d))*
      HYPdx(z)
    -
    HYPnum(b*d)*
      HYPden(a*d - b*c)*
      HYPdenx(c,d)*
      HYPLx(HYPrat(c,d))*
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
*{{{ HypIntHlogDenRatFunLetterRatFun_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(a,c))*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,c))
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,c))
    +
    HYPnum(b*c)*
      HYPden(a)*
      HYPden(c - b)*
      HYPdenx(a,b)*HYPdx(z)
    -
    HYPnum(b*c)*
      HYPden(a)*
      HYPden(c - b)*
      HYPdenx(a,c)*HYPdx(z)
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
*{{{ HypIntHlogDenRatFunLetterRatFun_5 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(c,b))*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(c,b))
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(c,b))
    +
    HYPnum(b)*
      HYPden(a - c)*
      HYPdenx(a,b)*HYPdx(z)
    -
    HYPnum(b)*
      HYPden(a - c)*
      HYPdenx(c,b)*HYPdx(z)
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
*{{{ HypIntHlogDenRatFunLetterRatFun_6 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(a,c),HYPrat(a,c))*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,c),HYPrat(a,c))
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,c),HYPrat(a,c))
    +
    HYPnum(b*c)*
      HYPden(a)*
      HYPden(c - b)*
      HYPdenx(a,b)*
      HYPLx(HYPrat(a,c))*
      HYPdx(z)
    -
    HYPnum(b*c)*
      HYPden(a)*
      HYPden(c - b)*
      HYPdenx(a,c)*
      HYPLx(HYPrat(a,c))*
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
*{{{ HypIntHlogDenRatFunLetterRatFun_7 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(c,b),HYPrat(c,b))*HYPdx(z);
.sort
#call HypIntHlogDenRatFunLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(c,b),HYPrat(c,b))
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(c,b),HYPrat(c,b))
    +
    HYPnum(b)*
      HYPden(a - c)*
      HYPdenx(a,b)*
      HYPLx(HYPrat(c,b))*
      HYPdx(z)
    -
    HYPnum(b)*
      HYPden(a - c)*
      HYPdenx(c,b)*
      HYPLx(HYPrat(c,b))*
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
