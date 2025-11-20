*{{{ HypIntHlogVarLetterZero_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = 
  + z*
    HYPLx(0)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterZero(z)
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
*{{{ HypIntHlogVarLetterZero_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = z^2*HYPLx(0)*HYPdx(z);
.sort
#call HypIntHlogVarLetterZero(z)
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
*{{{ HypIntHlogVarLetterZero_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = 
  + z^3*
    HYPLx(0)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterZero(z)
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
*{{{ HypIntHlogVarLetterZero_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = 
  z^4*
  HYPLx(0)*
  HYPdx(z)
;
.sort
#call HypIntHlogVarLetterZero(z)
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
*{{{ HypIntHlogVarLetterZero_5 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = 
  + z*
    HYPLx(0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterZero(z)
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
      HYPLx(0)*
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
*{{{ HypIntHlogVarLetterZero_6 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = 
  + z^2*
    HYPLx(0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterZero(z)
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
      HYPLx(0)*
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
*{{{ HypIntHlogVarLetterZero_7 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = 
  + z^3*
    HYPLx(0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterZero(z)
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
      HYPLx(0)*
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
*{{{ HypIntHlogVarLetterZero_8 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = 
  + z*
    HYPLx(0,0,0)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterZero(z)
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
      HYPLx(0,0)*
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
*{{{ HypIntHlogVarLetterZero_9 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = z^2*HYPLx(0,0,0)*HYPdx(z);
.sort
#call HypIntHlogVarLetterZero(z)
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
      HYPLx(0,0)*
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
*{{{ HypIntHlogVarLetterZero_10 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = z^2*HYPLx(0,0,0,0)*HYPdx(z);
.sort
#call HypIntHlogVarLetterZero(z)
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
      HYPLx(0,0,0)*
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
