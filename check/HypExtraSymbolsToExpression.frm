*{{{ HypExtraSymbolsToExpression_1 :
#include- hyperform.h
*
cfunction f;
local F = <f(1)> + ... + <f(10)>;
.sort
topolynomial,OnlyFunctions,f;
.sort
drop F;
.sort
#call HypExtraSymbolsToExpression(F, 0, 10,0,,0,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Z1_ + Z2_ + Z3_ + Z4_ + Z5_ 
  + Z6_ + Z7_ + Z8_ + Z9_ + Z10_ 
")
*}}}
*
*{{{ HypExtraSymbolsToExpression_2 :
#include- hyperform.h
*
cfunction f;
cfunction g;
local F = <f(1)> + ... + <f(10)>;
.sort
topolynomial,OnlyFunctions,f;
.sort
drop F;
.sort
#call HypExtraSymbolsToExpression(F, 0, 10,1, g,0,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g( 1, Z1_) + g( 2, Z2_) + g( 3, Z3_) + g( 4, Z4_) + g( 5, Z5_) 
  + g( 6, Z6_) + g( 7, Z7_) + g( 8, Z8_) + g( 9, Z9_) + g( 10, Z10_) 
")
*}}}
*
*{{{ HypExtraSymbolsToExpression_3 :
#include- hyperform.h
*
cfunction f;
cfunction g;
local F = <f(1)> + ... + <f(10)>;
.sort
topolynomial,OnlyFunctions,f;
.sort
drop F;
.sort
#call HypExtraSymbolsToExpression(F, 0, 10,0,,1,g,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g( 1)* Z1_ 
  + g( 2)* Z2_ 
  + g( 3)* Z3_ 
  + g( 4)* Z4_ 
  + g( 5)* Z5_ 
  + g( 6)* Z6_ 
  + g( 7)* Z7_ 
  + g( 8)* Z8_ 
  + g( 9)* Z9_ 
  + g(10)* Z10_ 
")
*}}}
