*{{{ HypSimplifyNumericRatFuncs_1 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction rat;
local F = rat(a, 4);
.sort
#call HypSimplifyNumericRatFuncs(rat, HYPn1, HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/4*a
")
*}}}
*
*{{{ HypSimplifyNumericRatFuncs_2 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
local F = rat(a, b);
.sort
#call HypSimplifyNumericRatFuncs(rat, HYPn1, HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(a, b)
")
*}}}
*
*{{{ HypSimplifyNumericRatFuncs_3 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
local F = rat(a*b, b);
.sort
#call HypSimplifyNumericRatFuncs(rat, HYPn1, HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(a*b, b)
")
*}}}
*
*{{{ HypSimplifyNumericRatFuncs_4 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
local F = rat(a*b, 4*b);
.sort
#call HypSimplifyNumericRatFuncs(rat, HYPn1, HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(a*b, 4*b)
")
*}}}
*
*{{{ HypSimplifyNumericRatFuncs_5 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction rat;
local F = rat(a + b, 4);
.sort
#call HypSimplifyNumericRatFuncs(rat, HYPn1, HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/4*b
  + 1/4*a 
")
*}}}
