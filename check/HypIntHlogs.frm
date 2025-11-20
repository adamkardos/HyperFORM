* Using HypIntHlogDenZeroLetterRatFun:
*{{{ HypIntHlogs_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^2*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^3*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^4*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^5*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_5 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^6*HYPLx(HYPrat(a1, b1))*HYPdx(z);
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_6 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = HYPdenx(0)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPdx(z);
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
  - HYPden(a1)*HYPnum(b1)*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, 0)
  + HYPden(a1)*HYPnum(b1)*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, HYPinf)
  + HYPden(a1)*HYPnum(b1)*HYPLx(0, HYPrat(a2, b2))*HYPlim(z, 0)
  - HYPden(a1)*HYPnum(b1)*HYPLx(0, HYPrat(a2, b2))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogs_7 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = HYPdenx(0)^3*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPdx(z);
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
  - 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, 0)
  + 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPlim(z, HYPinf)
  + 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPLx(0, HYPrat(a2, b2))*HYPlim(z, 0)
  - 1/2*HYPden(a1)^2*HYPnum(b1)^2*HYPLx(0, HYPrat(a2, b2))*HYPlim(z, HYPinf)
  - 1/2*HYPden(a1)*HYPden(a2)*HYPnum(b1)*HYPnum(b2)*HYPdenx(a2, b2)*HYPdx(z)
  + 1/2*HYPden(a1)*HYPden(a2)*HYPnum(b1)*HYPnum(b2)*HYPdenx(0)*HYPdx(z)
  - 1/2*HYPden(a1)*HYPnum(b1)*HYPdenx(0)*HYPLx(HYPrat(a2, b2))*HYPlim(z, 0)
  + 1/2*HYPden(a1)*HYPnum(b1)*HYPdenx(0)*HYPLx(HYPrat(a2, b2))*HYPlim(z, HYPinf)
  + 1/2*HYPdenx(0)^2*HYPLx(HYPrat(a1,b1), HYPrat(a2, b2))*HYPlim(z, 0)
  - 1/2*HYPdenx(0)^2*HYPLx(HYPrat(a1,b1), HYPrat(a2, b2))*HYPlim(z, HYPinf)
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
*{{{ HypIntHlogs_8 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = HYPdenx(0)^4*HYPLx(HYPrat(a1, b1), HYPrat(a2, b2))*HYPdx(z);
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
   - 1/3*HYPden(a1)^3*HYPnum(b1)^3*HYPLx(HYPrat(a1,b1),HYPrat(a2,b2))*
  HYPlim(z,0)
   + 1/3*HYPden(a1)^3*HYPnum(b1)^3*HYPLx(HYPrat(a1,b1),HYPrat(a2,b2))*
  HYPlim(z,HYPinf)
   + 1/3*HYPden(a1)^3*HYPnum(b1)^3*HYPLx(0,HYPrat(a2,b2))*HYPlim(z,0)
   - 1/3*HYPden(a1)^3*HYPnum(b1)^3*HYPLx(0,HYPrat(a2,b2))*HYPlim(z,HYPinf)
   - 1/3*HYPden(a1)^2*HYPden(a2)*HYPnum(b1)^2*HYPnum(b2)*HYPdenx(a2,b2)*
  HYPdx(z)
   + 1/3*HYPden(a1)^2*HYPden(a2)*HYPnum(b1)^2*HYPnum(b2)*HYPdenx(0)*HYPdx(z)
   - 1/3*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)*HYPLx(HYPrat(a2,b2))*HYPlim(z, 0)
   + 1/3*HYPden(a1)^2*HYPnum(b1)^2*HYPdenx(0)*HYPLx(HYPrat(a2,b2))*HYPlim(z, HYPinf)
   - 1/6*HYPden(a1)*HYPden(a2)^2*HYPnum(b1)*HYPnum(b2)^2*HYPdenx(a2,b2)*
  HYPdx(z)
   + 1/6*HYPden(a1)*HYPden(a2)^2*HYPnum(b1)*HYPnum(b2)^2*HYPdenx(0)*HYPdx(z)
   + 1/6*HYPden(a1)*HYPden(a2)*HYPnum(b1)*HYPnum(b2)*HYPdenx(0)^2*HYPdx(z)
   - 1/6*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^2*HYPLx(HYPrat(a2,b2))*HYPlim(z, 0)
   + 1/6*HYPden(a1)*HYPnum(b1)*HYPdenx(0)^2*HYPLx(HYPrat(a2,b2))*HYPlim(z, HYPinf)
   + 1/3*HYPdenx(0)^3*HYPLx(HYPrat(a1,b1),HYPrat(a2,b2))*HYPlim(z, 0)
   - 1/3*HYPdenx(0)^3*HYPLx(HYPrat(a1,b1),HYPrat(a2,b2))*HYPlim(z, HYPinf)
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
* Using HypIntHlogDenLetterSamePoly:
*{{{ HypIntHlogs_9 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = 
  +  HYPdenx(0)^2*HYPLx(0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0)  
    +
    HYPdenx(0)^2*HYPdx(z)
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
*{{{ HypIntHlogs_10 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = 
  +  HYPdenx(0)^3*HYPLx(0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(0)^2*HYPLx(0)  
    +1/2*
      HYPlim(z,0)*
      HYPdenx(0)^2*HYPLx(0)  
    +1/2*
      HYPdenx(0)^3*HYPdx(z)
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
*{{{ HypIntHlogs_11 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = 
  +  HYPdenx(0)^4*HYPLx(0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -1/3*
      HYPlim(z,HYPinf)*
      HYPdenx(0)^3*HYPLx(0)  
    +1/3*
      HYPlim(z,0)*
      HYPdenx(0)^3*HYPLx(0)  
    +1/3*
      HYPdenx(0)^4*HYPdx(z)
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
*{{{ HypIntHlogs_12 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = 
  +  HYPdenx(0)^2*HYPLx(0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0,0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0,0)  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0)  
    +
    HYPdenx(0)^2*HYPdx(z)
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
*{{{ HypIntHlogs_13 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = 
  +  HYPdenx(0)^2*HYPLx(0,0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0,0,0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0,0,0)  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0,0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0,0)  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0)  
    +
    HYPdenx(0)^2*HYPdx(z)
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
*{{{ HypIntHlogs_14 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = 
  +  HYPdenx(0)^2*HYPLx(0,0,0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0,0,0,0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0,0,0,0)  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0,0,0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0,0,0)  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0,0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0,0)  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(0)*HYPLx(0)  
    +
    HYPlim(z,0)*
      HYPdenx(0)*HYPLx(0)  
    +
    HYPdenx(0)^2*HYPdx(z)
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
*{{{ HypIntHlogs_15 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1, a2, b2;
symbol z;
local F = 
  +  HYPdenx(0)^3*HYPLx(0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(0)^2*HYPLx(0,0)  
    +1/2*
      HYPlim(z,0)*
      HYPdenx(0)^2*HYPLx(0,0)  
    -1/4*
      HYPlim(z,HYPinf)*
      HYPdenx(0)^2*HYPLx(0)  
    +1/4*
      HYPlim(z,0)*
      HYPdenx(0)^2*HYPLx(0)  
    +1/4*
      HYPdenx(0)^3*HYPdx(z)
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
*{{{ HypIntHlogs_16 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a+b)^3*HYPLx(a+b,a+b)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a+b)^2*HYPLx(a+b,a+b)  
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a+b)^2*HYPLx(a+b,a+b)  
    -1/4*
      HYPlim(z,HYPinf)*
      HYPdenx(a+b)^2*HYPLx(a+b)  
    +1/4*
      HYPlim(z,0)*
      HYPdenx(a+b)^2*HYPLx(a+b)  
    +1/4*
      HYPdenx(a+b)^3*HYPdx(z)
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
* Using HypIntHlogDenLetterSameRatFun:
*{{{ HypIntHlogs_17 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b))  
    +
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
*{{{ HypIntHlogs_18 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^3*HYPLx(HYPrat(a,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))  
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))  
    +1/2*
      HYPdenx(a,b)^3*HYPdx(z)
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
*{{{ HypIntHlogs_19 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^4*HYPLx(HYPrat(a,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -1/3*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^3*HYPLx(HYPrat(a,b))  
    +1/3*
      HYPlim(z,0)*
      HYPdenx(a,b)^3*HYPLx(HYPrat(a,b))  
    +1/3*
      HYPdenx(a,b)^4*HYPdx(z)
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
*{{{ HypIntHlogs_20 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b))  
    +
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
*{{{ HypIntHlogs_21 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b))  
    +
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
*{{{ HypIntHlogs_22 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b))  
    +
    HYPlim(z,0)*
      HYPdenx(a,b)*HYPLx(HYPrat(a,b))  
    +
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
*{{{ HypIntHlogs_23 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^3*HYPLx(HYPrat(a,b),HYPrat(a,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    -1/4*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))  
    +1/4*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))  
    +1/4*
      HYPdenx(a,b)^3*HYPdx(z)
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
*{{{ HypIntHlogs_24 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^3*HYPLx(HYPrat(a,b),HYPrat(a,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b))  
    -1/4*
      HYPlim(z,HYPinf)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))  
    +1/4*
      HYPlim(z,0)*
      HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))  
    +1/4*
      HYPdenx(a,b)^3*HYPdx(z)
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
* Using HypIntHlogDenRatFunLetterPoly:
*{{{ HypIntHlogs_25 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(c+d)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_26 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^3*HYPLx(c+d)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_27 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(c+d,c+d)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
      (
        HYPlim(z,HYPinf)
        -
        HYPlim(z,0)
      )*
      (
        HYPLx(HYPrat(a,b),c+d)  
        -
        HYPLx(c+d,c+d)
      )
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
* Using HypIntHlogDenPolyLetterRatFun:
*{{{ HypIntHlogs_28 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a+b)^2*HYPLx(HYPrat(c,d))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
      HYPdenx(c,d)*
      HYPdx(z)
    +
    HYPnum(d)*
      HYPden((a + b)*d - c)*
      HYPdenx(a+b)*
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
*{{{ HypIntHlogs_29 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a+b)^3*HYPLx(HYPrat(c,d))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*
*{{{ HypIntHlogs_30 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a+b)^2*HYPLx(HYPrat(c,d),HYPrat(c,d))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a+b)*
      HYPLx(HYPrat(c,d),HYPrat(c,d))
    +
    HYPlim(z,0)*
      HYPdenx(a+b)*
      HYPLx(HYPrat(c,d),HYPrat(c,d))
    +
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    (
      -
      HYPnum(d)*
        HYPden((a + b)*d - c)*
        HYPLx(HYPrat(c,d),HYPrat(c,d))
      +
      HYPnum(d)*
        HYPden((a + b)*d - c)*
        HYPLx(a+b,HYPrat(c,d))
    )
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
* Using HypIntHlogDenRatFunLetterRatFun:
*{{{ HypIntHlogs_31 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(c,d))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_32 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^3*HYPLx(HYPrat(c,d))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_33 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(c,d),HYPrat(c,d))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    (
      -
      HYPnum(b*d)*
        HYPden(a*d - b*c)*
        HYPLx(HYPrat(c,d),HYPrat(c,d))
      +
      HYPnum(b*d)*
        HYPden(a*d - b*c)*
        HYPLx(HYPrat(a,b),HYPrat(c,d))
    )
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
*{{{ HypIntHlogs_34 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(a,c))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_35 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(c,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_36 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(a,c),HYPrat(a,c))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    (
      HYPnum(b*c)*
        HYPden(a)*
        HYPden(c - b)*
        HYPLx(HYPrat(a,b),HYPrat(a,c))
      -
      HYPnum(b*c)*
        HYPden(a)*
        HYPden(c - b)*
        HYPLx(HYPrat(a,c),HYPrat(a,c))
    )
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
*{{{ HypIntHlogs_37 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b, c, d;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(HYPrat(c,b),HYPrat(c,b))*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    (
      HYPnum(b)*
        HYPden(a - c)*
        HYPLx(HYPrat(a,b),HYPrat(c,b))
      -
      HYPnum(b)*
        HYPden(a - c)*
        HYPLx(HYPrat(c,b),HYPrat(c,b))
    )
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
* Using HypIntHlogDenPolyLetterPoly:
*{{{ HypIntHlogs_38 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a)^2*HYPLx(b)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_39 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a)^3*HYPLx(b)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_40 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a)^2*HYPLx(b,b)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    (
      HYPden(a - b)*
        HYPLx(a,b)
      -
      HYPden(a - b)*
        HYPLx(b,b)
    )
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
*{{{ HypIntHlogs_41 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a)^3*HYPLx(b,b)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    +
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    (
      +1/2*
        HYPden(a - b)^2*
        HYPLx(b,b)
      -1/2*
        HYPden(a - b)^2*
        HYPLx(a,b)
    )
    -1/2*
      HYPden(a-b)*
      HYPlim(z,HYPinf)*
      HYPdenx(a)*
      HYPLx(b)
    +1/2*
      HYPden(a-b)*
      HYPlim(z,0)*
      HYPdenx(a)*
      HYPLx(b)
    +1/2*
      HYPden(a-b)^2*
      HYPdenx(a)*
      HYPdx(z)
    -1/2*
      HYPden(a - b)^2*
      HYPdenx(b)*
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
* Using HypIntHlogDenRatFunLetterZero:
*{{{ HypIntHlogs_42 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_43 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^3*HYPLx(0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_44 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^2*HYPLx(0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    (
      HYPnum(b)*
        HYPden(a)*
        HYPLx(HYPrat(a,b),0)
      -
      HYPnum(b)*
        HYPden(a)*
        HYPLx(0,0)
    )
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
*{{{ HypIntHlogs_45 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPdenx(a,b)^3*HYPLx(0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    +
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    (
      -1/2*
        HYPnum(b)^2*
        HYPden(a)^2*
        HYPLx(HYPrat(a,b),0)
      +1/2*
        HYPnum(b)^2*
        HYPden(a)^2*
        HYPLx(0,0)
    )
    +1/2*
      HYPnum(b)*
      HYPden(a)*
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
* Using HypIntHlogNoDenNoVarLetterZero:
*{{{ HypIntHlogs_46 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPLx(0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(0)*
      z
    -
    HYPlim(z,0)*
      HYPLx(0)*
      z
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
*{{{ HypIntHlogs_47 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPLx(0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(0,0)*
      z
    -
    HYPlim(z,0)*
      HYPLx(0,0)*
      z
    -
    (
      HYPlim(z,HYPinf)*
        HYPLx(0)*
        z
      -
      HYPlim(z,0)*
        HYPLx(0)*
        z
      -
        HYPdx(z)
    )
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
*{{{ HypIntHlogs_48 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPLx(0,0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(0,0,0)*
      z
    -
    HYPlim(z,0)*
      HYPLx(0,0,0)*
      z
    -
    (
      HYPlim(z,HYPinf)*
        HYPLx(0,0)*
        z
      -
      HYPlim(z,0)*
        HYPLx(0,0)*
        z
      -
      (
        HYPlim(z,HYPinf)*
          HYPLx(0)*
          z
        -
        HYPlim(z,0)*
          HYPLx(0)*
          z
        -
          HYPdx(z)
      )
    )
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
*{{{ HypIntHlogs_49 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPLx(0,0,0,0)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(0,0,0,0)*
      z
    -
    HYPlim(z,0)*
      HYPLx(0,0,0,0)*
      z
    -
    (
      HYPlim(z,HYPinf)*
        HYPLx(0,0,0)*
        z
      -
      HYPlim(z,0)*
        HYPLx(0,0,0)*
        z
      -
      (
        HYPlim(z,HYPinf)*
          HYPLx(0,0)*
          z
        -
        HYPlim(z,0)*
          HYPLx(0,0)*
          z
        -
        (
          HYPlim(z,HYPinf)*
            HYPLx(0)*
            z
          -
          HYPlim(z,0)*
            HYPLx(0)*
            z
          -
            HYPdx(z)
        )
      )
    )
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
* Using HypIntHlogNoDenNoVarLetterPoly:
*{{{ HypIntHlogs_50 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPLx(a)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(a)*
      z
    -
    HYPlim(z,0)*
      HYPLx(a)*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPLx(a)
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
*{{{ HypIntHlogs_51 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPLx(a,a)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(a,a)*
      z
    -
    HYPlim(z,0)*
      HYPLx(a,a)*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPLx(a,a)
    -
    (
      HYPlim(z,HYPinf)*
        HYPLx(a)*
        z
      -
      HYPlim(z,0)*
        HYPLx(a)*
        z
      -
      (
        HYPlim(z,HYPinf)
        -
        HYPlim(z,0)
      )*
        HYPnum(a)*
        HYPLx(a)
      -
        HYPdx(z)
    )
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
*{{{ HypIntHlogs_52 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPLx(a,a,a)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(a,a,a)*
      z
    -
    HYPlim(z,0)*
      HYPLx(a,a,a)*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPLx(a,a,a)
    -
    (
    HYPlim(z,HYPinf)*
      HYPLx(a,a)*
      z
    -
    HYPlim(z,0)*
      HYPLx(a,a)*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPLx(a,a)
    -
    (
      HYPlim(z,HYPinf)*
        HYPLx(a)*
        z
      -
      HYPlim(z,0)*
        HYPLx(a)*
        z
      -
      (
        HYPlim(z,HYPinf)
        -
        HYPlim(z,0)
      )*
        HYPnum(a)*
        HYPLx(a)
      -
        HYPdx(z)
    )
    )
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
*{{{ HypIntHlogs_53 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  +  HYPLx(a,a,a,a)*HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,HYPinf)*
      HYPLx(a,a,a,a)*
      z
    -
    HYPlim(z,0)*
      HYPLx(a,a,a,a)*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPLx(a,a,a,a)
    -
    (
    HYPlim(z,HYPinf)*
      HYPLx(a,a,a)*
      z
    -
    HYPlim(z,0)*
      HYPLx(a,a,a)*
      z
    -
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
      HYPnum(a)*
      HYPLx(a,a,a)
    -
    (
      HYPlim(z,HYPinf)*
        HYPLx(a,a)*
        z
      -
      HYPlim(z,0)*
        HYPLx(a,a)*
        z
      -
      (
        HYPlim(z,HYPinf)
        -
        HYPlim(z,0)
      )*
        HYPnum(a)*
        HYPLx(a,a)
      -
      (
        HYPlim(z,HYPinf)*
          HYPLx(a)*
          z
        -
        HYPlim(z,0)*
          HYPLx(a)*
          z
        -
        (
          HYPlim(z,HYPinf)
          -
          HYPlim(z,0)
        )*
          HYPnum(a)*
          HYPLx(a)
        -
          HYPdx(z)
      )
      )
    )
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
* Using HypIntHlogNoDenNoVarLetterRatFun:
*{{{ HypIntHlogs_54 :
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
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_55 :
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
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_56 :
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
#call HypIntHlogs(z)
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
    )
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
*{{{ HypIntHlogs_57 :
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
#call HypIntHlogs(z)
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
      )
    )
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
* Using HypIntHlogVarLetterZero:
*{{{ HypIntHlogs_58 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z*
    HYPLx(0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/2*
      HYPlim(z,HYPinf)*
      HYPLx(0)*
      z^2
    -1/2*
      HYPlim(z,0)*
      HYPLx(0)*
      z^2
    -1/2*
      HYPdx(z)*
      z
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
*{{{ HypIntHlogs_59 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^2*
    HYPLx(0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/3*
      HYPlim(z,HYPinf)*
      HYPLx(0)*
      z^3
    -1/3*
      HYPlim(z,0)*
      HYPLx(0)*
      z^3
    -1/3*
      HYPdx(z)*
      z^2
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
*{{{ HypIntHlogs_60 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^3*
    HYPLx(0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/4*
      HYPlim(z,HYPinf)*
      HYPLx(0)*
      z^4
    -1/4*
      HYPlim(z,0)*
      HYPLx(0)*
      z^4
    -1/4*
      HYPdx(z)*
      z^3
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
*{{{ HypIntHlogs_61 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  z^4*
  HYPLx(0)*
  HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/5*
      HYPlim(z,HYPinf)*
      HYPLx(0)*
      z^5
    -1/5*
      HYPlim(z,0)*
      HYPLx(0)*
      z^5
    -1/5*
      HYPdx(z)*
      z^4
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
*{{{ HypIntHlogs_62 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z*
    HYPLx(0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/2*
      HYPlim(z,HYPinf)*
      HYPLx(0,0)*
      z^2
    -1/2*
      HYPlim(z,0)*
      HYPLx(0,0)*
      z^2
    -1/2*
    (
      1/2*
        HYPlim(z,HYPinf)*
        HYPLx(0)*
        z^2
      -1/2*
        HYPlim(z,0)*
        HYPLx(0)*
        z^2
      -1/2*
        HYPdx(z)*
        z
    )
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
*{{{ HypIntHlogs_63 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^2*
    HYPLx(0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/3*
      HYPlim(z,HYPinf)*
      HYPLx(0,0)*
      z^3
    -1/3*
      HYPlim(z,0)*
      HYPLx(0,0)*
      z^3
    -1/3*
    (
      1/3*
        HYPlim(z,HYPinf)*
        HYPLx(0)*
        z^3
      -1/3*
        HYPlim(z,0)*
        HYPLx(0)*
        z^3
      -1/3*
        HYPdx(z)*
        z^2
    )
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
*{{{ HypIntHlogs_64 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^3*
    HYPLx(0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/4*
      HYPlim(z,HYPinf)*
      HYPLx(0,0)*
      z^4
    -1/4*
      HYPlim(z,0)*
      HYPLx(0,0)*
      z^4
    -1/4*
    (
      1/4*
        HYPlim(z,HYPinf)*
        HYPLx(0)*
        z^4
      -1/4*
        HYPlim(z,0)*
        HYPLx(0)*
        z^4
      -1/4*
        HYPdx(z)*
        z^3
    )
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
*{{{ HypIntHlogs_65 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z*
    HYPLx(0,0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/2*
      HYPlim(z,HYPinf)*
      HYPLx(0,0,0)*
      z^2
    -1/2*
      HYPlim(z,0)*
      HYPLx(0,0,0)*
      z^2
    -1/2*
    (
      1/2*
        HYPlim(z,HYPinf)*
        HYPLx(0,0)*
        z^2
      -1/2*
        HYPlim(z,0)*
        HYPLx(0,0)*
        z^2
      -1/2*
      (
        1/2*
          HYPlim(z,HYPinf)*
          HYPLx(0)*
          z^2
        -1/2*
          HYPlim(z,0)*
          HYPLx(0)*
          z^2
        -1/2*
          HYPdx(z)*
          z
      )
    )
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
*{{{ HypIntHlogs_66 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^2*
    HYPLx(0,0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/3*
      HYPlim(z,HYPinf)*
      HYPLx(0,0,0)*
      z^3
    -1/3*
      HYPlim(z,0)*
      HYPLx(0,0,0)*
      z^3
    -1/3*
    (
      1/3*
        HYPlim(z,HYPinf)*
        HYPLx(0,0)*
        z^3
      -1/3*
        HYPlim(z,0)*
        HYPLx(0,0)*
        z^3
      -1/3*
      (
        1/3*
          HYPlim(z,HYPinf)*
          HYPLx(0)*
          z^3
        -1/3*
          HYPlim(z,0)*
          HYPLx(0)*
          z^3
        -1/3*
          HYPdx(z)*
          z^2
      )
    )
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
*{{{ HypIntHlogs_67 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^2*
    HYPLx(0,0,0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/3*
      HYPlim(z,HYPinf)*
      HYPLx(0,0,0,0)*
      z^3
    -1/3*
      HYPlim(z,0)*
      HYPLx(0,0,0,0)*
      z^3
    -1/3*
    (
      1/3*
        HYPlim(z,HYPinf)*
        HYPLx(0,0,0)*
        z^3
      -1/3*
        HYPlim(z,0)*
        HYPLx(0,0,0)*
        z^3
      -1/3*
      (
        1/3*
          HYPlim(z,HYPinf)*
          HYPLx(0,0)*
          z^3
        -1/3*
          HYPlim(z,0)*
          HYPLx(0,0)*
          z^3
        -1/3*
        (
          1/3*
            HYPlim(z,HYPinf)*
            HYPLx(0)*
            z^3
          -1/3*
            HYPlim(z,0)*
            HYPLx(0)*
            z^3
          -1/3*
            HYPdx(z)*
            z^2
        )
      )
    )
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
* Using HypIntHlogVarLetterPoly:
*{{{ HypIntHlogs_68 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z*
    HYPLx(a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/2*
      HYPlim(z,HYPinf)*
      HYPLx(a+b)*
      z^2
    -1/2*
      HYPlim(z,0)*
      HYPLx(a+b)*
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
       HYPnum(a+b)^2*
      HYPLx(a+b)
    -1/2*
      HYPnum(a+b)*
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
*{{{ HypIntHlogs_69 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^2*
    HYPLx(a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/3*
      HYPlim(z,HYPinf)*
      HYPLx(a+b)*
      z^3
    -1/3*
      HYPlim(z,0)*
      HYPLx(a+b)*
      z^3
    -1/3*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a+b)^3*
      HYPLx(a+b)
    -1/3*
      HYPdx(z)*
      z^2
    -1/3*
      HYPnum(a+b)*
      HYPdx(z)*
      z
    -1/3*
      HYPnum(a+b)^2*
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
*{{{ HypIntHlogs_70 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^3*
    HYPLx(a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/4*
      HYPlim(z,HYPinf)*
      HYPLx(a+b)*
      z^4
    -1/4*
      HYPlim(z,0)*
      HYPLx(a+b)*
      z^4
    -1/4*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a+b)^4*
       HYPLx(a+b)
    -1/4*
      HYPdx(z)*
      z^3
    -1/4*
      HYPnum(a+b)*
      HYPdx(z)*
      z^2
    -1/4*
      HYPnum(a+b)^2*
      HYPdx(z)*
      z
    -1/4*
      HYPnum(a+b)^3*
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
*{{{ HypIntHlogs_71 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^4*
    HYPLx(a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/5*
      HYPlim(z,HYPinf)*
      HYPLx(a+b)*
      z^5
    -1/5*
      HYPlim(z,0)*
      HYPLx(a+b)*
      z^5
    -1/5*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a+b)^5*
       HYPLx(a+b)
    -1/5*
      HYPdx(z)*
      z^4
    -1/5*
      HYPnum(a+b)*
      HYPdx(z)*
      z^3
    -1/5*
      HYPnum(a+b)^2*
      HYPdx(z)*
      z^2
    -1/5*
      HYPnum(a+b)^3*
      HYPdx(z)*
      z
    -1/5*
      HYPnum(a+b)^4*
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
*{{{ HypIntHlogs_72 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z*
    HYPLx(a+b,a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/2*
      HYPlim(z,HYPinf)*
      HYPLx(a+b,a+b)*
      z^2
    -1/2*
      HYPlim(z,0)*
      HYPLx(a+b,a+b)*
      z^2
    -1/2*
      (
        1/2*
          HYPlim(z,HYPinf)*
          HYPLx(a+b)*
          z^2
        -1/2*
          HYPlim(z,0)*
          HYPLx(a+b)*
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
       HYPnum(a+b)^2*
      HYPLx(a+b)
    -1/2*
      HYPnum(a+b)*
      HYPdx(z)
      )
    -1/2*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a+b)^2*
      HYPLx(a+b,a+b)
    -1/2*
      HYPnum(a+b)*
      (
        HYPlim(z,HYPinf)*
          HYPLx(a+b)*
          z
        -
        HYPlim(z,0)*
          HYPLx(a+b)*
          z
        -
        (
          HYPlim(z,HYPinf)
          -
          HYPlim(z,0)
        )*
          HYPnum(a+b)*
          HYPLx(a+b)
        -
          HYPdx(z)
      )
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
*{{{ HypIntHlogs_73 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^2*
    HYPLx(a+b,a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
.sort
*
local diff =
  F
  -
  (
    1/3*
      HYPlim(z,HYPinf)*
      HYPLx(a+b,a+b)*
      z^3
    -1/3*
      HYPlim(z,0)*
      HYPLx(a+b,a+b)*
      z^3
    -1/3*
      (
        1/3*
          HYPlim(z,HYPinf)*
          HYPLx(a+b)*
          z^3
        -1/3*
          HYPlim(z,0)*
          HYPLx(a+b)*
          z^3
        -1/3*
         (
          HYPlim(z,HYPinf)
          -
          HYPlim(z,0)
         )*
           HYPnum(a+b)^3*
          HYPLx(a+b)
        -1/3*
          HYPdx(z)*
          z^2
        -1/3*
          HYPnum(a+b)*
          HYPdx(z)*
          z
        -1/3*
          HYPnum(a+b)^2*
          HYPdx(z)
      )
    -1/3*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a+b)^3*
      HYPLx(a+b,a+b)
    -1/3*
      HYPnum(a+b)*
      (
        1/2*
          HYPlim(z,HYPinf)*
          HYPLx(a+b)*
          z^2
        -1/2*
          HYPlim(z,0)*
          HYPLx(a+b)*
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
           HYPnum(a+b)^2*
          HYPLx(a+b)
        -1/2*
          HYPnum(a+b)*
          HYPdx(z)
      )
    -1/3*
      HYPnum(a+b)^2*
      (
        HYPlim(z,HYPinf)*
          HYPLx(a+b)*
          z
        -
        HYPlim(z,0)*
          HYPLx(a+b)*
          z
        -
        (
          HYPlim(z,HYPinf)
          -
          HYPlim(z,0)
        )*
          HYPnum(a+b)*
          HYPLx(a+b)
        -
          HYPdx(z)
      )
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
* Using HypIntHlogVarLetterRatFun:
*{{{ HypIntHlogs_74 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z*
    HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_75 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^2*
    HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_76 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^3*
    HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_77 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^4*
    HYPLx(HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
*{{{ HypIntHlogs_78 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z*
    HYPLx(HYPrat(a,b),HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    -1/2*
      HYPnum(a)*
      HYPden(b)*
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
*{{{ HypIntHlogs_79 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = 
  + z^2*
    HYPLx(HYPrat(a,b),HYPrat(a,b))*
    HYPdx(z)
;
.sort
#call HypIntHlogs(z)
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
    -1/3*
      HYPnum(a)*
      HYPden(b)*
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
    -1/3*
      HYPnum(a)^2*
      HYPden(b)^2*
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
