*{{{ HypSimplifyRatFuncsGCD_1 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction rat;
cfunctions div1,div2,gcd;
local F = rat(a, 4);
.sort
#call HypSimplifyRatFuncsGCD(rat, div1, div2, gcd, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(a, 4)
")
*}}}
*
*{{{ HypSimplifyRatFuncsGCD_2 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
cfunctions div1,div2,gcd;
local F = rat(a, b);
.sort
#call HypSimplifyRatFuncsGCD(rat, div1, div2, gcd, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(a, b)
")
*}}}
*
*{{{ HypSimplifyRatFuncsGCD_3 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
cfunctions div1,div2,gcd;
local F = rat(a*b, b);
.sort
#call HypSimplifyRatFuncsGCD(rat, div1, div2, gcd, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(a, 1)
")
*}}}
*
*{{{ HypSimplifyRatFuncsGCD_4 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
cfunctions div1,div2,gcd;
local F = rat(a*b, 4*b);
.sort
#call HypSimplifyRatFuncsGCD(rat, div1, div2, gcd, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(a, 4)
")
*}}}
*
*{{{ HypSimplifyRatFuncsGCD_5 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
cfunctions div1,div2,gcd;
local F = rat(a + b, 4);
.sort
#call HypSimplifyRatFuncsGCD(rat, div1, div2, gcd, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(b + a, 4)
")
*}}}
