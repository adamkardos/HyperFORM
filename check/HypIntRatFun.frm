*{{{ HypIntRatFun_1 :
#-
off statistics;
#include- hyperform.h
#redefine DoZeroLimit "1"
symbol z;
local F = HYPdenx(0)*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    - HYPLx(0)*HYPlim(z, 0)
    + HYPLx(0)*HYPlim(z, HYPinf)
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
*{{{ HypIntRatFun_2 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)^2*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + HYPdenx(0)*HYPlim(z, 0)
    - HYPdenx(0)*HYPlim(z, HYPinf)
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
*{{{ HypIntRatFun_3 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)^3*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + 1/2*HYPdenx(0)^2*HYPlim(z, 0)
    - 1/2*HYPdenx(0)^2*HYPlim(z, HYPinf)
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
*{{{ HypIntRatFun_4 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)^4*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + 1/3*HYPdenx(0)^3*HYPlim(z, 0)
    - 1/3*HYPdenx(0)^3*HYPlim(z, HYPinf)
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
*{{{ HypIntRatFun_5 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)^5*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + 1/4*HYPdenx(0)^4*HYPlim(z, 0)
    - 1/4*HYPdenx(0)^4*HYPlim(z, HYPinf)
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
*{{{ HypIntRatFun_6 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)^6*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + 1/5*HYPdenx(0)^5*HYPlim(z, 0)
    - 1/5*HYPdenx(0)^5*HYPlim(z, HYPinf)
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
*{{{ HypIntRatFun_7 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)^7*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + 1/6*HYPdenx(0)^6*HYPlim(z, 0)
    - 1/6*HYPdenx(0)^6*HYPlim(z, HYPinf)
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
*{{{ HypIntRatFun_8 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)^8*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + 1/7*HYPdenx(0)^7*HYPlim(z, 0)
    - 1/7*HYPdenx(0)^7*HYPlim(z, HYPinf)
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
*{{{ HypIntRatFun_9 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + HYPdenx(0)
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
*{{{ HypIntRatFun_10 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPLx(0);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    + HYPLx(0)
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
*{{{ HypIntRatFun_11 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPLx(0)*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    HYPLx(0)*HYPdx(z)
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
*{{{ HypIntRatFun_12 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPLx(0)*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    HYPLx(0)*HYPdx(z)
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
*{{{ HypIntRatFun_13 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)*HYPLx(0);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    HYPdenx(0)*HYPLx(0)
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
*{{{ HypIntRatFun_14 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)*HYPLx(0)*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    HYPdenx(0)*HYPLx(0)*HYPdx(z)
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
*{{{ HypIntRatFun_15 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = HYPdenx(0)^2*HYPLx(0)*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
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
*{{{ HypIntRatFun_16 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z;
.sort
#call HypIntRatFun(z)
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
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}} 
*
*{{{ HypIntRatFun_17 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z^2;
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
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
*{{{ HypIntRatFun_18 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z^3;
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
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
*{{{ HypIntRatFun_19 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z^4;
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
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
*{{{ HypIntRatFun_20 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z^5;
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    z^5
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
*{{{ HypIntRatFun_21 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    z^2/2
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
*{{{ HypIntRatFun_22 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z^2*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    z^3/3
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
*{{{ HypIntRatFun_23 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z^3*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    z^4/4
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
*{{{ HypIntRatFun_24 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z^4*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    z^5/5
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
*{{{ HypIntRatFun_25 :
#-
off statistics;
#include- hyperform.h
symbol z;
local F = z^5*HYPdx(z);
.sort
#call HypIntRatFun(z)
.sort
*
local diff =
  F
  -
  (
    (
      HYPlim(z,HYPinf)
      -
      HYPlim(z,0)
    )*
    z^6/6
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
