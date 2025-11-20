*{{{ HypMergeLevelExpressions_1 :
#include- hyperform.h
*
cfunctions f, g;
*
local F1 = <f(1)>+...+<f(5)>;
local F2 = <f(2)>+...+<f(6)>;
local F3 = <f(3)>+...+<f(7)>;
local F4 = <f(4)>+...+<f(8)>;
local G2 = <g(2)>+...+<g(6)>;
local G3 = <g(3)>+...+<g(7)>;
local G4 = <g(4)>+...+<g(8)>;
.sort
#call HypMergeLevelExpressions(F,G,1,4,1)
print +s;
.end
assert succeeded?
assert result("F1") =~ expr("
  + f(1) + f(2) + f(3) + f(4) + f(5)
")
assert result("F2") =~ expr("
  + f(2) + f(3) + f(4) + f(5) + f(6)
  + g(2) + g(3) + g(4) + g(5) + g(6)
")
assert result("F3") =~ expr("
  + f(3) + f(4) + f(5) + f(6) + f(7)
  + g(3) + g(4) + g(5) + g(6) + g(7)
")
assert result("F4") =~ expr("
  + f(4) + f(5) + f(6) + f(7) + f(8)
  + g(4) + g(5) + g(6) + g(7) + g(8)
")
*}}}
