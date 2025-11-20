*{{{ HypIntHlogDenZeroLetterRatFun_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^2*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + HYPden(a1)*HYPnum(b1)*HYPdenx(a1, b1)*HYPdx(z)
  - HYPden(a1)*HYPnum(b1)*HYPdenx(0)*HYPdx(z)
  + HYPdenx(0)*HYPLx(HYPrat(a1, b1))*HYPlim(z, 0)
  - HYPdenx(0)*HYPLx(HYPrat(a1, b1))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^3*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(a1, b1)*HYPdx(z)
  - 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)*HYPdx(z)
  - 1/2*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^2*HYPdx(z)
  + 1/2*HYPdenx(0)^2*HYPLx(HYPrat(a1, b1))*HYPlim(z, 0)
  - 1/2*HYPdenx(0)^2*HYPLx(HYPrat(a1, b1))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^4*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/3*HYPden(a1)^3*HYPnum(b1)^3*HYPdenx(a1, b1)*HYPdx(z)
  - 1/3*HYPden(a1)^3*HYPnum(b1)^3*HYPdenx(0)*HYPdx(z)
  - 1/3*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)^2*HYPdx(z)
  - 1/3*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^3*HYPdx(z)
  + 1/3*HYPdenx(0)^3*HYPLx(HYPrat(a1, b1))*HYPlim(z, 0)
  - 1/3*HYPdenx(0)^3*HYPLx(HYPrat(a1, b1))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^5*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/4*HYPden(a1)^4*HYPnum(b1)^4*HYPdenx(a1, b1)*HYPdx(z)
  - 1/4*HYPden(a1)^4*HYPnum(b1)^4*HYPdenx(0)*HYPdx(z)
  - 1/4*HYPden(a1)^3*HYPnum(b1)^3*HYPdenx(0)^2*HYPdx(z)
  - 1/4*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)^3*HYPdx(z)
  - 1/4*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^4*HYPdx(z)
  + 1/4*HYPdenx(0)^4*HYPLx(HYPrat(a1, b1))*HYPlim(z, 0)
  - 1/4*HYPdenx(0)^4*HYPLx(HYPrat(a1, b1))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_5 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^6*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/5*HYPden(a1)^5*HYPnum(b1)^5*HYPdenx(a1, b1)*HYPdx(z)
  - 1/5*HYPden(a1)^5*HYPnum(b1)^5*HYPdenx(0)*HYPdx(z)
  - 1/5*HYPden(a1)^4*HYPnum(b1)^4*HYPdenx(0)^2*HYPdx(z)
  - 1/5*HYPden(a1)^3*HYPnum(b1)^3*HYPdenx(0)^3*HYPdx(z)
  - 1/5*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)^4*HYPdx(z)
  - 1/5*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^5*HYPdx(z)
  + 1/5*HYPdenx(0)^5*HYPLx(HYPrat(a1, b1))*HYPlim(z, 0)
  - 1/5*HYPdenx(0)^5*HYPLx(HYPrat(a1, b1))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_6 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = HYPdenx(0)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + HYPden(a1)*HYPnum(b1)*HYPdenx(a1, b1)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - HYPden(a1)*HYPnum(b1)*HYPdenx(0)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  + HYPdenx(0)*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, 0)
  - HYPdenx(0)*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_7 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = HYPdenx(0)^3*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(a1, b1)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/2*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^2*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  + 1/2*HYPdenx(0)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, 0)
  - 1/2*HYPdenx(0)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_8 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = HYPdenx(0)^4*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/3*HYPden(a1)^3*HYPnum(b1)^3*HYPdenx(a1, b1)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/3*HYPden(a1)^3*HYPnum(b1)^3*HYPdenx(0)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/3*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)^2*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/3*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^3*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  + 1/3*HYPdenx(0)^3*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, 0)
  - 1/3*HYPdenx(0)^3*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_9 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = HYPdenx(0)^5*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/4*HYPden(a1)^4*HYPnum(b1)^4*HYPdenx(a1, b1)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/4*HYPden(a1)^4*HYPnum(b1)^4*HYPdenx(0)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/4*HYPden(a1)^3*HYPnum(b1)^3*HYPdenx(0)^2*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/4*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)^3*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/4*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^4*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  + 1/4*HYPdenx(0)^4*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, 0)
  - 1/4*HYPdenx(0)^4*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_10 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = HYPdenx(0)^6*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/5*HYPden(a1)^5*HYPnum(b1)^5*HYPdenx(a1, b1)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/5*HYPden(a1)^5*HYPnum(b1)^5*HYPdenx(0)*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/5*HYPden(a1)^4*HYPnum(b1)^4*HYPdenx(0)^2*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/5*HYPden(a1)^3*HYPnum(b1)^3*HYPdenx(0)^3*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/5*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)^4*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  - 1/5*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^5*HYPLx(HYPrat(a2, b2))*HYPdx(z)
  + 1/5*HYPdenx(0)^5*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, 0)
  - 1/5*HYPdenx(0)^5*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_11 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2, a3, b3;
symbol z;
local F = HYPdenx(0)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2), HYPrat(a3, b3))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + HYPden(a1)*HYPnum(b1)*HYPdenx(a1, b1)*HYPLx(HYPrat(a2, b2), HYPrat(a3, b3))*HYPdx(z)
  - HYPden(a1)*HYPnum(b1)*HYPdenx(0)*HYPLx(HYPrat(a2, b2), HYPrat(a3, b3))*HYPdx(z)
  + HYPdenx(0)*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2), HYPrat(a3, b3))*HYPlim(z, 0)
  - HYPdenx(0)*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2), HYPrat(a3, b3))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogDenZeroLetterRatFun_12 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2, a3, b3;
symbol z;
local F = HYPdenx(0)^3*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2), HYPrat(a3, b3))*HYPdx(z);
.sort
#call HypIntHlogDenZeroLetterRatFun(z)
.sort
*
local diff = 
  F
  -
  (
  + 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(a1, b1)*HYPLx(HYPrat(a2, b2), HYPrat(a3, b3))*HYPdx(z)
  - 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)*HYPLx(HYPrat(a2, b2), HYPrat(a3, b3))*HYPdx(z)
  - 1/2*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^2*HYPLx(HYPrat(a2, b2), HYPrat(a3, b3))*HYPdx(z)
  + 1/2*HYPdenx(0)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2), HYPrat(a3, b3))*HYPlim(z, 0)
  - 1/2*HYPdenx(0)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2), HYPrat(a3, b3))*HYPlim(z, HYPinf)
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
