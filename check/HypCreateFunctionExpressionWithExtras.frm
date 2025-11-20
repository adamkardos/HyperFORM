*{{{ HypCreateFunctionExpressionWithExtras_1 :
#include- hyperform.h
*
cfunction f, g;
local F = <f(1)> + ... + <f(10)>;
.sort
#define minextra "0"
#define maxextra "0"
#call HypCreateFunctionExpressionWithExtras(G,f,0,F)
.sort
local G = <f(1)> + ... + <f(10)>;
.sort
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + f(1)
  + f(2)
  + f(3)
  + f(4)
  + f(5)
  + f(6)
  + f(7)
  + f(8)
  + f(9)
  + f(10)
")
*}}}
*
*{{{ HypCreateFunctionExpressionWithExtras_2 :
#include- hyperform.h
*
cfunction f, g;
local F = <f(1)*f(2)> + ... + <f(10)*f(11)>;
.sort
#define minextra "0"
#define maxextra "0"
#call HypCreateFunctionExpressionWithExtras(G,f,0,F)
.sort
local G = <f(1)> + ... + <f(11)>;
.sort
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + f(1)
  + f(2)
  + f(3)
  + f(4)
  + f(5)
  + f(6)
  + f(7)
  + f(8)
  + f(9)
  + f(10)
  + f(11)
")
*}}}
*
*{{{ HypCreateFunctionExpressionWithExtras_3 :
#include- hyperform.h
*
cfunction f, g;
local F = <f(1)*f(2)*f(3)> + ... + <f(10)*f(11)*f(12)>;
.sort
#define minextra "0"
#define maxextra "0"
#call HypCreateFunctionExpressionWithExtras(G,f,0,F)
.sort
local G = <f(1)> + ... + <f(11)>;
.sort
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + f(1)
  + f(2)
  + f(3)
  + f(4)
  + f(5)
  + f(6)
  + f(7)
  + f(8)
  + f(9)
  + f(10)
  + f(11)
")
*}}}
*
*{{{ HypCreateFunctionExpressionWithExtras_4 :
#include- hyperform.h
*
cfunction f, g;
local F = <f(1)*f(2)*f(3)*g(1)> + ... + <f(10)*f(11)*f(12)*g(10)>;
.sort
#define minextra "0"
#define maxextra "0"
#call HypCreateFunctionExpressionWithExtras(G,f,0,F)
.sort
local G = <f(1)> + ... + <f(11)>;
.sort
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + f(1)
  + f(2)
  + f(3)
  + f(4)
  + f(5)
  + f(6)
  + f(7)
  + f(8)
  + f(9)
  + f(10)
  + f(11)
")
*}}}
