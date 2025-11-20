*{{{ HypMoebiusTransform_1 :
#include- hyperform.h
*
cfunction L;
symbol a;
*
local F = 
  + L(0)
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    - L(0)
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
*{{{ HypMoebiusTransform_2 :
#include- hyperform.h
*
cfunction L;
symbol a;
*
local F = 
  + L(0,0)
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    + L(0,0)
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
*{{{ HypMoebiusTransform_3 :
#include- hyperform.h
*
cfunction L;
symbol a;
*
local F = 
  + L(0,0,0)
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    - L(0,0,0)
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
*{{{ HypMoebiusTransform_4 :
#include- hyperform.h
*
cfunction L;
symbol a;
*
local F = 
  + L(0,0,0,0)
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    + L(0,0,0,0)
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
*{{{ HypMoebiusTransform_5 :
#include- hyperform.h
*
cfunction L;
symbol a;
*
local F = 
  + L(0,0,0,0,0)
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    - L(0,0,0,0,0)
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
*{{{ HypMoebiusTransform_6 :
#include- hyperform.h
*
cfunction L;
symbol a;
*
local F = 
  + L(a)
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    L(HYPden(a)) - L(0)
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
*{{{ HypMoebiusTransform_7 :
#include- hyperform.h
*
cfunction L;
symbol a,b;
*
local F = 
  + L(a,b)
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    L(HYPden(a),HYPden(b)) 
    - 
    L(0,HYPden(b)) 
    - 
    L(HYPden(a),0) 
    +
    L(0,0)
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
*{{{ HypMoebiusTransform_8 :
#include- hyperform.h
*
cfunction L;
symbol a,b,c;
*
local F = 
  + L(a,b,c)
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    L(HYPden(a),HYPden(b),HYPden(c)) 
    - 
    L(0,HYPden(b),HYPden(c)) 
    - 
    L(HYPden(a),0,HYPden(c)) 
    - 
    L(HYPden(a),HYPden(b),0) 
    + 
    L(0,0,HYPden(c)) 
    + 
    L(HYPden(a),0,0) 
    + 
    L(0,HYPden(b),0) 
    -
    L(0,0,0)
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
*{{{ HypMoebiusTransform_9 :
#include- hyperform.h
*
cfunction L;
symbol a;
*
local F = 
  + L(HYPden(a))
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    L(a) - L(0)
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
*{{{ HypMoebiusTransform_10 :
#include- hyperform.h
*
cfunction L;
symbol a,b;
*
local F = 
  + L(HYPden(a),HYPden(b))
;
.sort
#call HypMoebiusTransform(L,1/z)
*
.sort
*
local diff =
  F
  -
  (
    L(a,b) 
    - 
    L(0,b) 
    - 
    L(a,0) 
    +
    L(0,0)
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
