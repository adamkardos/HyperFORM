*{{{ HypRevealVarLog_1 :
#include- hyperform.h
*
symbol z;
symbol a;
local F = HYPlog(a);
.sort
#call HypRevealVarLog(z)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPlog(a)
")
*}}}
*
*{{{ HypRevealVarLog_2 :
#include- hyperform.h
*
symbol z;
symbol a;
local F = HYPlog(z);
.sort
#call HypRevealVarLog(z)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPlogx(0)
")
*}}}
*
*{{{ HypRevealVarLog_3 :
#include- hyperform.h
*
symbol z;
symbol a;
local F = HYPlog(a*z);
.sort
#call HypRevealVarLog(z)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPlog(a)
  + HYPlogx(0)
")
*}}}
*
*{{{ HypRevealVarLog_4 :
#include- hyperform.h
*
symbol z;
symbol a;
local F = HYPlog(a + z);
.sort
#call HypRevealVarLog(z)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPlog(a)
  + HYPlogx(-a)
")
*}}}
*
*{{{ HypRevealVarLog_5 :
#include- hyperform.h
*
symbol z;
symbol a, b;
local F = HYPlog(a + b*z);
.sort
#call HypRevealVarLog(z)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPlog(a)
  + HYPlogx(-a, b)
")
*}}}
*
*{{{ HypRevealVarLog_6 :
#include- hyperform.h
*
symbols z1,z2,z3;
local F = HYPlog(1 + z3 + z2 + z1);
.sort
#call HypRevealVarLog(z1)
.sort
local diff =
  F
  -
  (
    HYPlog(1 + z3 + z2)
    +
    HYPlogx(-1 - z3 - z2)
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
*{{{ HypRevealVarLog_7 :
#include- hyperform.h
*
symbol a;
symbols z1,z2,z3;
local F = HYPlog(z2*a + z1*z3);
.sort
#call HypRevealVarLog(z1)
.sort
local diff =
  F
  -
  (
    HYPlog(z2*a)
    +
    HYPlogx(-z2*a,z3)
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
*{{{ HypRevealVarLog_8 :
#include- hyperform.h
*
symbol z;
symbol a;
local F = HYPlog(1 + z);
.sort
#call HypRevealVarLog(z)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPlog(1)
  + HYPlogx(-1)
")
*}}}
