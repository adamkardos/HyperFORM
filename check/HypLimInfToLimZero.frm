*{{{ HypLimInfToLimZero_1 :
#include- hyperform.h
*
symbol z;
*
local F = 
  + HYPlim(z,HYPinf)*
    z
;
.sort
#call HypLimInfToLimZero(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,0)*
    HYPdenx(0)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypLimInfToLimZero_2 :
#include- hyperform.h
*
symbol z;
*
local F = 
  + HYPlim(z,HYPinf)*
    z^2
;
.sort
#call HypLimInfToLimZero(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,0)*
    HYPdenx(0)^2
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypLimInfToLimZero_3 :
#include- hyperform.h
*
symbol z;
*
local F = 
  + HYPlim(z,HYPinf)*
    HYPLx(0)
;
.sort
#call HypLimInfToLimZero(z)
*
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,0)*
      HYPLx(0)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypLimInfToLimZero_4 :
#include- hyperform.h
*
symbol z;
*
local F = 
  + HYPlim(z,HYPinf)*
    HYPLx(0,0)
;
.sort
#call HypLimInfToLimZero(z)
*
.sort
*
local diff =
  F
  -
  (
    +
    HYPlim(z,0)*
      HYPLx(0,0)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypLimInfToLimZero_5 :
#include- hyperform.h
*
symbol z;
*
local F = 
  + HYPlim(z,HYPinf)*
    HYPLx(0,0,0)
;
.sort
#call HypLimInfToLimZero(z)
*
.sort
*
local diff =
  F
  -
  (
    -
    HYPlim(z,0)*
      HYPLx(0,0,0)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypLimInfToLimZero_6 :
#include- hyperform.h
*
symbol z;
*
local F = 
  + HYPlim(z,HYPinf)*
    HYPLx(0,0,0,0)
;
.sort
#call HypLimInfToLimZero(z)
*
.sort
*
local diff =
  F
  -
  (
    +
    HYPlim(z,0)*
      HYPLx(0,0,0,0)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypLimInfToLimZero_7 :
#include- hyperform.h
*
symbol a;
symbol z;
*
local F = 
  + HYPlim(z,HYPinf)*
    HYPLx(a)
;
.sort
#call HypLimInfToLimZero(z)
*
.sort
*
local diff =
  F
  -
  (
    +
    HYPlim(z,0)*
      (
        HYPLinfRegInfZero(a)
        +
        HYPLx(HYPden(a))
        -
        HYPLx(0)
      )
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypLimInfToLimZero_8 :
#include- hyperform.h
*
symbol a,b;
symbol z;
*
local F = 
  + HYPlim(z,HYPinf)*
    HYPLx(a,b)
;
.sort
#call HypLimInfToLimZero(z)
*
.sort
*
local diff =
  F
  -
  (
    +
    HYPlim(z,0)*
      (
        HYPLinfRegInfZero(a,b)
        +
        HYPLx(HYPden(a))*
          HYPLinfRegInfZero(b)
        +
        HYPLx(HYPden(a),HYPden(b))
        -
        HYPLx(HYPden(a),0)
        -
        HYPLx(0,HYPden(b))
        +
        HYPLx(0,0)
        -
        HYPLx(0)*
          HYPLinfRegInfZero(b)
      )
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
