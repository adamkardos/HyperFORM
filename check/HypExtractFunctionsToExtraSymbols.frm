*{{{ HypExtractFunctionsToExtraSymbols_1 :
#include- hyperform.h
*
cfunction f, g;
local F = <f(1)> + ... + <f(10)>;
.sort
#define oldextra "0"
#define newextra "0"
#call HypExtractFunctionsToExtraSymbols(f,oldextra,newextra,F)
.sort
local F = g(`oldextra',`newextra');
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g(0, 10) 
")
*}}}
*
*{{{ HypExtractFunctionsToExtraSymbols_2 :
#include- hyperform.h
*
cfunction f, g;
local F = <f(1)*f(2)> + ... + <f(10)*f(11)>;
.sort
#define oldextra "0"
#define newextra "0"
#call HypExtractFunctionsToExtraSymbols(f,oldextra,newextra,F)
.sort
local F = g(`oldextra',`newextra');
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g(0, 11) 
")
*}}}
*
*{{{ HypExtractFunctionsToExtraSymbols_3 :
#include- hyperform.h
*
cfunction f, g;
local F = <f(1)*f(2)*f(3)> + ... + <f(10)*f(11)*f(12)>;
.sort
#define oldextra "0"
#define newextra "0"
#call HypExtractFunctionsToExtraSymbols(f,oldextra,newextra,F)
.sort
local F = g(`oldextra',`newextra');
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g(0, 12) 
")
*}}}
*
*{{{ HypExtractFunctionsToExtraSymbols_4 :
#include- hyperform.h
*
cfunction f, g;
local F = <f(1)*f(2)*f(3)*g(1)> + ... + <f(10)*f(11)*f(12)*g(10)>;
.sort
#define oldextra "0"
#define newextra "0"
#call HypExtractFunctionsToExtraSymbols(f,oldextra,newextra,F)
.sort
local F = g(`oldextra',`newextra');
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g(0, 12) 
")
*}}}
