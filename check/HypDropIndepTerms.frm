*{{{ HypDropIndepTerms_1 :
#include- hyperform.h
*
symbols a,b,c,x;
cfunctions f,rat,poly,aux;
symbols n1,n2;
*
local F = 
  f(a ,b) +
  f(a, x) +
  f(a, c) +
  f(x, c) +
  f(x, c) +
  f(a, x^2)
;
*
.sort
#call HypDropIndepTerms(F,f,rat,x,aux,0,poly,n1,n2)
.sort
local diff =
  F
  -
  (
    f(a, x) +
    f(x, c) +
    f(x, c) +
    f(a, x^2)
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
*{{{ HypDropIndepTerms_2 :
#include- hyperform.h
*
symbols a,b,c,x;
cfunctions f,rat,poly,aux;
symbols n1,n2;
*
local F = 
  f(rat(a ,b)) +
  f(rat(a, x)) +
  f(rat(a, c)) +
  f(rat(x, c)) +
  f(rat(x, c)) +
  f(rat(a, x^2))
;
*
.sort
#call HypDropIndepTerms(F,f,rat,x,aux,0,poly,n1,n2)
.sort
local diff =
  F
  -
  (
    f(rat(a, x)) +
    f(rat(x, c)) +
    f(rat(x, c)) +
    f(rat(a, x^2))
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
*{{{ HypDropIndepTerms_3 :
#include- hyperform.h
*
symbols a,b,c,x;
cfunctions f,rat,poly,aux;
symbols n1,n2;
*
local F = 
  aux*f(rat(a ,b)) +
  f(rat(a, x)) +
  f(rat(a, c)) +
  f(rat(x, c)) +
  f(rat(x, c)) +
  f(rat(a, x^2))
;
*
.sort
#call HypDropIndepTerms(F,f,rat,x,aux,0,poly,n1,n2)
.sort
local diff =
  F
  -
  (
    aux*f(rat(a ,b)) +
    f(rat(a, x)) +
    f(rat(x, c)) +
    f(rat(x, c)) +
    f(rat(a, x^2))
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
*{{{ HypDropIndepTerms_4 :
#include- hyperform.h
*
symbols a,b,c,x;
cfunctions f,rat,poly,aux;
symbols n1,n2;
*
local F = 
  f(rat(poly(a,0) ,poly(b))) +
  f(rat(poly(a,0), poly(0,1))) +
  f(rat(poly(a,0), poly(c,0))) +
  f(rat(poly(a,1), poly(c,0))) +
  f(rat(poly(0,1), poly(c,0))) +
  f(rat(poly(a,0), poly(0, 0, 1)))
;
*
.sort
#call HypDropIndepTerms(F,f,rat,x,aux,1,poly,n1,n2)
.sort
local diff =
  F
  -
  (
    f(rat(poly(a,0), poly(0,1))) +
    f(rat(poly(a,1), poly(c,0))) +
    f(rat(poly(0,1), poly(c,0))) +
    f(rat(poly(a,0), poly(0, 0, 1)))
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
