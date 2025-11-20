*{{{ HypRevealVarFromArg_1 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(z1)
;
.sort
#call HypRevealVarFromArg(num,aux,z1)
.sort
local diff =
  F
  -
  (
    z1
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
*{{{ HypRevealVarFromArg_2 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(1 + z1)
;
.sort
#call HypRevealVarFromArg(num,aux,z1)
.sort
local diff =
  F
  -
  (
    num(1) 
    +
    num(1)*z1
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
*{{{ HypRevealVarFromArg_3 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(z2 + z1)
;
.sort
#call HypRevealVarFromArg(num,aux,z1)
.sort
local diff =
  F
  -
  (
    num(z2) 
    +
    num(1)*z1
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
*{{{ HypRevealVarFromArg_4 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(1 + z3 + z3^2 + z2 + z1)
;
.sort
#call HypRevealVarFromArg(num,aux,z1)
.sort
local diff =
  F
  -
  (
    num(1 + z3 + z3^2 + z2) 
    +
    num(1)*z1
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
*{{{ HypRevealVarFromArg_5 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(z3 + 2*z2*z3 + z1*z3)
;
.sort
#call HypRevealVarFromArg(num,aux,z1)
.sort
local diff =
  F
  -
  (
    num(z3 + 2*z2*z3) 
    +
    num(z3)*z1
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
*{{{ HypRevealVarFromArg_6 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(z3 + 2*z2*z3 + z1 + z1*z3)
;
.sort
#call HypRevealVarFromArg(num,aux,z1)
.sort
local diff =
  F
  -
  (
    num(z3 + 2*z2*z3) 
    +
    num(1 + z3)*z1
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
*{{{ HypRevealVarFromArg_7 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(z3 + 2*z2 + z2*z3 + z2^2 + z1 + z1*z3 + 2*z1*z2 + z1^2)
;
.sort
#call HypRevealVarFromArg(num,aux,z1)
.sort
local diff =
  F
  -
  (
    num(z3 + 2*z2 + z2*z3 + z2^2)
    +
    num(1 + z3 + 2*z2)*z1
    +
    num(1)*z1^2
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
*{{{ HypRevealVarFromArg_8 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(z2*z3 + 2*z1*z3 + z1*z3^2 + z1*z2 + 2*z1*z2*z3 + z1^2*z3)
;
.sort
#call HypRevealVarFromArg(num,aux,z1)
.sort
local diff =
  F
  -
  (
    num(z2*z3)
    +
    num(2*z3 + z3^2 + z2 + 2*z2*z3)*z1
    +
    num(z3)*z1^2
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
*{{{ HypRevealVarFromArg_9 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(1 + z3 + z3^2)
;
.sort
#call HypRevealVarFromArg(num,aux,z3)
.sort
local diff =
  F
  -
  (
    num(1)
    +
    num(1)*z3
    +
    num(1)*z3^2
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
*{{{ HypRevealVarFromArg_10 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(2 + 2*z3 + z3^2)
;
.sort
#call HypRevealVarFromArg(num,aux,z3)
.sort
local diff =
  F
  -
  (
    num(2)
    +
    num(2)*z3
    +
    num(1)*z3^2
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
*{{{ HypRevealVarFromArg_11 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(2 + z3)
;
.sort
#call HypRevealVarFromArg(num,aux,z3)
.sort
local diff =
  F
  -
  (
    num(2)
    +
    num(1)*z3
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
*{{{ HypRevealVarFromArg_12 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(1 + 2*z3)
;
.sort
#call HypRevealVarFromArg(num,aux,z3)
.sort
local diff =
  F
  -
  (
    num(1)
    +
    num(2)*z3
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
*{{{ HypRevealVarFromArg_13 :
#include- hyperform.h
*
symbol z1,z2,z3;
symbol a;
cfunctions num,aux;
*
local F = 
  + num(a - z3)
;
.sort
#call HypRevealVarFromArg(num,aux,z3)
.sort
local diff =
  F
  -
  (
    num(a)
    +
    num(-1)*z3
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
