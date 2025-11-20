*{{{ HypDissectExprWithArgNumber_1 :
#-
off statistics;
#include- hyperform.h
symbols a, b, c, d, e;
symbol z;
cfunction Linf;
local F = 
  + Linf(a)
  + Linf(b)
  + Linf(c)
  + Linf(d)
  + Linf(a, b)
  + Linf(a, c)
  + Linf(a, d)
  + Linf(b, c)
  + Linf(b, d)
  + Linf(c, d)
  + Linf(a, b, c)
  + Linf(a, b, d)
  + Linf(a, c, d)
  + Linf(b, c, d)
  + Linf(a, b, c, d)
;
.sort
#define MinArgs ""
#define MaxArgs ""
#call HypDissectExprWithArgNumber(F, F, Linf, HYPtag, HYPn1,MinArgs,MaxArgs, 1, 0)
.sort
print +s;
.end
assert succeeded?
assert result("F1") =~ expr("
  + Linf(a)
  + Linf(b)
  + Linf(c)
  + Linf(d)
")
assert result("F2") =~ expr("
  + Linf(a, b)
  + Linf(a, c)
  + Linf(a, d)
  + Linf(b, c)
  + Linf(b, d)
  + Linf(c, d)
")
assert result("F3") =~ expr("
  + Linf(a, b, c)
  + Linf(a, b, d)
  + Linf(a, c, d)
  + Linf(b, c, d)
")
assert result("F4") =~ expr("
  + Linf(a, b, c, d)
")
*}}}
