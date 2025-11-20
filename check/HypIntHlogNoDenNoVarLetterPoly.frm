*{{{ HypIntHlogNoDenNoVarLetterPoly_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPLx(a)*HYPdx(z);
.sort
#call HypIntHlogNoDenNoVarLetterPoly(z)
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
*{{{ HypIntHlogNoDenNoVarLetterPoly_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPLx(a,a)*HYPdx(z);
.sort
#call HypIntHlogNoDenNoVarLetterPoly(z)
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
    HYPLx(a)*
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
*{{{ HypIntHlogNoDenNoVarLetterPoly_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPLx(a,a,a)*HYPdx(z);
.sort
#call HypIntHlogNoDenNoVarLetterPoly(z)
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
    HYPLx(a,a)*
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
*{{{ HypIntHlogNoDenNoVarLetterPoly_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a, b;
symbol z;
local F = HYPLx(a,a,a,a)*HYPdx(z);
.sort
#call HypIntHlogNoDenNoVarLetterPoly(z)
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
    HYPLx(a,a,a)*
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
