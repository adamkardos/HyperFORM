*{{{ HypSimplifyRatFuncArguments_1 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, 0, 0, 0);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, 0, 0)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_2 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, 0, 0, -a);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, 0, -a)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_3 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, 0, -a, 0);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, -a, 0)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_4 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, 0, -a, -b);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, -a, -b)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_5 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, -a, -b, 0);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, -a, -b, 0)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_6 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, rat(-a, 2), -b, 0);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, -1/2*a, -b, 0)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_7 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, rat(-a, b), -c, 0);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, rat(-a, b), -c, 0)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_8 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, rat(-a*b, b), rat(-a*c, a*b), 0);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, -a, rat(-c, b), 0)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_9 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(0, rat(-a*(b + c), b*(b + c)), rat(-(a + b)*c, (a + b)*b), 0);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, rat(-a, b), rat(-c, b), 0)
")
*}}}
*
*{{{ HypSimplifyRatFuncArguments_10 :
#include- hyperform.h
*
symbol z;
symbol a, b, c, d;
cfunction rat;
cfunction simp,div1,div2,gcd;
cfunction Linf;
local F = Linf(-a, rat(-b, a*b), rat(-c, (a + b)*c), -d);
.sort
#call HypSimplifyRatFuncArguments(F, Linf, rat, simp, div1, div2, gcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-a, rat(-1, a), rat(-1, b + a), -d)
")
*}}}
