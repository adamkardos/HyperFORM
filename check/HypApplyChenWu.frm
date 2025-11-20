*{{{ HypApplyChenWu_1 :
#include- hyperform.h
*
#define ChenWuVar "3"
*
local F = 
  HYPz1 + ... + HYPz5
;
*
*
local G = 
  HYPz1 + ... + HYPz5
;
*
.sort
#call HypApplyChenWu(F,ChenWuVar)
.sort
local diffF =
  F
  -
  (
    HYPz1 + HYPz2 + 1 + HYPz4 + HYPz5
  )
;
local diffG =
  G
  -
  (
    HYPz1 + ... + HYPz5
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diffF") =~ expr("
  0
")
assert result("diffG") =~ expr("
  0
")
*}}}
*
*{{{ HypApplyChenWu_2 :
#include- hyperform.h
*
local F = 
  HYPz1 + ... + HYPz5
;
*
*
local G = 
  HYPz1 + ... + HYPz5
;
*
.sort
#call HypApplyChenWu(F,3)
.sort
local diffF =
  F
  -
  (
    HYPz1 + HYPz2 + 1 + HYPz4 + HYPz5
  )
;
local diffG =
  G
  -
  (
    HYPz1 + ... + HYPz5
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diffF") =~ expr("
  0
")
assert result("diffG") =~ expr("
  0
")
*}}}
