*{{{ HypVarSimplify_1 :
#include- hyperform.h
*
symbol z;
*
local F = z*HYPdenx(0) 
;
.sort
#call HypVarSimplify(z)
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
*
*{{{ HypVarSimplify_2 :
#include- hyperform.h
*
symbol z;
*
local F = z^2*HYPdenx(0)^2 
;
.sort
#call HypVarSimplify(z)
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
*
*{{{ HypVarSimplify_3 :
#include- hyperform.h
*
symbol z;
*
local F = z^3*HYPdenx(0)^3 
;
.sort
#call HypVarSimplify(z)
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
*
*{{{ HypVarSimplify_4 :
#include- hyperform.h
*
symbol z;
*
local F = z^4*HYPdenx(0)^3 
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    z
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
*{{{ HypVarSimplify_5 :
#include- hyperform.h
*
symbol z;
*
local F = z^3*HYPdenx(0)^4 
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
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
*{{{ HypVarSimplify_6 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = 
  + HYPdenx(a,b)*HYPlim(z,0)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,0)*HYPnum(b)*HYPden(-a)
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
*{{{ HypVarSimplify_7 :
#include- hyperform.h
*
symbol z;
symbols a,b,c,d;
*
local F = 
  + HYPdenx(a,b)*HYPdenx(c,d)*HYPlim(z,0)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,0)*
      HYPnum(b)*
      HYPden(-a)*
      HYPnum(d)*
      HYPden(-c)
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
*{{{ HypVarSimplify_8 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = 
  + HYPdenx(a)*HYPlim(z,0)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,0)*HYPden(-a)
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
*{{{ HypVarSimplify_9 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = 
  + HYPdenx(a)*HYPdenx(b)*HYPlim(z,0)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPlim(z,0)*
      HYPden(-a)*
      HYPden(-b)
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
*{{{ HypVarSimplify_10 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = 
  + z*HYPlim(z,0)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    0
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
*{{{ HypVarSimplify_11 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = 
  + z^2*HYPlim(z,0)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    0
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
*{{{ HypVarSimplify_12 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = 
  + HYPlim(z,HYPinf)*HYPdenx(0)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    0
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
*{{{ HypVarSimplify_13 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = 
  + HYPlim(z,HYPinf)*HYPdenx(a)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    0
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
*{{{ HypVarSimplify_14 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = 
  + HYPlim(z,HYPinf)*HYPdenx(a,b)
;
.sort
#call HypVarSimplify(z)
*
.sort
*
local diff =
  F
  -
  (
    0
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
