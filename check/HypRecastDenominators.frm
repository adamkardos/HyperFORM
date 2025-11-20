*{{{ HypRecastDenominators_1 :
#include- hyperform.h
*
symbol a;
*
local F = 
  + HYPden(HYPden(a))
;
.sort
#call HypRecastDenominators()
*
.sort
*
local diff =
  F
  -
  (
    a
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
*{{{ HypRecastDenominators_2 :
#include- hyperform.h
*
symbol a;
*
local F = 
  + HYPnum(HYPden(a))
;
.sort
#call HypRecastDenominators()
*
.sort
*
local diff =
  F
  -
  (
    HYPden(a)
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
*{{{ HypRecastDenominators_3 :
#include- hyperform.h
*
symbol a;
*
local F = 
  + HYPden(HYPnum(a))
;
.sort
#call HypRecastDenominators()
*
.sort
*
local diff =
  F
  -
  (
    HYPden(a)
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
*{{{ HypRecastDenominators_4 :
#include- hyperform.h
*
symbol a;
*
local F = 
  + HYPnum(HYPnum(a))
;
.sort
#call HypRecastDenominators()
*
.sort
*
local diff =
  F
  -
  (
    HYPnum(a)
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
*{{{ HypRecastDenominators_5 :
#include- hyperform.h
*
symbols a,b;
*
local F = 
  + HYPnum(HYPnum(a)*HYPden(b))
;
.sort
#call HypRecastDenominators()
*
.sort
*
local diff =
  F
  -
  (
    HYPnum(a)*HYPden(b)
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
*{{{ HypRecastDenominators_6 :
#include- hyperform.h
*
symbols a,b;
*
local F = 
  + HYPden(a + HYPden(b))
;
.sort
#call HypRecastDenominators()
*
.sort
*
local diff =
  F
  -
  (
    HYPnum(b)*HYPden(a*b + 1)
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
*{{{ HypRecastDenominators_7 :
#include- hyperform.h
*
symbols a,b,c;
*
local F = 
  + HYPden(a + HYPnum(b)*HYPden(c))
;
.sort
#call HypRecastDenominators()
*
.sort
*
local diff =
  F
  -
  (
    HYPnum(c)*HYPden(a*c + b)
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
*{{{ HypRecastDenominators_8 :
#include- hyperform.h
*
symbols a;
*
local F = 
  + HYPnum(a)*HYPden(a)
;
.sort
#call HypRecastDenominators()
*
.sort
*
local diff =
  F
  -
  (
    1
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
