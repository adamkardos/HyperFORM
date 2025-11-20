*{{{ HypIntHlogNoDenNoVarLetterZero_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPLx(0)*HYPdx(z);
.sort
#call HypIntHlogNoDenNoVarLetterZero(z)
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
*{{{ HypIntHlogNoDenNoVarLetterZero_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPLx(0,0)*HYPdx(z);
.sort
#call HypIntHlogNoDenNoVarLetterZero(z)
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
*{{{ HypIntHlogNoDenNoVarLetterZero_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPLx(0,0,0)*HYPdx(z);
.sort
#call HypIntHlogNoDenNoVarLetterZero(z)
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
    HYPLx(0,0)*
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
*{{{ HypIntHlogNoDenNoVarLetterZero_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPLx(0,0,0,0)*HYPdx(z);
.sort
#call HypIntHlogNoDenNoVarLetterZero(z)
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
    HYPLx(0,0,0)*
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
