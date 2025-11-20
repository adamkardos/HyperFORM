*{{{ HypSimplifyDiffLogDiffFuncs_1 :
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
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_2 :
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
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_3 :
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
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_4 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(1)),
       rat(poly(-a), poly(1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_5 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(b)),
       rat(poly(-c), poly(d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_6 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, 0), poly(b, 0)),
       rat(poly(-c), poly(d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_7 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(b)),
       rat(poly(-c, 0), poly(d, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_8 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, 0), poly(b, 0)),
       rat(poly(-c, 0), poly(d, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_9 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, -1), poly(1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_10 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, -a), poly(1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_11 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, -a), poly(b))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_12 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -a), poly(b))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(1, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_13 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -a*b), poly(b))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(1, b)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_14 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -a*b), poly(b*c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(1, b)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_15 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a*b, -a*b), poly(b*c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(1, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_16 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -b), poly(c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_17 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-1, -1), poly(0, 1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(0, 1)
  + L(1, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_18 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-1, -1), poly(0, a))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(0, 1)
  + L(1, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_19 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -a), poly(0, b))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(0, 1)
  + L(1, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_20 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -b), poly(0, c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b)
  - L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_21 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -b), poly(c, c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b)
  - L(1, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_22 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -b), poly(c, -c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b)
  - L(1, -1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_23 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a, -b), poly(-c, -d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b)
  - L(c, d)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_24 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(1, 0), poly(0, 1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_25 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, a), poly(0, b))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_26 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, b), poly(a, b))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_27 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(1, 0), poly(1, 0)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-1, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_28 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(1, 0)),
       rat(poly(0, b), poly(1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a, b)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_29 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(c, 0)),
       rat(poly(0, b), poly(c, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a, b)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_30 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(c, 0)),
       rat(poly(0, b), poly(1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a, b*c)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_31 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(c, 0)),
       rat(poly(0, b), poly(d, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a*d, b*c)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_32 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, b), poly(c, d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b)
  - L(c, d)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_33 simp. relation 1:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, a*b), poly(c, c*d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(1, b)
  - L(1, d)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_34 simp. relation 1 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(b*a, b), poly(d*c, d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, 1)
  - L(c, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_35 simp. relation 2:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a), poly(b))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_36 simp. relation 2:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c), poly(d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_37 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, b), poly(c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_38 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, a*b), poly(c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(1, b)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_39 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*b, b), poly(c))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_40 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbol a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1)),
       rat(poly(a2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_41 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(g1)),
       rat(poly(a*a2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_42 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(a*g1)),
       rat(poly(a2), poly(a*g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_43 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbol a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2), poly(g2)),
       rat(poly(a1, b1), poly(g1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_44 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2), poly(g2)),
       rat(poly(a*a1, a*b1), poly(g1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_45 simp. relation 3:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2), poly(a*g2)),
       rat(poly(a1, b1), poly(a*g1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_46 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(c, d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(c, d)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_47 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b*c, b*d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(c, d)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_48 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, 0), poly(g1, d1)),
       rat(poly(a2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a2*g1 - a1*g2, a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_49 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, 0), poly(0, d1)),
       rat(poly(a2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a1*g2, a2*d1)
  - L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_50 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2), poly(g2)),
       rat(poly(a1, 0), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a2*g1 - a1*g2, a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_51 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2), poly(g2)),
       rat(poly(a1, 0), poly(0, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a1*g2, a2*d1)
  - L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_52 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*b, 0), poly(c, d))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(c, d)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_53 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, 0), poly(g1, d1)),
       rat(poly(a*a2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a2*g1 - a1*g2, a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_54 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, 0), poly(a*g1, a*d1)),
       rat(poly(a2), poly(a*g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a2*g1 - a1*g2, a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_55 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2), poly(g2)),
       rat(poly(a*a1, 0), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a2*g1 - a1*g2, a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_56 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2), poly(a*g2)),
       rat(poly(a1, 0), poly(a*g1, a*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a2*g1 - a1*g2, a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_57 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, 0), poly(b*g1, b*d1)),
       rat(poly(a*a2), poly(b*g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a2*g1 - a1*g2, a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_58 simp. relation 4:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2), poly(b*g2)),
       rat(poly(a*a1, 0), poly(b*g1, b*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a2*g1 - a1*g2, a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_59 simp. relation 5:
* Fixed to work with Flint!
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1, 0)),
       rat(poly(a2, b2), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L( - a2*g1 + a1*g2, - b2*g1 + b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_60 simp. relation 5:
* Fixed to work with Flint!
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(a*g1, 0)),
       rat(poly(a2, b2), poly(a*g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L( - a2*g1 + a1*g2, - b2*g1 + b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_61 simp. relation 5:
* Fixed to work with Flint!
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(g1, 0)),
       rat(poly(a*a2, a*b2), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L( - a2*g1 + a1*g2, - b2*g1 + b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_62 simp. relation 5:
* Fixed to work with Flint!
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(b*g1, 0)),
       rat(poly(a*a2, a*b2), poly(b*g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L( - a2*g1 + a1*g2, - b2*g1 + b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_63 simp. relation 6:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1, d1)),
       rat(poly(a2, 0), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2 - a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_64 simp. relation 6:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, 0), poly(g2, 0)),
       rat(poly(a1, b1), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2 - a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_65 simp. relation 6:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(a*g1, a*d1)),
       rat(poly(a2, 0), poly(a*g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2 - a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_66 simp. relation 6:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, 0), poly(a*g2, 0)),
       rat(poly(a1, b1), poly(a*g1, a*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2 - a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_67 simp. relation 6:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(g1, d1)),
       rat(poly(a*a2, 0), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2 - a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_68 simp. relation 6:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, 0), poly(g2, 0)),
       rat(poly(a*a1, a*b1), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2 - a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_69 simp. relation 6:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(b*g1, b*d1)),
       rat(poly(a*a2, 0), poly(b*g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2 - a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_70 simp. relation 6:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, 0), poly(b*g2, 0)),
       rat(poly(a*a1, a*b1), poly(b*g1, b*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, b1*g2 - a2*d1)
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_71 simp. relation 7:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1, 0)),
       rat(poly(a2, 0), poly(g2, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1 + a1*g2 , b1*g2 + a1*d2, b1*d2))
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_72 simp. relation 7:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(g1, 0)),
       rat(poly(a*a2, 0), poly(g2, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1 + a1*g2 , b1*g2 + a1*d2, b1*d2))
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_73 simp. relation 7:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(b*g1, 0)),
       rat(poly(a2, 0), poly(b*g2, b*d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1 + a1*g2 , b1*g2 + a1*d2, b1*d2))
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_74 simp. relation 7:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(b*g1, 0)),
       rat(poly(a*a2, 0), poly(b*g2, b*d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1 + a1*g2 , b1*g2 + a1*d2, b1*d2))
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_75 simp. relation 7:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, 0), poly(g2, d2)),
       rat(poly(a1, b1), poly(g1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1 + a1*g2 , b1*g2 + a1*d2, b1*d2))
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_76 simp. relation 7:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, 0), poly(g2, d2)),
       rat(poly(a*a1, a*b1), poly(g1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1 + a1*g2 , b1*g2 + a1*d2, b1*d2))
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_77 simp. relation 7:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, 0), poly(b*g2, b*d2)),
       rat(poly(a1, b1), poly(b*g1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1 + a1*g2 , b1*g2 + a1*d2, b1*d2))
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_78 simp. relation 7:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, 0), poly(b*g2, b*d2)),
       rat(poly(a*a1, a*b1), poly(b*g1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1 + a1*g2 , b1*g2 + a1*d2, b1*d2))
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_79 simp. relation 8:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, 0), poly(g1, d1)),
       rat(poly(a2, 0), poly(g2, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a2*g1 + a1*g2, -a2*d1 + a1*d2)
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_80 simp. relation 8:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, 0), poly(g1, d1)),
       rat(poly(a*a2, 0), poly(g2, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a2*g1 + a1*g2, -a2*d1 + a1*d2)
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_81 simp. relation 8:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, 0), poly(b*g1, b*d1)),
       rat(poly(a2, 0), poly(b*g2, b*d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a2*g1 + a1*g2, -a2*d1 + a1*d2)
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_82 simp. relation 8:
#include- hyperform.h
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, 0), poly(b*g1, b*d1)),
       rat(poly(a*a2, 0), poly(b*g2, b*d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a2*g1 + a1*g2, -a2*d1 + a1*d2)
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_83 simp. relation 9:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1, d1)),
       rat(poly(a2, b2), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(a2*g1 - a1*g2, b2*g1 - b1*g2 + a2*d1, b2*d1))
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_84 simp. relation 9:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(g1, d1)),
       rat(poly(a*a2, a*b2), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(a2*g1 - a1*g2, b2*g1 - b1*g2 + a2*d1, b2*d1))
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_85 simp. relation 9:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(b*g1, b*d1)),
       rat(poly(a2, b2), poly(b*g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(a2*g1 - a1*g2, b2*g1 - b1*g2 + a2*d1, b2*d1))
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_86 simp. relation 9:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(b*g1, b*d1)),
       rat(poly(a*a2, a*b2), poly(b*g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(a2*g1 - a1*g2, b2*g1 - b1*g2 + a2*d1, b2*d1))
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_87 simp. relation 9:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, b2), poly(g2, 0)),
       rat(poly(a1, b1), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(a2*g1 - a1*g2, b2*g1 - b1*g2 + a2*d1, b2*d1))
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_88 simp. relation 9:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, a*b2), poly(g2, 0)),
       rat(poly(a*a1, a*b1), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(a2*g1 - a1*g2, b2*g1 - b1*g2 + a2*d1, b2*d1))
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_89 simp. relation 9:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, b2), poly(b*g2, 0)),
       rat(poly(a1, b1), poly(b*g1, b*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(a2*g1 - a1*g2, b2*g1 - b1*g2 + a2*d1, b2*d1))
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_90 simp. relation 9:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, a*b2), poly(b*g2, 0)),
       rat(poly(a*a1, a*b1), poly(b*g1, b*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(a2*g1 - a1*g2, b2*g1 - b1*g2 + a2*d1, b2*d1))
  - L(g1, d1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_91 simp. relation 10:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1, d1)),
       rat(poly(a2, 0), poly(g2, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2, b1*g2 - a2*d1 + a1*d2, b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_92 simp. relation 10:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(g1, d1)),
       rat(poly(a*a2, 0), poly(g2, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2, b1*g2 - a2*d1 + a1*d2, b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_93 simp. relation 10:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(b*g1, b*d1)),
       rat(poly(a2,  0), poly(b*g2, b*d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2, b1*g2 - a2*d1 + a1*d2, b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_94 simp. relation 10:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(b*g1, b*d1)),
       rat(poly(a*a2,  0), poly(b*g2, b*d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2, b1*g2 - a2*d1 + a1*d2, b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_95 simp. relation 10:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, 0), poly(g2, d2)),
       rat(poly(a1, b1), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2, b1*g2 - a2*d1 + a1*d2, b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_96 simp. relation 10:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, 0), poly(g2, d2)),
       rat(poly(a*a1, a*b1), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2, b1*g2 - a2*d1 + a1*d2, b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_97 simp. relation 10:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2,  0), poly(b*g2, b*d2)),
       rat(poly(a1, b1), poly(b*g1, b*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2, b1*g2 - a2*d1 + a1*d2, b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_98 simp. relation 10:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2,  0), poly(b*g2, b*d2)),
       rat(poly(a*a1, a*b1), poly(b*g1, b*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2, b1*g2 - a2*d1 + a1*d2, b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_99 simp. relation 11:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1, d1)),
       rat(poly(a2, b2), poly(g2, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2,- b2*g1 + b1*g2 - a2*d1 + a1*d2,- b2*d1 + b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_100 simp. relation 11:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(g1, d1)),
       rat(poly(a*a2, a*b2), poly(g2, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2,- b2*g1 + b1*g2 - a2*d1 + a1*d2,- b2*d1 + b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_101 simp. relation 11:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(b*g1, b*d1)),
       rat(poly(a2, b2), poly(b*g2, b*d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2,- b2*g1 + b1*g2 - a2*d1 + a1*d2,- b2*d1 + b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_102 simp. relation 11:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a1, a*b1), poly(b*g1, b*d1)),
       rat(poly(a*a2, a*b2), poly(b*g2, b*d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2,- b2*g1 + b1*g2 - a2*d1 + a1*d2,- b2*d1 + b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_103 simp. relation 11:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, b2), poly(g2, d2)),
       rat(poly(a1, b1), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2,- b2*g1 + b1*g2 - a2*d1 + a1*d2,- b2*d1 + b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_104 simp. relation 11:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, a*b2), poly(g2, d2)),
       rat(poly(a*a1, a*b1), poly(g1, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2,- b2*g1 + b1*g2 - a2*d1 + a1*d2,- b2*d1 + b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_105 simp. relation 11:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, b2), poly(b*g2, b*d2)),
       rat(poly(a1, b1), poly(b*g1, b*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2,- b2*g1 + b1*g2 - a2*d1 + a1*d2,- b2*d1 + b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_106 simp. relation 11:
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbols a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a*a2, a*b2), poly(b*g2, b*d2)),
       rat(poly(a*a1, a*b1), poly(b*g1, b*d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(- a2*g1 + a1*g2,- b2*g1 + b1*g2 - a2*d1 + a1*d2,- b2*d1 + b1*d2))
  - L(g1, d1)
  - L(g2, d2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_107 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1), poly(g1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_108 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1), poly(g1)),
       rat(poly(0), poly(0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_109 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(0)),
       rat(poly(a2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_110 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1), poly(g1)),
       rat(poly(a2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_111 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, b1), poly(g1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0, 1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_112 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, b2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0, 1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_113 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1), poly(g1)),
       rat(poly(0, b2), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a1*g2, b2*g1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_114 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, b2), poly(g2)),
       rat(poly(a1), poly(g1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a1*g2, b2*g1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_115 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, 0), poly(0, d1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(0, 1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_116 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(g1)),
       rat(poly(a2, 0), poly(0, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(0, 1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_117 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, 0), poly(0, d1)),
       rat(poly(0), poly(g2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(0, 1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_118 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1), poly(g1)),
       rat(poly(a2, 0), poly(0, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1, a1*d2)
  - L(0, 1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_119 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, 0), poly(0, d2)),
       rat(poly(a1), poly(g1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1, a1*d2)
  - L(0, 1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_120 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, 0), poly(0, d1)),
       rat(poly(a2, 0), poly(0, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - L(0, 1) 
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_121 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1), poly(g1)),
       rat(poly(0, b2), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a1*g2, b2*g1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_122 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, b2), poly(g2, 0)),
       rat(poly(a1), poly(g1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(-a1*g2, b2*g1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_123 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, b1), poly(g1, 0)),
       rat(poly(0, b2), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_124 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, b1), poly(g1, 0)),
       rat(poly(a2, 0), poly(0, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1, 0, b1*d2))
  - L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_125 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2, 0), poly(0, d2)),
       rat(poly(0, b1), poly(g1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1, 0, b1*d2))
  - L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_126 :
* Fixed to work with Flint!
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1, 0)),
       rat(poly(a2, b2), poly(g2, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(- a2*g1 + a1*g2, - b2*g1 + b1*g2)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_127 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a1, b1), poly(g1, 0)),
       rat(poly(a2,  0), poly(0, d2))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1, a1*d2, b1*d2))
  - L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_128 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
symbol a, b;
symbols a1, a2, b1, b2, g1, g2, d1, d2;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(a2,  0), poly(0, d2)),
       rat(poly(a1, b1), poly(g1, 0))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(poly(-a2*g1, a1*d2, b1*d2))
  - L(0, 1)
")
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs_129 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(1,  1), poly(1, -1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
.sort
local diff =
  F
  -
  (
    L(1, 1) - L(1, -1)
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
*{{{ HypSimplifyDiffLogDiffFuncs_130 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(-1,  -1), poly(1, -1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
.sort
local diff =
  F
  -
  (
    L(1, 1) - L(1, -1)
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
*{{{ HypSimplifyDiffLogDiffFuncs_131 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(
       rat(poly(1,  1), poly(1, -1))
    )
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
.sort
local diff =
  F
  -
  (
    L(1, 1) - L(1, -1)
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
*{{{ HypSimplifyDiffLogDiffFuncs_132 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(0, 1)
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
.sort
local diff =
  F
  -
  (
    L(0, 1)
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
*{{{ HypSimplifyDiffLogDiffFuncs_133 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(rat(poly(1,1),poly(1,-1)))
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
.sort
local diff =
  F
  -
  (
    L(1,1) - L(1,-1)
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
*{{{ HypSimplifyDiffLogDiffFuncs_134 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, Ldiff, aux, rat, poly;
local F = 
  + L(rat(poly(-1,-1),poly(1,-1)))
;
.sort
#call HypSimplifyDiffLogDiffFuncs(F,L,rat, poly,HYPaux1,...,HYPaux4,z,HYPn1,...,HYPn10)
.sort
local diff =
  F
  -
  (
    L(1,1) - L(1,-1)
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
