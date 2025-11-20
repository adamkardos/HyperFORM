*{{{ HypEliminateVarDepPolysForIndepFuncs_1 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols n1, n2;
cfunctions f, aux, rat, poly;
local F = 
  f(
    rat(poly(1, -1), poly(0, 1)), 
    rat(poly(1), poly(1)), 
    rat(poly(0, 1), poly(1)) 
  )
;
.sort
#call HypEliminateVarDepPolysForIndepFuncs(f,rat,poly,aux,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(
       rat(poly(1, -1), poly(0, 1)), 
       rat(poly(1), poly(1)), 
       rat(poly(0, 1), poly(1)) 
    )
")
*}}}
*
*{{{ HypEliminateVarDepPolysForIndepFuncs_2 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols n1, n2;
cfunctions f, aux, rat, poly;
local F = 
  f(
    rat(poly(1, 0), poly(1)), 
    rat(poly(1), poly(1)), 
    rat(poly(1, 0), poly(1, 0)) 
  )
;
.sort
#call HypEliminateVarDepPolysForIndepFuncs(f,rat,poly,aux,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(
       rat(poly(1), poly(1)), 
       rat(poly(1), poly(1)), 
       rat(poly(1), poly(1)) 
    )
")
*}}}
*
*{{{ HypEliminateVarDepPolysForIndepFuncs_3 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols n1, n2;
cfunctions f, aux, rat, poly;
local F = 
  f(
    rat(poly(1, 0), poly(1)), 
    rat(poly(1), poly(1)), 
    rat(poly(1, a), poly(1, 0)) 
  )
;
.sort
#call HypEliminateVarDepPolysForIndepFuncs(f,rat,poly,aux,n1,n2)
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(
      rat(poly(1, 0), poly(1)), 
      rat(poly(1), poly(1)), 
      rat(poly(1, a), poly(1, 0)) 
    )
")
*}}}
*
*{{{ HypEliminateVarDepPolysForIndepFuncs_4 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols n1, n2;
cfunctions f, aux, rat, poly;
local F = 
  f(
    rat(poly(1, 0), poly(1)), 
    rat(poly(1), poly(1)), 
    rat(poly(1, a), poly(1, b)) 
  )
;
.sort
#call HypEliminateVarDepPolysForIndepFuncs(f,rat,poly,aux,n1,n2)
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(
      rat(poly(1, 0), poly(1)), 
      rat(poly(1), poly(1)), 
      rat(poly(1, a), poly(1, b)) 
    )
")
*}}}
*
*{{{ HypEliminateVarDepPolysForIndepFuncs_5 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols n1, n2;
cfunctions f, aux, rat, poly;
local F = 
  f(
    rat(poly(1, 0), poly(1)), 
    rat(poly(1), poly(1)), 
    rat(poly(1, 0), poly(1, b)) 
  )
;
.sort
#call HypEliminateVarDepPolysForIndepFuncs(f,rat,poly,aux,n1,n2)
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(
      rat(poly(1, 0), poly(1)), 
      rat(poly(1), poly(1)), 
      rat(poly(1, 0), poly(1, b)) 
    )
")
*}}}
*
*{{{ HypEliminateVarDepPolysForIndepFuncs_6 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols n1, n2;
cfunctions f, aux, rat, poly;
local F = 
  f(
    rat(poly(1, 0), poly(1)), 
    rat(poly(1), poly(1)), 
    rat(poly(a, 0), poly(b, 0)) 
  )
;
.sort
#call HypEliminateVarDepPolysForIndepFuncs(f,rat,poly,aux,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(
       rat(poly(1), poly(1)), 
       rat(poly(1), poly(1)), 
       rat(poly(a), poly(b)) 
    )
")
*}}}
