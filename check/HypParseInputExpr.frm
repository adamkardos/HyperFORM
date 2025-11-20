*{{{ HypParseInputExpr_1 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
cfunctions num,den;
*
local F = ep
;
*
.sort
*
#call HypParseInputExpr(ep,num,den,x,y,z)
*
.sort
*
local diff = 
  F
  -
  (
    HYPep
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypParseInputExpr_2 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
cfunctions num,den;
*
local F = den(x + y + z)
;
*
.sort
*
#call HypParseInputExpr(ep,num,den,x,y,z)
*
.sort
*
local diff =
  F
  -
  (
    HYPpow(HYPz3 + HYPz2 + HYPz1, -1)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypParseInputExpr_3 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
cfunctions num,den;
*
local F = num(x + y + z)
;
*
.sort
*
#call HypParseInputExpr(ep,num,den,x,y,z)
*
.sort
*
local diff =
  F
  -
  (
    HYPpow(HYPz3 + HYPz2 + HYPz1, 1)
  )
;
*
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypParseInputExpr_4 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
cfunctions num,den;
*
local F = den(x + y + z)*y
;
*
.sort
*
#call HypParseInputExpr(ep,num,den,x,y,z)
*
.sort
*
local diff =
  F
  -
  (
    HYPpow(HYPz2, 1)*HYPpow(HYPz3 + HYPz2 + HYPz1, -1)
  )
;
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
