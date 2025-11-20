*{{{ HypGenerateDegreeOfDivergenceExpr_1 :
#include- hyperform.h
*
#redefine HYPNPARAMS "2"
*
local F = 
  1
;
*
.sort
*
#call HypGenerateDegreeOfDivergenceExpr(F)
*
.sort
*
local diff = 
  Degrees
  -
  (
    HYPsetJ(HYPz1)*HYPsetK
    +
    HYPsetJ(HYPz2)*HYPsetK
    +
    HYPsetK(HYPz1)*HYPsetJ
    +
    HYPsetK(HYPz2)*HYPsetJ
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
*{{{ HypGenerateDegreeOfDivergenceExpr_2 :
#include- hyperform.h
*
#redefine HYPNPARAMS "3"
*
local F = 
  1
;
*
.sort
*
#call HypGenerateDegreeOfDivergenceExpr(F)
*
.sort
*
local diff = 
  Degrees
  -
  (
    HYPsetJ(HYPz1)*HYPsetK
    +
    HYPsetJ(HYPz2)*HYPsetK
    +
    HYPsetJ(HYPz3)*HYPsetK
    +
    HYPsetJ(HYPz1,HYPz2)*HYPsetK
    +
    HYPsetJ(HYPz1,HYPz3)*HYPsetK
    +
    HYPsetJ(HYPz2,HYPz3)*HYPsetK
    +
    HYPsetJ(HYPz1)*HYPsetK(HYPz2)
    +
    HYPsetJ(HYPz1)*HYPsetK(HYPz3)
    +
    HYPsetJ(HYPz2)*HYPsetK(HYPz3)
    +
    HYPsetK(HYPz1)*HYPsetJ
    +
    HYPsetK(HYPz2)*HYPsetJ
    +
    HYPsetK(HYPz3)*HYPsetJ
    +
    HYPsetK(HYPz1,HYPz2)*HYPsetJ
    +
    HYPsetK(HYPz1,HYPz3)*HYPsetJ
    +
    HYPsetK(HYPz2,HYPz3)*HYPsetJ
    +
    HYPsetK(HYPz1)*HYPsetJ(HYPz2)
    +
    HYPsetK(HYPz1)*HYPsetJ(HYPz3)
    +
    HYPsetK(HYPz2)*HYPsetJ(HYPz3)
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
*{{{ HypGenerateDegreeOfDivergenceExpr_3 :
* Just checking that if Degrees is present it will remain intact:
#include- hyperform.h
*
#redefine HYPNPARAMS "3"
*
local F = 
  1
;
*
local Degrees =
  HYPz1 + ... + HYPz9
;
*
.sort
*
#call HypGenerateDegreeOfDivergenceExpr(F)
*
.sort
*
local diff = 
  Degrees
  -
  (
    HYPz1 + ... + HYPz9
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
