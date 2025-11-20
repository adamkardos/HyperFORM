*{{{ HypIntHlogDenLetterSamePoly_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^2*HYPLx(0)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
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
*{{{ HypIntHlogDenLetterSamePoly_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^3*HYPLx(0)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
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
*{{{ HypIntHlogDenLetterSamePoly_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^4*HYPLx(0)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
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
*{{{ HypIntHlogDenLetterSamePoly_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^2*HYPLx(0,0)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
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
    +
    HYPdenx(0)^2*HYPLx(0)*HYPdx(z)
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
*{{{ HypIntHlogDenLetterSamePoly_5 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^2*HYPLx(0,0,0)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
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
    +
    HYPdenx(0)^2*HYPLx(0,0)*HYPdx(z)
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
*{{{ HypIntHlogDenLetterSamePoly_6 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^2*HYPLx(0,0,0,0)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
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
    +
    HYPdenx(0)^2*HYPLx(0,0,0)*HYPdx(z)
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
*{{{ HypIntHlogDenLetterSamePoly_7 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a1, b1;
symbol z;
local F = HYPdenx(0)^3*HYPLx(0,0)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
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
    +1/2*
      HYPdenx(0)^3*HYPLx(0)*HYPdx(z)
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
*{{{ HypIntHlogDenLetterSamePoly_8 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a+b)^2*HYPLx(a+b)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
.sort
*
local diff = 
  F
  -
  (
    -
    HYPlim(z,HYPinf)*
      HYPdenx(a+b)*HYPLx(a+b)  
    +
    HYPlim(z,0)*
      HYPdenx(a+b)*HYPLx(a+b)  
    +
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
*{{{ HypIntHlogDenLetterSamePoly_9 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a+b)^3*HYPLx(a+b)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
.sort
*
local diff = 
  F
  -
  (
    -1/2*
      HYPlim(z,HYPinf)*
      HYPdenx(a+b)^2*HYPLx(a+b)  
    +1/2*
      HYPlim(z,0)*
      HYPdenx(a+b)^2*HYPLx(a+b)  
    +1/2*
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
*{{{ HypIntHlogDenLetterSamePoly_10 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPdenx(a+b)^3*HYPLx(a+b,a+b)*HYPdx(z);
.sort
#call HypIntHlogDenLetterSamePoly(z)
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
    +1/2*
      HYPdenx(a+b)^3*HYPLx(a+b)*HYPdx(z)
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
