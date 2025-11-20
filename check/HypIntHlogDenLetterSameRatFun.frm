*{{{ HypIntHlogDenLetterSameRatFun_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^3*HYPLx(HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^4*HYPLx(HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
    +
    HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))*HYPdx(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_5 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
    +
    HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b))*HYPdx(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_6 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
    +
    HYPdenx(a,b)^2*HYPLx(HYPrat(a,b),HYPrat(a,b),HYPrat(a,b))*HYPdx(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_7 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^3*HYPLx(HYPrat(a,b),HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
    +1/2*
      HYPdenx(a,b)^3*HYPLx(HYPrat(a,b))*HYPdx(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_8 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^2*HYPLx(HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_9 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^3*HYPLx(HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
*{{{ HypIntHlogDenLetterSameRatFun_10 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a,b)^3*HYPLx(HYPrat(a,b),HYPrat(a,b))*HYPdx(z);
.sort
#call HypIntHlogDenLetterSameRatFun(z)
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
    +1/2*
      HYPdenx(a,b)^3*HYPLx(HYPrat(a,b))*HYPdx(z)
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
