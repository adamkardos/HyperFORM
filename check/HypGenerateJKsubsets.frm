*{{{ HypGenerateJKsubsets_1 :
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
#call HypGenerateJKsubsets()
*
.sort
*
local diff = 
  F
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
*{{{ HypGenerateJKsubsets_2 :
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
#call HypGenerateJKsubsets()
*
.sort
*
local diff = 
  F
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
