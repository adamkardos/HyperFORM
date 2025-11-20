*{{{ HypDissectArg_1 :
#include- hyperform.h
*
cfunctions f,g1,g2;
symbols a1,...,a9;
*
local F = 
  + f(a1,a2)
;
.sort
#call HypDissectArg(f,g1,g2)
*
.sort
*
local diff =
  F
  -
  (
    g1*g2(a1,a2)
    +
    g1(a1)*g2(a2)
    +
    g1(a1,a2)*g2
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
*{{{ HypDissectArg_2 :
#include- hyperform.h
*
cfunctions f,g1,g2;
symbols a1,...,a9;
*
local F = 
  + f(a1,a2,a3)
;
.sort
#call HypDissectArg(f,g1,g2)
*
.sort
*
local diff =
  F
  -
  (
    g1*g2(a1,a2,a3)
    +
    g1(a1)*g2(a2,a3)
    +
    g1(a1,a2)*g2(a3)
    +
    g1(a1,a2,a3)*g2
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
