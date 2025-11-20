*{{{ HypPartingForLimitDiffs_1 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-1), poly(1))
    )
;
.sort
#call HypPartingForLimitDiffs(F,L,Ldiff,0,,aux,HYPn1,...,HYPn4)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L*
    Ldiff(rat(poly(-1), poly(1)))
")
*}}}
*
*{{{ HypPartingForLimitDiffs_2 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(1))
    )
;
.sort
#call HypPartingForLimitDiffs(F,L,Ldiff,0,,aux,HYPn1,...,HYPn4)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L*
    Ldiff(rat(poly(-a), poly(1)))
")
*}}}
*
*{{{ HypPartingForLimitDiffs_3 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(1)),
       rat(poly(-b), poly(1))
    )
;
.sort
#call HypPartingForLimitDiffs(F,L,Ldiff,0,,aux,HYPn1,...,HYPn4)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(rat(poly(-b), poly(1)))*
    Ldiff(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)))
  - L(rat(poly(-a), poly(1)))*
    Ldiff(rat(poly(-b), poly(1)))
  + L(rat(poly(-a), poly(1)))*
    Ldiff(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)))
")
*}}}
*
*{{{ HypPartingForLimitDiffs_4 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(1)),
       rat(poly(-b), poly(1)),
       rat(poly(-c), poly(1))
    )
;
.sort
#call HypPartingForLimitDiffs(F,L,Ldiff,0,,aux,HYPn1,...,HYPn4)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(rat(poly(-b), poly(1)), rat(poly(-c), poly(1)))*
    Ldiff(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)))
  - L(rat(poly(-a), poly(1)), rat(poly(-c), poly(1)))*
    Ldiff(rat(poly(-b), poly(1)), rat(poly(-c), poly(1)))
  + L(rat(poly(-a), poly(1)), rat(poly(-c), poly(1)))*
    Ldiff(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)))
  - L(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)))*
    Ldiff(rat(poly(-c), poly(1)))
  + L(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)))*
    Ldiff(rat(poly(-b), poly(1)), rat(poly(-c), poly(1)))
")
*}}}
*
*{{{ HypPartingForLimitDiffs_5 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(1)),
       rat(poly(-b), poly(1)),
       rat(poly(-c), poly(1)),
       rat(poly(-d), poly(1))
    )
;
.sort
#call HypPartingForLimitDiffs(F,L,Ldiff,0,,aux,HYPn1,...,HYPn4)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(rat(poly(-b), poly(1)), rat(poly(-c), poly(1)), rat(poly(-d), poly(1)))*
    Ldiff(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)))

  - L(rat(poly(-a), poly(1)), rat(poly(-c), poly(1)), rat(poly(-d), poly(1)))*
    Ldiff(rat(poly(-b), poly(1)), rat(poly(-c), poly(1)))

  + L(rat(poly(-a), poly(1)), rat(poly(-c), poly(1)), rat(poly(-d), poly(1)))*
    Ldiff(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)))

  - L(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)), rat(poly(-d), poly(1)))*
    Ldiff(rat(poly(-c), poly(1)), rat(poly(-d), poly(1)))

  + L(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)), rat(poly(-d), poly(1)))*
    Ldiff(rat(poly(-b), poly(1)), rat(poly(-c), poly(1)))

  - L(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)), rat(poly(-c), poly(1)))*
    Ldiff(rat(poly(-d), poly(1)))

  + L(rat(poly(-a), poly(1)), rat(poly(-b), poly(1)), rat(poly(-c), poly(1)))*
    Ldiff(rat(poly(-c), poly(1)), rat(poly(-d), poly(1)))
")
*}}}
