*{{{ HypRevealVarDenominator_1 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
*
local F = 
  + HYPden(z1)
;
.sort
#call HypRevealVarDenominator(z1)
.sort
local diff =
  F
  -
  (
    HYPdenx(0)
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
*{{{ HypRevealVarDenominator_2 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
*
local F = 
  + HYPden(a*z1)
;
.sort
#call HypRevealVarDenominator(z1)
.sort
local diff =
  F
  -
  (
    HYPden(a)*HYPdenx(0)
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
*{{{ HypRevealVarDenominator_3 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
*
local F = 
  + HYPden(1 + z3 + z2 + z1)
;
.sort
#call HypRevealVarDenominator(z1)
.sort
local diff =
  F
  -
  (
    HYPdenx(-1 - z3 - z2)
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
*{{{ HypRevealVarDenominator_4 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
*
local F = 
  + HYPden(z2*a + z1*z3)
;
.sort
#call HypRevealVarDenominator(z1)
.sort
local diff =
  F
  -
  (
    HYPden(z3)*HYPdenx(- z2*a,z3)
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
*{{{ HypRevealVarDenominator_5 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
*
local F = 
  + HYPden(1 + z3)
;
.sort
#call HypRevealVarDenominator(z3)
.sort
local diff =
  F
  -
  (
    HYPdenx(-1)
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
*{{{ HypRevealVarDenominator_6 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
*
local F = 
  + HYPden(a - z3)
;
.sort
#call HypRevealVarDenominator(z3)
.sort
local diff =
  F
  -
  (
    -HYPdenx(a)
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
