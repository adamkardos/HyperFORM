*{{{ HypToHyperlog_1 :
#include- hyperform.h
*
symbol z;
local F = HYPlogx(0);
.sort
#call HypToHyperlog()
*
.sort
*
local diff =
  F
  -
  (
    HYPLx(0)
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
*{{{ HypToHyperlog_2 :
#include- hyperform.h
*
symbol z;
local F = HYPlogx(0)^2;
.sort
#call HypToHyperlog()
*
.sort
*
local diff =
  F
  -
  (
    2*HYPLx(0,0)
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
*{{{ HypToHyperlog_3 :
#include- hyperform.h
*
symbol z;
local F = HYPlogx(0)^3;
.sort
#call HypToHyperlog()
*
.sort
*
local diff =
  F
  -
  (
    6*HYPLx(0,0,0)
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
*{{{ HypToHyperlog_4 :
#include- hyperform.h
*
symbol z;
symbol a;
*
local F = HYPlogx(-a);
.sort
#call HypToHyperlog()
*
.sort
*
local diff =
  F
  -
  (
    HYPLx(-a)
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
*{{{ HypToHyperlog_5 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = HYPlogx(-a,b);
.sort
#call HypToHyperlog()
*
.sort
*
local diff =
  F
  -
  (
    HYPLx(HYPrat(-a,b))
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
*{{{ HypToHyperlog_6 :
#include- hyperform.h
*
symbol z;
symbols a,b;
*
local F = HYPlogx(-a,b)^2;
.sort
#call HypToHyperlog()
*
.sort
*
local diff =
  F
  -
  (
    2*HYPLx(HYPrat(-a,b),HYPrat(-a,b))
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
*{{{ HypToHyperlog_7 :
#include- hyperform.h
*
symbol z;
symbols a,b,c,d;
*
local F = HYPlogx(-a,b)*HYPlogx(-c,d);
.sort
#call HypToHyperlog()
*
.sort
*
local diff =
  F
  -
  (
    HYPLx(HYPrat(-a,b),HYPrat(-c,d))
    +
    HYPLx(HYPrat(-c,d),HYPrat(-a,b))
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
