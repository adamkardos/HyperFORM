*{{{ HypGetPolyCoeffs_1 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(a)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(a,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_2 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(a)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,1)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(a)
")
*}}}
*
*{{{ HypGetPolyCoeffs_3 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(x)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0,1,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_4 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(x)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,1)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0,1)
")
*}}}
*
*{{{ HypGetPolyCoeffs_5 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(2*x)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0,2,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_6 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(2*x)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,1)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0,2)
")
*}}}
*
*{{{ HypGetPolyCoeffs_7 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(a*x)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0,a,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_8 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(a*x + b*x)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0,b+a,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_9 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(a*x + b*x)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,1)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0,b+a)
")
*}}}
*
*{{{ HypGetPolyCoeffs_10 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(c + d + a*x - b*x)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(d + c,-b+a,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_11 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f(c + d)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(d + c,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_12 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f((a + b)*x + (c + d)*x^2)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0, b + a, d + c,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_13 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f((a + b)*x^2 + (c + d)*x^3)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0, 0, b + a, d + c,0)
")
*}}}
*
*{{{ HypGetPolyCoeffs_14 :
#include- hyperform.h
*
cfunctions f;
*
symbols a,b,c,d,e,x;
*
local F = 
  + f((a + b)*x^2 + (c + d)*x^5)
;
*
.sort
*
#call HypGetPolyCoeffs(f,a,x,0)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(0, 0, b + a, 0, 0, d + c,0)
")
*}}}
