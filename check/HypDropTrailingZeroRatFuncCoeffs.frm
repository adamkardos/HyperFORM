*{{{ HypDropTrailingZeroRatFuncCoeffs_1 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n2;
local F = 
  + L(
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDropTrailingZeroRatFuncCoeffs(L,rat,poly,n1,...,n2)
.sort
local diff =
  F
  -
  (
    L(rat(poly(0, 1), poly(1, 0)))
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
*{{{ HypDropTrailingZeroRatFuncCoeffs_2 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n2;
local F = 
  + L(
       rat(poly(1, 0), poly(1, 0))
    )
;
.sort
#call HypDropTrailingZeroRatFuncCoeffs(L,rat,poly,n1,...,n2)
.sort
local diff =
  F
  -
  (
    L(rat(poly(1), poly(1)))
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
*{{{ HypDropTrailingZeroRatFuncCoeffs_3 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n2;
local F = 
  + L(
       rat(poly(1, 0), poly(2, 0))
    )
;
.sort
#call HypDropTrailingZeroRatFuncCoeffs(L,rat,poly,n1,...,n2)
.sort
local diff =
  F
  -
  (
    L(rat(poly(1), poly(2)))
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
*{{{ HypDropTrailingZeroRatFuncCoeffs_4 :
#include- hyperform.h
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n2;
local F = 
  + L(
       rat(poly(1, 2, 0), poly(3, 4, 0))
    )
;
.sort
#call HypDropTrailingZeroRatFuncCoeffs(L,rat,poly,n1,...,n2)
.sort
local diff =
  F
  -
  (
    L(rat(poly(1, 2), poly(3, 4)))
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
