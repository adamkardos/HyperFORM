*{{{ HypDifferentiateHlogsAtLevel_1 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(a), poly(b))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,0,,)
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
*{{{ HypDifferentiateHlogsAtLevel_2 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c), poly(d))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
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
*{{{ HypDifferentiateHlogsAtLevel_3 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c), poly(d)),
       rat(poly(e), poly(f))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,0,,)
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
*{{{ HypDifferentiateHlogsAtLevel_4 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(-a, 1)
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_5 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, c), poly(b, d))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(-b, d)
  - HYPdenx(-a, c)
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_6 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_7 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, c), poly(b, d))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, c), poly(b, d))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_8 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_9 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(rat(poly(0, 1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_10 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(rat(poly(0), poly(1)), rat(poly(0, 1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_11 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,4,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(rat(poly(0), poly(1)), rat(poly(0), poly(1)), rat(poly(0, 1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_12 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(0, 1), poly(1, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_13 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_14 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_15 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*L(rat(poly(0, -1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_16 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*L(rat(poly(0), poly(1)), rat(poly(0, -1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_17 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,4,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(rat(poly(0), poly(1)), rat(poly(0), poly(1)), rat(poly(0, -1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_18 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(a, 1)*L(rat(poly(-a), poly(1)))
  - HYPdenx(a, 1)*L(rat(poly(0, -1), poly(1, 0)))
  - HYPdenx(0)*L(rat(poly(-a), poly(1)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_19 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(-a), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(a, 1)*L(rat(poly(0), poly(1)), rat(poly(-a), poly(1)))
  - HYPdenx(a, 1)*L(rat(poly(0), poly(1)), rat(poly(0, -1), poly(1, 0)))
  - HYPdenx(0)*L(rat(poly(0), poly(1)), rat(poly(-a), poly(1)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_20 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(-a), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,4,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(a, 1)*L(rat(poly(0), poly(1)), rat(poly(0), poly(1)), rat(poly(-a), poly(1)))
  - HYPdenx(a, 1)*L(rat(poly(0), poly(1)), rat(poly(0), poly(1)), rat(poly(0, -1), poly(1, 0)))
  - HYPdenx(0)*L(rat(poly(0), poly(1)), rat(poly(0), poly(1)), rat(poly(-a), poly(1)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_21 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(-b), poly(1)),
       rat(poly(-a), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(a, 1)*L(rat(poly(-b), poly(1)), rat(poly(-a), poly(1)))
  - HYPdenx(a, 1)*L(rat(poly(-b), poly(1)), rat(poly(0, -1), poly(1, 0)))
  - HYPdenx(0)*L(rat(poly(-b), poly(1)), rat(poly(-a), poly(1)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_22 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(-b), poly(1)),
       rat(poly(-a), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,4,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(a, 1)*L(rat(poly(0), poly(1)), rat(poly(-b), poly(1)), rat(poly(-a), poly(1)))
  - HYPdenx(a, 1)*L(rat(poly(0), poly(1)), rat(poly(-b), poly(1)), rat(poly(0, -1), poly(1, 0)))
  - HYPdenx(0)*L(rat(poly(0), poly(1)), rat(poly(-b), poly(1)), rat(poly(-a), poly(1)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_23 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, -1), poly(1, 0)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(
       rat(poly(0, -1), poly(1, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_24 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(-1, 0), poly(0, 1))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(0)
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_25 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(-a), poly(1)),
       rat(poly(-1, 0), poly(0, 1))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(0)*L(rat(poly(-1, 0), poly(0, 1)))
  + HYPdenx(1, a)*L(rat(poly(-a), poly(1)))
  - HYPdenx(1, a)*L(rat(poly(-1, 0), poly(0, 1)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_26 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(-1, 0), poly(0, 1)),
       rat(poly(-a), poly(1))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(0)*L(rat(poly(-a), poly(1)))
  - HYPdenx(0)*L(rat(poly(-1, 0), poly(0, 1)))
  - HYPdenx(1, a)*L(rat(poly(-a), poly(1)))
  + HYPdenx(1, a)*L(rat(poly(-1, 0), poly(0, 1)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_27 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
local F = 
  + L(
       rat(poly(0, -1), poly(1, 0)),
       rat(poly(-1, 0), poly(0, 1))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,0,,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(-1, 1)*L(rat(poly(-1, 0), poly(0, 1)))
  + HYPdenx(-1, 1)*L(rat(poly(0, -1), poly(1, 0)))
  + HYPdenx(0)*L(rat(poly(-1, 0), poly(0, 1)))
  - HYPdenx(1, 1)*L(rat(poly(-1, 0), poly(0, 1)))
  + HYPdenx(1, 1)*L(rat(poly(0, -1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_28 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(a), poly(b))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,)
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
*{{{ HypDifferentiateHlogsAtLevel_29 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b, c, d;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c), poly(d))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,)
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
*{{{ HypDifferentiateHlogsAtLevel_30 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b, c, d, e, f;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c), poly(d)),
       rat(poly(e), poly(f))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,1,Lzero,)
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
*{{{ HypDifferentiateHlogsAtLevel_31 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(-a, 1)
  + Lzero(
      rat(poly(a, 1), poly(b, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_32 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b, c, d;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(a, c), poly(b, d))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(-b, d)
  - HYPdenx(-a, c)
  + Lzero(
      rat(poly(a, c), poly(b, d))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_33 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_34 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)
  + Lzero(
      rat(poly(0, 1), poly(1, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_35 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(rat(poly(0, 1), poly(1, 0)))
  + Lzero(
      rat(poly(0), poly(1)),
      rat(poly(0, 1), poly(1, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_36 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,1,Lzero,)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(rat(poly(0), poly(1)), rat(poly(0, 1), poly(1, 0)))
  + Lzero(
      rat(poly(0), poly(1)),
      rat(poly(0), poly(1)),
      rat(poly(0, 1), poly(1, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_37 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(a), poly(b))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
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
*{{{ HypDifferentiateHlogsAtLevel_38 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b, c, d;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c), poly(d))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
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
*{{{ HypDifferentiateHlogsAtLevel_39 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b, c, d, e, f;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c), poly(d)),
       rat(poly(e), poly(f))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,1,Lzero,Lconst)
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
*{{{ HypDifferentiateHlogsAtLevel_40 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(-a, 1)
  + Lconst(
      rat(a, b)
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_41 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b, c, d;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(a, c), poly(b, d))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPdenx(-b, d)
  - HYPdenx(-a, c)
  + Lconst(
      rat(a, b)
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_42 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 1), poly(b, 0))
    )
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_43 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)
  + Lconst(1)
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_44 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(rat(poly(0, 1), poly(1, 0)))
  + Lconst(0, 1)
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_45 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0), poly(1)),
       rat(poly(0, 1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,3,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)*
    L(rat(poly(0), poly(1)), rat(poly(0, 1), poly(1, 0)))
  + Lconst(0,0,1)
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_46 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPdenx(0)
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_47 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0), poly(1)),
       rat(poly(0, -1), poly(1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
  - HYPdenx(0)*
    L(rat(poly(0, -1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_48 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0, -1), poly(1, 0)),
       rat(poly(-1), poly(1))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
  + HYPdenx(1,1)*
    L(rat(poly(0, -1), poly(1, 0)))
")
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel_49 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0, 1, 1), poly(1, -1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
.sort
local diff =
  F
  -
  (
    Lconst(1)
    -
    HYPdenx(-1,1)
    -
    HYPdenx(0)
    +
    HYPdenx(+1,1)
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
*{{{ HypDifferentiateHlogsAtLevel_50 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0, 1, 1), poly(a, -1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
.sort
local diff =
  F
  -
  (
    Lconst(rat(1,a))
    -
    HYPdenx(-1,1)
    -
    HYPdenx(0)
    +
    HYPdenx(+a,1)
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
*{{{ HypDifferentiateHlogsAtLevel_51 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(1, -1, 0), poly(0, 1, 1))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
.sort
local diff =
  F
  -
  (
    Lconst(1)
    +
    HYPdenx(-1,1)
    +
    HYPdenx(0)
    -
    HYPdenx(+1,1)
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
*{{{ HypDifferentiateHlogsAtLevel_52 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(a, -1, 0), poly(0, 1, 1))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,1,0,,1,Lzero,Lconst)
.sort
local diff =
  F
  -
  (
    Lconst(a)
    +
    HYPdenx(-1,1)
    +
    HYPdenx(0)
    -
    HYPdenx(+a,1)
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
*{{{ HypDifferentiateHlogsAtLevel_53 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
      rat(poly(0,1,1),poly(1,-1,0)),
      rat(poly(-1,-1),poly(1,0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
.sort
local diff =
  F
  -
  (
    z2
    -
    HYPdenx(-1,1)*L(rat(poly(0,1,1),poly(1,-1,0)))
    +
    (
      HYPdenx(-1,1)
      -
      HYPdenx(+1,1)
    )*
    (
      L(rat(poly(0,1,1),poly(1,-1,0)))
      -
      L(rat(poly(-1,-1),poly(1,0)))
    )
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
*{{{ HypDifferentiateHlogsAtLevel_54 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
      rat(poly(0,1,1),poly(a,-1,0)),
      rat(poly(-1,-1),poly(1,0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
.sort
local diff =
  F
  -
  (
    z2
    -
    HYPdenx(-1,1)*L(rat(poly(0,1,1),poly(a,-1,0)))
    +
    (
      HYPdenx(-1,1)
      -
      HYPdenx(+a,1)
    )*
    (
      L(rat(poly(0,1,1),poly(a,-1,0)))
      -
      L(rat(poly(-1,-1),poly(1,0)))
    )
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
*{{{ HypDifferentiateHlogsAtLevel_55 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0, 0), poly(1, 0)),
       rat(poly(0, 1, 1), poly(1, -1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
.sort
local diff =
  F
  -
  (
    Lconst(0, 1)
    -
    (
      +
      HYPdenx(-1,1)
      +
      HYPdenx(0)
      -
      HYPdenx(+1,1)
    )*L(rat(poly(0, 0), poly(1, 0)))
    +
    (
      +
      HYPdenx(-1,1)
      +
      HYPdenx(0)
      -
      HYPdenx(+1,1)
    )*
    (
      L(rat(poly(0, 0), poly(1, 0)))
      -
      L(rat(poly(0, 1, 1), poly(1, -1, 0)))
    )
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
*{{{ HypDifferentiateHlogsAtLevel_56 :
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
*
symbol z;
symbol a, b;
cfunctions L, aux, rat, poly;
cfunction Lzero;
cfunction Lconst;
local F = 
  + L(
       rat(poly(0, 0), poly(1, 0)),
       rat(poly(0, 1, 1), poly(a, -1, 0))
    )
;
.sort
#call HypDifferentiateHlogsAtLevel(F,L,rat,poly,z,2,0,,1,Lzero,Lconst)
.sort
local diff =
  F
  -
  (
    Lconst(0, rat(1,a))
    -
    (
      +
      HYPdenx(-1,1)
      +
      HYPdenx(0)
      -
      HYPdenx(+a,1)
    )*L(rat(poly(0, 0), poly(1, 0)))
    +
    (
      +
      HYPdenx(-1,1)
      +
      HYPdenx(0)
      -
      HYPdenx(+a,1)
    )*
    (
      L(rat(poly(0, 0), poly(1, 0)))
      -
      L(rat(poly(0, 1, 1), poly(a, -1, 0)))
    )
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
