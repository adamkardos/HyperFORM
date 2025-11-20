*{{{ HypShuffleToNonZeroEnd_1 :
#include- hyperform.h
*
symbols a,b;
cfunction L;
*
local F = 
  + L(0)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
    L(0)
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
*{{{ HypShuffleToNonZeroEnd_2 :
#include- hyperform.h
*
symbols a,b;
cfunction L;
*
local F = 
  + L(0,0)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
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
*{{{ HypShuffleToNonZeroEnd_3 :
#include- hyperform.h
*
symbols a,b;
cfunction L;
*
local F = 
  + L(0,0,0)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
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
*{{{ HypShuffleToNonZeroEnd_4 :
#include- hyperform.h
*
symbols a,b;
cfunction L;
*
local F = 
  + L(0,0,0,0)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
    L(0,0,0,0)
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
*{{{ HypShuffleToNonZeroEnd_5 :
#include- hyperform.h
*
symbols a,b;
cfunction L;
*
local F = 
  + L(0,a)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
    L(0,a)
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
*{{{ HypShuffleToNonZeroEnd_6 :
#include- hyperform.h
*
symbols a,b;
cfunction L;
*
local F = 
  + L(0,0,a)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
    L(0,0,a)
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
*{{{ HypShuffleToNonZeroEnd_7 :
#include- hyperform.h
*
symbols a,b;
cfunction L;
*
local F = 
  + L(a,0)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
    L(0)*L(a)
    -
    L(0,a)
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
*{{{ HypShuffleToNonZeroEnd_8 :
#include- hyperform.h
*
symbols a,b;
cfunction L;
*
local F = 
  + L(a,b,0)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
    L(0)*L(a,b)
    -
    L(0,a,b)
    -
    L(a,0,b)
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
*{{{ HypShuffleToNonZeroEnd_9 :
#include- hyperform.h
*
symbols a,b,c;
cfunction L;
*
local F = 
  + L(a,b,c,0)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
    L(0)*L(a,b,c)
    -
    L(0,a,b,c)
    -
    L(a,0,b,c)
    -
    L(a,b,0,c)
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
*{{{ HypShuffleToNonZeroEnd_10 :
#include- hyperform.h
*
symbols a,b,c;
cfunction L;
*
local F = 
  + L(a,0,0)
;
.sort
#call HypShuffleToNonZeroEnd(L)
*
.sort
*
local diff =
  F
  -
  (
    L(0,0)*L(a)
    -
    L(0)*L(0,a)
    +
    L(0,0,a)
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
