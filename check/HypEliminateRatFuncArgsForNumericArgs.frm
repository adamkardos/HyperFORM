*{{{ HypEliminateRatFuncArgsForNumericArgs_1 :
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
#call HypEliminateRatFuncArgsForNumericArgs(f,rat,poly,aux,n1,n2)
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
*{{{ HypEliminateRatFuncArgsForNumericArgs_2 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols n1, n2;
cfunctions f, aux, rat, poly;
local F = 
  f(
    rat(poly(1), poly(1)), 
    rat(poly(2), poly(1)), 
    rat(poly(3), poly(1)) 
  )
;
.sort
#call HypEliminateRatFuncArgsForNumericArgs(f,rat,poly,aux,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(1, 2, 3)
")
*}}}
*
*{{{ HypEliminateRatFuncArgsForNumericArgs_3 :
#include- hyperform.h
*
symbol z;
symbol a, b;
symbols n1, n2;
cfunctions f, aux, rat, poly;
local F = 
  f(
    rat(poly(1), poly(1)), 
    rat(poly(a), poly(1)), 
    rat(poly(3), poly(1)) 
  )
;
.sort
#call HypEliminateRatFuncArgsForNumericArgs(f,rat,poly,aux,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(
      rat(poly(1), poly(1)), 
      rat(poly(a), poly(1)), 
      rat(poly(3), poly(1)) 
    )
")
*}}}
