*{{{ HypEncodeNumberofArgsInFunctionHead_1 :
#include- hyperform.h
*
symbols n1,...,n9;
cfunctions g1,...,g9;
cfunctions f, g;
local F = 
  + f
  + f(0)
  + f(0, -1)
  + f(0, -1, -2)
;
.sort
#call HypEncodeNumberofArgsInFunctionHead(f,g,n,2,4,F)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g2(0, -1)
  + g3(0, -1, -2)
  + f
  + f(0)
")
*}}}
*
*{{{ HypEncodeNumberofArgsInFunctionHead_2 :
#include- hyperform.h
*
symbols n1,...,n9;
cfunctions g1,...,g9;
cfunctions f, g;
local F = 
  + f
  + f(0)
  + f(0, -1)
  + f(0, -1, -2)
  + f(0, -1, -2, -3)
  + f(0, -1, -2, -3, -4)
;
.sort
#call HypEncodeNumberofArgsInFunctionHead(f,g,n,2,4,F)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g2(0, -1)
  + g3(0, -1, -2)
  + g4(0, -1, -2, -3)
  + f
  + f(0)
  + f(0, -1, -2, -3, -4)
")
*}}}
*
*{{{ HypEncodeNumberofArgsInFunctionHead_3 :
#include- hyperform.h
*
symbols n1,...,n9;
cfunctions g1,...,g9;
cfunctions f, g;
local F = 
  + f
  + f(0)
  + f(0, -1)
  + f(0, -1, -2)
  + f(0, -1, -2, -3)
  + f(0, -1, -2, -3, -4)
  + f(0, -1, -2, -3, -4, -5)
;
.sort
#call HypEncodeNumberofArgsInFunctionHead(f,g,n,2,4,F)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g2(0, -1)
  + g3(0, -1, -2)
  + g4(0, -1, -2, -3)
  + f
  + f(0)
  + f(0, -1, -2, -3, -4)
  + f(0, -1, -2, -3, -4, -5)
")
*}}}
*
*{{{ HypEncodeNumberofArgsInFunctionHead_4 :
#include- hyperform.h
*
symbols n1,...,n9;
cfunctions g1,...,g9;
cfunctions f, g;
local F = 
  + f
  + f(0)
  + f(0, -1)
  + f(0, -1, -2)
  + f(0, -1, -2, -3)
  + f(0, -1, -2, -3, -4)
  + f(0, -1, -2, -3, -4, -5)
;
.sort
#call HypEncodeNumberofArgsInFunctionHead(f,g,n,1,1,F)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g1(0)
  + f
  + f(0, -1)
  + f(0, -1, -2)
  + f(0, -1, -2, -3)
  + f(0, -1, -2, -3, -4)
  + f(0, -1, -2, -3, -4, -5)
")
*}}}
*
*{{{ HypEncodeNumberofArgsInFunctionHead_5 :
#include- hyperform.h
*
symbols n1,...,n9;
cfunctions g1,...,g9;
cfunctions f, g;
local F = 
  + f
  + f(0)
  + f(0, -1)
  + f(0, -1, -2)
  + f(0, -1, -2, -3)
  + f(0, -1, -2, -3, -4)
  + f(0, -1, -2, -3, -4, -5)
;
.sort
#call HypEncodeNumberofArgsInFunctionHead(f,g,n,2,2,F)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g2(0, -1)
  + f
  + f(0)
  + f(0, -1, -2)
  + f(0, -1, -2, -3)
  + f(0, -1, -2, -3, -4)
  + f(0, -1, -2, -3, -4, -5)
")
*}}}
