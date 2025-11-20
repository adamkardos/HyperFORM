*{{{ HypPowFuncSimplify_1 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPnum(x + y)*HYPpow(x + y, -ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x + y, 1 - ep)
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
*{{{ HypPowFuncSimplify_2 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPden(x + y)*HYPpow(x + y, -ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x + y, -1 - ep)
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
*{{{ HypPowFuncSimplify_3 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPnum(x + y)*HYPpow(x + y, -1-ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x + y, - ep)
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
*{{{ HypPowFuncSimplify_4 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPden(x + y)*HYPpow(x + y, 1-ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x + y, - ep)
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
*{{{ HypPowFuncSimplify_5 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPpow(x + y, 0)
;
*
.sort
*
#call HypPowFuncSimplify()
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
*{{{ HypPowFuncSimplify_6 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPpow(x * y * z, -1-ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x, -1-ep)*
    HYPpow(y, -1-ep)*
    HYPpow(z, -1-ep)
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
*{{{ HypPowFuncSimplify_7 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPpow((x + y) * z, -1-ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x+y, -1-ep)*
    HYPpow(z, -1-ep)
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
*{{{ HypPowFuncSimplify_8 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPpow(x + y, -ep)*HYPpow(x + y, -1-ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x + y, -1 - 2*ep)
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
*{{{ HypPowFuncSimplify_9 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPpow((x + y) * z, -1-ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(x+y, -1-ep)*
    HYPpow(z, -1-ep)
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
*{{{ HypPowFuncSimplify_10 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = HYPpow((x - y) * z, -1-ep)
;
*
.sort
*
#call HypPowFuncSimplify()
*
.sort
*
local diff = 
  F
  -
  (
    HYPpow(-1, -1-ep)*
    HYPpow(-x+y, -1-ep)*
    HYPpow(z, -1-ep)
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
