*{{{ HypCreateRatFuncArgsInVar_1 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(rat(a, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a), poly(1)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_2 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, rat, poly;
local F = L(rat(a, b));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a), poly(b)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_3 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, rat, poly;
local F = L(rat(a, 1), rat(b, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a), poly(1)), rat(poly(b), poly(1)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_4 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, rat, poly;
local F = L(rat(a, b), rat(c, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a), poly(b)), rat(poly(c), poly(1)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_5 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, rat, poly;
local F = L(rat(a, 1), rat(b, 1), rat(c, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a), poly(1)), rat(poly(b), poly(1)), rat(poly(c), poly(1)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_6 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, rat, poly;
local F = L(rat(a, b), rat(c, d));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a), poly(b)), rat(poly(c), poly(d)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_7 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, rat, poly;
local F = L(rat(a, b), rat(c, d), rat(e, f));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a), poly(b)), 
      rat(poly(c), poly(d)), 
      rat(poly(e), poly(f)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_8 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(rat(z, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(0, 1), poly(1, 0)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_9 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(rat(z, a));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(0, 1), poly(a, 0)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_10 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, rat, poly;
local F = L(rat(a*z, b));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(0, a), poly(b, 0)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_11 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, rat, poly;
local F = L(rat(a*z, b*z));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(0, a), poly(0, b)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_12 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(rat(1 + z, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(1, 1), poly(1, 0)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_13 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(rat(a + z, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a, 1), poly(1, 0)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_14 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, rat, poly;
local F = L(rat(a + z, b));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a, 1), poly(b, 0)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_15 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, rat, poly;
local F = L(rat(a + b*z, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a, b), poly(1, 0)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_16 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, rat, poly;
local F = L(rat(a + b*z, c));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a, b), poly(c, 0)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_17 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, rat, poly;
local F = L(rat(a + b*z, z));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a, b), poly(0, 1)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_18 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, rat, poly;
local F = L(rat(a + b*z, c*z));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a, b), poly(0, c)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_19 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, rat, poly;
local F = L(rat(a + b*z, c + d*z));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a, b), poly(c, d)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_20 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, rat, poly;
local F = L(rat(a - b*z, c - d*z));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(a, -b), poly(c, -d)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_21 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(-1);
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(-1), poly(1)))
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_22 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(-1, -2);
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(-1), poly(1)), 
      rat(poly(-2), poly(1))
    )
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_23 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(-1, -2, -3);
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(-1), poly(1)), 
      rat(poly(-2), poly(1)),
      rat(poly(-3), poly(1))
    )
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_24 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(-1, -2, -3, -4);
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(-1), poly(1)), 
      rat(poly(-2), poly(1)),
      rat(poly(-3), poly(1)),
      rat(poly(-4), poly(1))
    )
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_25 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L, rat, poly;
local F = L(-1, -2, -3, -4, -5);
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(poly(-1), poly(1)), 
      rat(poly(-2), poly(1)),
      rat(poly(-3), poly(1)),
      rat(poly(-4), poly(1)),
      rat(poly(-5), poly(1))
    )
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_26 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, rat, poly;
local F = L(rat(a, 1), rat(b*z, 1));
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a), poly(1)), 
      rat(poly(0, b), poly(1, 0))
    )
")
*}}}
*
*{{{ HypCreateRatFuncArgsInVar_27 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, rat, poly;
local F = L(
  rat(-a, 1+a), 
  rat(-a, 1+a+z), 
  rat(1, z*(1+a+z)), 
  rat(-a*(1+z), 1+a+z), 
  rat(1, z*(1+a+z)), 
  rat(-a*(1+z), 1+a+z)
)
;
.sort
#call HypCreateRatFuncArgsInVar(F, L,0,,rat, poly, z, HYPaux, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(-a), poly(1+a)), 
      rat(poly(-a, 0), poly(1+a, 1)),
      rat(poly(1, 0, 0), poly(0, 1+a, 1)),
      rat(poly(-a, -a), poly(1+a, 1)),
      rat(poly(1, 0, 0), poly(0, 1+a, 1)),
      rat(poly(-a, -a), poly(1+a, 1))
    )
")
*}}}
