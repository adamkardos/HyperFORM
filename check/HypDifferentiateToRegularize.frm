*{{{ HypDifferentiateToRegularize_1 :
#include- hyperform.h
*
symbols x,y,z;
*
local F = 
  HYPsetJ(x)*
  HYPsetK()*
  HYPdeg()*
  HYPpow(x, 1)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPpow(x, 1)
")
*}}}
*
*{{{ HypDifferentiateToRegularize_2 :
#include- hyperform.h
*
symbols x,y,z;
*
local F = 
  HYPsetJ()*
  HYPsetK(x)*
  HYPdeg()*
  HYPpow(x, 1)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPpow(x, 1)
")
*}}}
*
*{{{ HypDifferentiateToRegularize_3 :
#include- hyperform.h
*
symbols x,y,z;
*
local F = 
  HYPsetJ(x, y)*
  HYPsetK()*
  HYPdeg()*
  HYPpow(x + y, 1)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPpow(x, 1)
  - HYPpow(y, 1)
")
*}}}
*
*{{{ HypDifferentiateToRegularize_4 :
#include- hyperform.h
*
symbols x,y,z;
*
local F = 
  HYPsetJ(x, y)*
  HYPsetK()*
  HYPdeg()*
  HYPpow(x*y, 1)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2*
    HYPpow(x*y, 1)
")
*}}}
*
*{{{ HypDifferentiateToRegularize_5 :
#include- hyperform.h
*
symbols x,y,z;
*
local F = 
  HYPsetJ(x)*
  HYPsetK(y)*
  HYPdeg()*
  HYPpow(x*y, 1)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypDifferentiateToRegularize_6 :
#include- hyperform.h
*
symbols x,y,z;
*
local F = 
  HYPsetJ(x)*
  HYPsetK(y)*
  HYPdeg()*
  HYPpow(x + y, 1)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPpow(x, 1)
  + HYPpow(y, 1)
")
*}}}
*
*{{{ HypDifferentiateToRegularize_7 :
#include- hyperform.h
*
symbols x,y,z;
*
local F = 
  HYPsetJ(x)*
  HYPsetK()*
  HYPdeg()*
  HYPpow(x*y^3 + x^3*y, 2)
;
*
.sort
#call HypDifferentiateToRegularize()
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2*
    HYPpow(x, 1)*
    HYPpow(y, 1)*
    HYPpow(y^2 + x^2, 1)*
    HYPpow(x*y^3 + 3*x^3*y, 1)
")
*}}}
*
*{{{ HypDifferentiateToRegularize_8 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = 
  HYPsetJ(x)*
  HYPsetK()*
  HYPdeg()*
  HYPpow(x, -1-ep)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPpow(x, 1)*HYPpow(x,-2-ep)*HYPnumep(-1-ep)
")
*}}}
*
*{{{ HypDifferentiateToRegularize_9 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = 
  HYPsetJ(x,y)*
  HYPsetK()*
  HYPdeg()*
  HYPpow(x*y + (x+y)^2, -1-ep)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPpow(2*y^2 + 3*x*y, 1)*HYPpow(y^2 + 3*x*y + x^2,-2-ep)*HYPnumep(-1-ep)
  - HYPpow(3*x*y + 2*x^2, 1)*HYPpow(y^2 + 3*x*y + x^2,-2-ep)*HYPnumep(-1-ep)
")
*}}}
*
*{{{ HypDifferentiateToRegularize_10 :
#include- hyperform.h
*
symbol ep;
symbols x,y,z;
*
local F = 
  HYPsetJ(x)*
  HYPsetK(y)*
  HYPdeg()*
  HYPpow(x*y + (x+y)^2, -1-ep)
;
*
.sort
#call HypDifferentiateToRegularize()
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPpow(2*y^2 + 3*x*y, 1)*HYPpow(y^2 + 3*x*y + x^2,-2-ep)*HYPnumep(-1-ep)
  - HYPpow(3*x*y + 2*x^2, 1)*HYPpow(y^2 + 3*x*y + x^2,-2-ep)*HYPnumep(-1-ep)
")
*}}}
