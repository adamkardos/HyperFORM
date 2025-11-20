*{{{ HypDiffLogDiffs_1 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly, den;
symbols n1,...,n4;
local F = 
  + L(0,1)
;
.sort
#call HypDiffLogDiffs(F,L,rat,poly,den,n1,...,n4)
.sort
local diff =
  F
  -
  (
    den(0,1)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypDiffLogDiffs_2 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly, den;
symbols n1,...,n4;
local F = 
  + L(0,2)
;
.sort
#call HypDiffLogDiffs(F,L,rat,poly,den,n1,...,n4)
.sort
local diff =
  F
  -
  (
    den(0,2)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypDiffLogDiffs_3 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly, den;
symbols n1,...,n4;
local F = 
  + L(1,1)
;
.sort
#call HypDiffLogDiffs(F,L,rat,poly,den,n1,...,n4)
.sort
local diff =
  F
  -
  (
    den(-1,1)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypDiffLogDiffs_4 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly, den;
symbols n1,...,n4;
local F = 
  + L(1,-1)
;
.sort
#call HypDiffLogDiffs(F,L,rat,poly,den,n1,...,n4)
.sort
local diff =
  F
  -
  (
    den(-1,-1)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypDiffLogDiffs_5 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly, den;
symbols n1,...,n4;
local F = 
  + L(-1,-1)
;
.sort
#call HypDiffLogDiffs(F,L,rat,poly,den,n1,...,n4)
.sort
local diff =
  F
  -
  (
    den(1,-1)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
