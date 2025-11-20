*{{{ HypIntHlogVarLetterPoly_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z*
    HYPLx(a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterPoly(z)
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
*{{{ HypIntHlogVarLetterPoly_2 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^2*
    HYPLx(a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterPoly(z)
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
*{{{ HypIntHlogVarLetterPoly_3 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^3*
    HYPLx(a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterPoly(z)
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
*{{{ HypIntHlogVarLetterPoly_4 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^4*
    HYPLx(a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterPoly(z)
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
*{{{ HypIntHlogVarLetterPoly_5 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z*
    HYPLx(a+b,a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterPoly(z)
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
      HYPdx(z)*
      HYPLx(a+b)*
      z
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
      HYPLx(a+b)*
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
*{{{ HypIntHlogVarLetterPoly_6 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^2*
    HYPLx(a+b,a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterPoly(z)
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
      HYPdx(z)*
      HYPLx(a+b)*
      z^2
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
      HYPLx(a+b)*
      HYPdx(z)*
      z
    -1/3*
      HYPnum(a+b)^2*
      HYPLx(a+b)*
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
*{{{ HypIntHlogVarLetterPoly_7 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbols a,b;
symbol z;
local F = 
  + z^3*
    HYPLx(a+b,a+b)*
    HYPdx(z)
;
.sort
#call HypIntHlogVarLetterPoly(z)
.sort
*
local diff = 
  F
  -
  (
    1/4*
      HYPlim(z,HYPinf)*
      HYPLx(a+b,a+b)*
      z^4
    -1/4*
      HYPlim(z,0)*
      HYPLx(a+b,a+b)*
      z^4
    -1/4*
      HYPdx(z)*
      HYPLx(a+b)*
      z^3
    -1/4*
     (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
     )*
       HYPnum(a+b)^4*
      HYPLx(a+b,a+b)
    -1/4*
      HYPnum(a+b)*
      HYPLx(a+b)*
      HYPdx(z)*
      z^2
    -1/4*
      HYPnum(a+b)^2*
      HYPLx(a+b)*
      HYPdx(z)*
      z
    -1/4*
      HYPnum(a+b)^3*
      HYPLx(a+b)*
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
