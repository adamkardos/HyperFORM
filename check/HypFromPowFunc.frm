*{{{ HypFromPowFunc_1 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, 2)
;
*
.sort
*
#call HypFromPowFunc
*
.sort
*
local diff = 
  F
  -
  (
    HYPnum(x + y + z)^2
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
*{{{ HypFromPowFunc_2 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, -2)
;
*
.sort
*
#call HypFromPowFunc
*
.sort
*
local diff = 
  F
  -
  (
    HYPden(x + y + z)^2
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
*{{{ HypFromPowFunc_3 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, HYPep)
;
*
.sort
*
#call HypFromPowFunc
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x + y + z, HYPep)
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
*{{{ HypFromPowFunc_4 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, -HYPep)
;
*
.sort
*
#call HypFromPowFunc
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x + y + z, -HYPep)
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
*{{{ HypFromPowFunc_5 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, 1 + HYPep)
;
*
.sort
*
#call HypFromPowFunc
*
.sort
*
local diff = 
  F
  -
  (
    HYPnum(x + y + z)*
      HYPpow(x + y + z, HYPep)
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
*{{{ HypFromPowFunc_6 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, -1 + HYPep)
;
*
.sort
*
#call HypFromPowFunc
*
.sort
*
local diff = 
  F
  -
  (
    HYPden(x + y + z)*
      HYPpow(x + y + z, HYPep)
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
*{{{ HypFromPowFunc_7 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, 1 - 2*HYPep)
;
*
.sort
*
#call HypFromPowFunc
*
.sort
*
local diff = 
  F
  -
  (
    HYPnum(x + y + z)*
      HYPpow(x + y + z, -2*HYPep)
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
*{{{ HypFromPowFunc_8 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, -1 - 2*HYPep)
;
*
.sort
*
#call HypFromPowFunc
*
.sort
*
local diff = 
  F
  -
  (
    HYPden(x + y + z)*
      HYPpow(x + y + z, -2*HYPep)
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
