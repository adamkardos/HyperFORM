*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_1 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L, Lnew, aux, rat, poly;
local F = L(rat(poly(a), poly(b)));
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
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
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_2 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c), poly(d))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
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
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_3 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c), poly(d))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
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
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_4 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(c, 0), poly(d, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
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
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_5 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
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
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_6 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, Lnew, aux, rat, poly;
local F = L(rat(poly(a, c), poly(b, 0)));
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
      rat(poly(a, c), poly(b, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_7 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a), poly(b)),
       rat(poly(a, c), poly(b, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
       rat(poly(a), poly(b)),
       rat(poly(a, c), poly(b, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_8 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, 0), poly(f, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, 0), poly(f, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_9 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, b), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, 0), poly(f, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, b), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, 0), poly(f, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_10 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, a)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, 0), poly(f, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 0), poly(b, a)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, 0), poly(f, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_11 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, a), poly(d, 0)),
       rat(poly(e, 0), poly(f, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, a), poly(d, 0)),
       rat(poly(e, 0), poly(f, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_12 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, a)),
       rat(poly(e, 0), poly(f, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, a)),
       rat(poly(e, 0), poly(f, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_13 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, 0), poly(f, a))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, 0), poly(f, a))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_14 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, a), poly(f, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, 0)),
       rat(poly(e, a), poly(f, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_15 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, a)),
       rat(poly(c, 0), poly(d, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, 0), poly(b, a)),
      rat(poly(c, 0), poly(d, 0))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_16 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, a))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
      rat(poly(a, 0), poly(b, 0)),
      rat(poly(c, 0), poly(d, a))
    )
")
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence_17 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d, e, f;
cfunction L, Lnew, aux, rat, poly;
local F = 
  + L(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, a)),
       rat(poly(e, 0), poly(f, 0))
    )
;
.sort
#call HypChangeFuncHeadForGivenWordLengthAndVarDependence(F,L,Lnew,aux,rat,poly,HYPn1,HYPn2,3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lnew(
       rat(poly(a, 0), poly(b, 0)),
       rat(poly(c, 0), poly(d, a)),
       rat(poly(e, 0), poly(f, 0))
    )
")
*}}}
