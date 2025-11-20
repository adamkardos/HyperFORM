*{{{ HypSimplifyGeneralDiffLogDiffFuncs_1 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
local F = 
  + L(
       rat(poly(0,  1), poly(1, 0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(0, 1)
    +
    L(rat(poly(1),poly(1)))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_2 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
local F = 
  + L(
       rat(poly(0, 1, 2), poly(1, 0, 0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(0, 1)
    +
    L(rat(poly(1, 2),poly(1,0)))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_3 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
local F = 
  + L(
       rat(poly(0, 1, 2, 3), poly(1, 0, 0, 0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(0, 1)
    +
    L(rat(poly(1, 2, 3),poly(1,0,0)))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_4 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
local F = 
  + L(
       rat(poly(0, 0, 2, 3), poly(1, 0, 0, 0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    2*L(0, 1)
    +
    L(rat(poly(2, 3),poly(1,0)))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_5 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
local F = 
  + L(
       rat(poly(1,  0), poly(0, 1))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    - 
    L(0, 1)
    +
    L(rat(poly(1),poly(1)))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_6 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a;
local F = 
  + L(
       rat(
         poly(0,1,1),poly(a,-1,0)
       ),
       rat(
         poly(-1,-1),poly(1,0)
       )
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(0, 1)
    +
    L(
      rat(poly(1,1),poly(a,-1)),
      rat(poly(-1,-1),poly(0,1))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_7 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a;
local F = 
  + L(
       rat(
         poly(1,2),poly(3,4)
       ),
       rat(
         poly(0,0),poly(1,0)
       )
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(
       rat(poly(1,2),poly(3,4))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_8 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a;
local F = 
  + L(
       rat(
         poly(0,0),poly(1,0)
       ),
       rat(
         poly(1,2),poly(3,4)
       )
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(
       rat(poly(-1,-2),poly(3,4))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_9 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a;
local F = 
  + L(
      rat(poly(0,0),poly(1,0)),rat(poly(0,1,1),poly(1,-1,0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(0, 1)
    +
    L(
      rat(poly(-1,-1),poly(1,-1))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_10 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a;
local F = 
  + L(
      rat(poly(0,1,1),poly(1,-1,0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(0, 1)
    +
    L(
      rat(poly(1,1),poly(1,-1))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_11 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a;
local F = 
  + L(
      rat(poly(0,0),poly(1,0)),rat(poly(0,1,1),poly(a,-1,0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat, poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(0, 1)
    +
    L(
      rat(poly(-1,-1),poly(a,-1))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_12 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a;
local F = 
  + L(
      rat(poly(0), poly(1)), rat(poly(0,1,1), poly(1,-1,0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat,poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(0, 1)
    +
    L(
      rat(poly(-1,-1),poly(1,-1))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_13 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "0"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a,b;
local F = 
  + L(
      rat(poly(-a,-a-b,-b), poly(1+a,b,0)), rat(poly(-1,-1), poly(1,0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat,poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(
      rat(poly(1,1),poly(1+a,b))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_14 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "1"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a,b;
local F = 
  + L(
      rat(poly(a,a+b,b), poly(1-a,-b,0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat,poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(1,1)
    +
    L(rat(poly(a,b),poly(1,0)))
    -
    L(rat(poly(1-a,-b),poly(1,0)))
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
*{{{ HypSimplifyGeneralDiffLogDiffFuncs_15 :
#include- hyperform.h
#redefine CheckPolysInSimplifyDiffLogDiffFuncs "1"
*
symbol z;
cfunctions L, rat, poly;
symbols n1,...,n8;
symbol a,b,c,d;
local F = 
  + L(
      rat(poly(a,a+b,b), poly(c,d,0))
    )
;
.sort
#call HypSimplifyGeneralDiffLogDiffFuncs(F,L,rat,poly,n1,...,n8)
.sort
local diff =
  F
  -
  (
    L(1,1)
    +
    L(rat(poly(a,b),poly(1,0)))
    -
    L(rat(poly(c,d),poly(1,0)))
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
