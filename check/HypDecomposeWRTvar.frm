*{{{ HypDecomposeWRTvar_1 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = z*HYPdenx(0)
;
.sort
#call HypDecomposeWRTvar(z)
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
*{{{ HypDecomposeWRTvar_2 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = z^5*HYPdenx(0)^5
;
.sort
#call HypDecomposeWRTvar(z)
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
*{{{ HypDecomposeWRTvar_3 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = z*HYPdenx(a)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    1 
    + 
    HYPnum(a)*HYPdenx(a)
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
*{{{ HypDecomposeWRTvar_4 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = z^2*HYPdenx(a)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    z 
    + 
    HYPnum(a)
    + 
    HYPnum(a)^2*HYPdenx(a)
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
*{{{ HypDecomposeWRTvar_5 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = z*HYPdenx(a,b)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    1 
    + 
    HYPden(b)*HYPnum(a)*HYPdenx(a,b)
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
*{{{ HypDecomposeWRTvar_6 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = z^2*HYPdenx(a,b)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    z 
    + 
    HYPden(b)^2*HYPnum(a)^2*HYPdenx(a,b)
    + 
    HYPden(b)*HYPnum(a)
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
*{{{ HypDecomposeWRTvar_7 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(0)*HYPdenx(a)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(a)*HYPdenx(a)
    - 
    HYPden(a)*HYPdenx(0)
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
*{{{ HypDecomposeWRTvar_8 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a)*HYPdenx(b)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(-b+a)*HYPdenx(a)
    - 
    HYPden(-b+a)*HYPdenx(b)
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
*{{{ HypDecomposeWRTvar_9 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a)*HYPdenx(b,c)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden( - b + a*c)*HYPnum(c)*HYPdenx(a)
    - 
    HYPden( - b + a*c)*HYPnum(c)*HYPdenx(b,c)
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
*{{{ HypDecomposeWRTvar_10 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a,b)*HYPdenx(c,d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(a,b)
    - 
    HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(c,d)
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
*{{{ HypDecomposeWRTvar_11 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a,b)*HYPdenx(a,c)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(a)*HYPden(c - b)*HYPnum(b)*HYPnum(c)*HYPdenx(a,b)
    - 
    HYPden(a)*HYPden(c - b)*HYPnum(b)*HYPnum(c)*HYPdenx(a,c)
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
*{{{ HypDecomposeWRTvar_12 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a,b)*HYPdenx(c,b)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(- c + a)*HYPnum(b)*HYPdenx(a,b)
    - 
    HYPden(- c + a)*HYPnum(b)*HYPdenx(c,b)
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
*{{{ HypDecomposeWRTvar_13 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a)*HYPdenx(a*b)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(a)*HYPden(1 - b)*HYPdenx(a)
    -
    HYPden(a)*HYPden(1 - b)*HYPdenx(a*b)
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
*{{{ HypDecomposeWRTvar_14 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(1-a)*HYPdenx((1-a)*b)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(1-a)*HYPden(1-b)*HYPdenx(1-a)
    - 
    HYPden(1-a)*HYPden(1-b)*HYPdenx(b-a*b)
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
*{{{ HypDecomposeWRTvar_15 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a)*HYPdenx(a*b,c)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    - 
    HYPden(a)*HYPden(c - b)*HYPnum(c)*HYPdenx(a*b,c)
    + 
    HYPden(a)*HYPden(c - b)*HYPnum(c)*HYPdenx(a)
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
*{{{ HypDecomposeWRTvar_16 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a,c*b)*HYPdenx(a,c*d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(a)*HYPden(d - b)*HYPnum(b)*HYPnum(c)*HYPnum(d)*HYPdenx(a,b*c)
    - 
    HYPden(a)*HYPden(d - b)*HYPnum(b)*HYPnum(c)*HYPnum(d)*HYPdenx(a,c*d)
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
*{{{ HypDecomposeWRTvar_17 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a,4*b)*HYPdenx(a,4*d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    4*HYPden(a)*HYPden(d - b)*HYPnum(b)*HYPnum(d)*HYPdenx(a,4*b)
    - 
    4*HYPden(a)*HYPden(d - b)*HYPnum(b)*HYPnum(d)*HYPdenx(a,4*d)
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
*{{{ HypDecomposeWRTvar_18 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a*b)*HYPdenx(a*c,d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(a)*HYPden(- c + b*d)*HYPnum(d)*HYPdenx(a*b)
    - 
    HYPden(a)*HYPden(- c + b*d)*HYPnum(d)*HYPdenx(a*c,d)
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
*{{{ HypDecomposeWRTvar_19 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(4*b)*HYPdenx(4*c,d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    1/4*HYPden(- c + b*d)*HYPnum(d)*HYPdenx(4*b)
    - 
    1/4*HYPden(- c + b*d)*HYPnum(d)*HYPdenx(4*c,d)
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
*{{{ HypDecomposeWRTvar_20 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a*d,b)*HYPdenx(c*d,b)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(d)*HYPden(-c + a)*HYPnum(b)*HYPdenx(a*d,b)
    - 
    HYPden(d)*HYPden(-c + a)*HYPnum(b)*HYPdenx(c*d,b)
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
*{{{ HypDecomposeWRTvar_21 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(4*a,b)*HYPdenx(4*c,b)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    1/4*HYPden(- c + a)*HYPnum(b)*HYPdenx(4*a,b)
    - 
    1/4*HYPden(- c + a)*HYPnum(b)*HYPdenx(4*c,b)
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
*{{{ HypDecomposeWRTvar_22 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a*e,b)*HYPdenx(c*e,d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(e)*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(a*e,b)
    - 
    HYPden(e)*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(c*e,d)
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
*{{{ HypDecomposeWRTvar_23 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(4*a,b)*HYPdenx(4*c,d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    1/4*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(4*a,b)
    - 
    1/4*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(4*c,d)
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
*{{{ HypDecomposeWRTvar_24 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a,b*e)*HYPdenx(c,d*e)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPnum(e)*HYPdenx(a,b*e)
    - 
    HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPnum(e)*HYPdenx(c,d*e)
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
*{{{ HypDecomposeWRTvar_25 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e;
*
local F = HYPdenx(a,4*b)*HYPdenx(c,4*d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    4*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(a,4*b)
    - 
    4*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(c,4*d)
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
*{{{ HypDecomposeWRTvar_26 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e, f;
*
local F = HYPdenx(a*e,b*f)*HYPdenx(c*e,d*f)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    HYPden(e)*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPnum(f)*HYPdenx(a*e,b*f)
    - 
    HYPden(e)*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPnum(f)*HYPdenx(c*e,d*f)
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
*{{{ HypDecomposeWRTvar_27 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e, f;
*
local F = HYPdenx(4*a,b*f)*HYPdenx(4*c,d*f)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    1/4*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPnum(f)*HYPdenx(4*a,b*f)
    - 
    1/4*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPnum(f)*HYPdenx(4*c,d*f)
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
*{{{ HypDecomposeWRTvar_28 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e, f;
*
local F = HYPdenx(a*e,4*b)*HYPdenx(c*e,4*d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    4*HYPden(e)*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(a*e,4*b)
    - 
    4*HYPden(e)*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(c*e,4*d)
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
*{{{ HypDecomposeWRTvar_29 :
#include- hyperform.h
symbol z;
symbols a, b, c, d, e, f;
*
local F = HYPdenx(3*a,4*b)*HYPdenx(3*c,4*d)
;
.sort
#call HypDecomposeWRTvar(z)
*
.sort
*
local diff =
  F
  -
  (
    4/3*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(3*a,4*b)
    - 
    4/3*HYPden(-b*c + a*d)*HYPnum(b)*HYPnum(d)*HYPdenx(3*c,4*d)
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
