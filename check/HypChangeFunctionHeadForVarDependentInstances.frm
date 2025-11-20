*{{{ HypChangeFunctionHeadForVarDependentInstances_1 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a), poly(b)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a), poly(b))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_2 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a), poly(b)),
            rat(poly(c), poly(d))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a), poly(b)),
      rat(poly(c), poly(d))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_3 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a), poly(b)),
            rat(poly(c), poly(d)),
            rat(poly(e), poly(f))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a), poly(b)),
      rat(poly(c), poly(d)),
      rat(poly(e), poly(f))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_4 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a, 0), poly(b, 0)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a, 0), poly(b, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_5 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a, 0, 0), poly(b, 0, 0)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a, 0, 0), poly(b, 0, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_6 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a, 0, 0, 0), poly(b, 0, 0, 0)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a, 0, 0, 0), poly(b, 0, 0, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_7 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a, 0), poly(b, 0)),
            rat(poly(c, 0), poly(d, 0))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a, 0), poly(b, 0)),
      rat(poly(c, 0), poly(d, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_8 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a, 0, 0), poly(b, 0, 0)),
            rat(poly(c, 0, 0), poly(d, 0, 0))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a, 0, 0), poly(b, 0, 0)),
      rat(poly(c, 0, 0), poly(d, 0, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_9 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a, 1), poly(b, 0)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, 1), poly(b, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_10 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a, 0), poly(b, 1)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, 0), poly(b, 1))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_11 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a, c), poly(b, 0)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, c), poly(b, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_12 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a, 0), poly(b, c)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, 0), poly(b, c))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_13 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(a, c), poly(b, d)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, c), poly(b, d))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_14 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a, 0), poly(b, 0)),
            rat(poly(c), poly(d))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a, 0), poly(b, 0)),
      rat(poly(c), poly(d))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_15 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a, 1), poly(b, 0)),
            rat(poly(c), poly(d))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, 1), poly(b, 0)),
      rat(poly(c), poly(d))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_16 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a, c), poly(b, 0)),
            rat(poly(c), poly(d))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, c), poly(b, 0)),
      rat(poly(c), poly(d))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_17 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a), poly(b)),
            rat(poly(c, 0), poly(d, 0))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a), poly(b)),
      rat(poly(c, 0), poly(d, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_18 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a), poly(b)),
            rat(poly(c, 1), poly(d, 0))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a), poly(b)),
      rat(poly(c, 1), poly(d, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_19 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a), poly(b)),
            rat(poly(c, 0), poly(d, 1))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a), poly(b)),
      rat(poly(c, 0), poly(d, 1))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_20 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a), poly(b)),
            rat(poly(c, e), poly(d, 0))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a), poly(b)),
      rat(poly(c, e), poly(d, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_21 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a), poly(b)),
            rat(poly(c, 0), poly(d, e))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a), poly(b)),
      rat(poly(c, 0), poly(d, e))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_22 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e;
cfunction L, Lnew, rat, poly;
local F = L(
            rat(poly(a), poly(b)),
            rat(poly(c, 0, e), poly(d, 0, 0))
          )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a), poly(b)),
      rat(poly(c, 0, e), poly(d, 0, 0))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_23 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = L(rat(poly(-1, 0), poly(0, 1)));
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(-1, 0), poly(0, 1))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_24 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = 
  L(
     rat(poly(-a), poly(1)),
     rat(poly(-1, 0), poly(0, 1))
  )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(-a), poly(1)),
      rat(poly(-1, 0), poly(0, 1))
    )
")
*}}}
*
*{{{ HypChangeFunctionHeadForVarDependentInstances_25 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, rat, poly;
local F = 
  L(
     rat(poly(0), poly(1)),
     rat(poly(-a), poly(1)),
     rat(poly(-1, 0), poly(0, 1))
  )
;
.sort
#call HypChangeFunctionHeadForVarDependentInstances(F, L, Lnew, rat, poly, HYPn1,...,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(0), poly(1)),
      rat(poly(-a), poly(1)),
      rat(poly(-1, 0), poly(0, 1))
    )
")
*}}}
