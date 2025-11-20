*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_1 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(99) 
  + max(0)
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_2 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0, -1)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(99) 
  + max(0)
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_3 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0, 0, -1)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(99) 
  + max(0)
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_4 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)
  + L(-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(1)
")
assert result("G1") =~ expr("
  + L(rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_5 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)
  + L(0)*L(-1-z)
  + L(-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(1)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_6 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)
  + L(0)*L(rat(-1-z, 1))
  + L(0)*L(-1-z)
  + L(-z)
  + L(-z)*L(-1-z)
  + L(-z)*L(rat(-1-z,z))
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(1)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, z))
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_7 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)
  + L(-z)
  + L(-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(2)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-z, 1), rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_8 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)
  + L(-z)
  + L(-1, -z)
  + L(-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(2)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-z, 1), rat(-z, 1))
  + L(rat(-1, 1), rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_9 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)
  + L(-z)
  + L(-1, -z)
  + L(-z, -z)
  + L(-1-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(2)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-1-z, 1), rat(-z, 1))
  + L(rat(-z, 1), rat(-z, 1))
  + L(rat(-1, 1), rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_10 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)*L(-z)
  + L(-z)^2
  + L(-1, -z)*L(-z, -z)
  + L(-z, -z)
  + L(-1-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(2)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-1-z, 1), rat(-z, 1))
  + L(rat(-z, 1), rat(-z, 1))
  + L(rat(-1, 1), rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_11 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0)*L(-z)
  + L(-z)^2
  + L(-1, -z)*L(-z, -z)
  + L(-z, rat(-z, 1))
  + L(-z, -z)
  + L(rat(-z, 1), -z)
  + L(rat(-z, 1), rat(-z, 1))
  + L(-1-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(2)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-1-z, 1), rat(-z, 1))
  + L(rat(-z, 1), rat(-z, 1))
  + L(rat(-1, 1), rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_12 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0, -1)
  + L(0)*L(-z)
  + L(-z)^2
  + L(-1, -z)*L(-z, -z)
  + L(-z, rat(-z, 1))
  + L(-z, -z)
  + L(rat(-z, 1), -z)
  + L(rat(-z, 1), rat(-z, 1))
  + L(-1-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(2)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-1-z, 1), rat(-z, 1))
  + L(rat(-z, 1), rat(-z, 1))
  + L(rat(-1, 1), rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_13 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0, -1)
  + L(0, 0, -1)
  + L(0)*L(-z)
  + L(-z)^2
  + L(-1, -z)*L(-z, -z)
  + L(-z, rat(-z, 1))
  + L(-z, -z)
  + L(rat(-z, 1), -z)
  + L(rat(-z, 1), rat(-z, 1))
  + L(-1-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(2)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-1-z, 1), rat(-z, 1))
  + L(rat(-z, 1), rat(-z, 1))
  + L(rat(-1, 1), rat(-z, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_14 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0, -1)
  + L(0, 0, -1)
  + L(0)*L(-z)
  + L(-z)^2
  + L(-z, 0, 0)
  + L(-1, -z)*L(-z, -z)
  + L(-z, rat(-z, 1))
  + L(-z, -z)
  + L(rat(-z, 1), -z)
  + L(rat(-z, 1), rat(-z, 1))
  + L(-1-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(3)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-1-z, 1), rat(-z, 1))
  + L(rat(-z, 1), rat(-z, 1))
  + L(rat(-1, 1), rat(-z, 1))
")
assert result("G3") =~ expr("
  + L(rat(-z, 1), rat(0, 1), rat(0, 1))
")
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra_15 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunctions aux1,...,aux9;
cfunctions min, max;
local F = 
  + L(0, -1)
  + L(0, 0, -1)
  + L(0)*L(-z)
  + L(-z)^2
  + L(0, -z, 0)
  + L(-1, -z)*L(-z, -z)
  + L(-z, rat(-z, 1))
  + L(-z, -z)
  + L(rat(-z, 1), -z)
  + L(rat(-z, 1), rat(-z, 1))
  + L(-1-z, -z)
  + L(-1-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypIsolateAndDissectVarDepFunctionsThruExtra(G,L,aux,rat,poly,z,HYPn,1,9,MinLength,MaxLength,F)
.sort
local H = min(`MinLength') + max(`MaxLength');
.sort
unhide;
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + min(1) 
  + max(3)
")
assert result("G1") =~ expr("
  + L(rat(-1-z, 1))
  + L(rat(-z, 1))
")
assert result("G2") =~ expr("
  + L(rat(-1-z, 1), rat(-z, 1))
  + L(rat(-z, 1), rat(-z, 1))
  + L(rat(-1, 1), rat(-z, 1))
")
assert result("G3") =~ expr("
  + L(rat(0, 1), rat(-z, 1), rat(0, 1))
")
*}}}
