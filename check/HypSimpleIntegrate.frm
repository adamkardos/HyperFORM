*{{{ HypSimpleIntegrate_1 :
#include- hyperform.h
*
symbol z;
symbols a, b;
cfunctions L, den, rat;
*
local F = 
  + den(0)
;
*
#call HypSimpleIntegrate(den,L,rat,0,,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0)
")
*}}}
*
*{{{ HypSimpleIntegrate_2 :
#include- hyperform.h
*
symbol z;
symbols a, b;
cfunctions L, den, rat;
*
local F = 
  + den(0)*L(a)
;
*
#call HypSimpleIntegrate(den,L,rat,0,,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0, a)
")
*}}}
*
*{{{ HypSimpleIntegrate_3 :
#include- hyperform.h
*
symbol z;
symbols a, b;
cfunctions L, den, rat;
*
local F = 
  + den(a)*L(b)
;
*
#call HypSimpleIntegrate(den,L,rat,0,,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b)
")
*}}}
*
*{{{ HypSimpleIntegrate_4 :
#include- hyperform.h
*
symbol z;
symbols a, b, c;
cfunctions L, den, rat;
*
local F = 
  + den(a)*L(b, c)
;
*
#call HypSimpleIntegrate(den,L,rat,0,,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(a, b, c)
")
*}}}
*
*{{{ HypSimpleIntegrate_5 :
#include- hyperform.h
*
symbol z;
symbols a, b;
cfunctions L, den, rat;
*
local F = 
  + den(a, b)
;
*
#call HypSimpleIntegrate(den,L,rat,0,,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(a, b))
")
*}}}
*
*{{{ HypSimpleIntegrate_6 :
#include- hyperform.h
*
symbol z;
symbols a, b;
cfunctions L, den, rat;
*
local F = 
  + den(0)*L(rat(a, b))
;
*
#call HypSimpleIntegrate(den,L,rat,0,,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(0, rat(a, b))
")
*}}}
*
*{{{ HypSimpleIntegrate_7 :
#include- hyperform.h
*
symbol z;
symbols a, b, c, d;
cfunctions L, den, rat;
*
local F = 
  + den(c, d)*L(rat(a, b))
;
*
#call HypSimpleIntegrate(den,L,rat,0,,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(c, d), rat(a, b))
")
*}}}
*
*{{{ HypSimpleIntegrate_8 :
#include- hyperform.h
*
symbol z;
symbols a, b, c, d, e, f;
cfunctions L, den, rat;
*
local F = 
  + den(e, f)*L(rat(c, d), rat(a, b))
;
*
#call HypSimpleIntegrate(den,L,rat,0,,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + L(rat(e, f), rat(c, d), rat(a, b))
")
*}}}
*
*{{{ HypSimpleIntegrate_9 :
#include- hyperform.h
*
symbol z;
symbols a, b;
cfunction dz;
cfunctions L, den, rat;
*
local F = 
  + den(0)*dz
  + a
;
*
#call HypSimpleIntegrate(den,L,rat,1,dz,0,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + a
  + dz*L(0)
")
*}}}
*
*{{{ HypSimpleIntegrate_10 :
#include- hyperform.h
*
symbol z;
symbols a, b;
cfunction dz;
cfunctions L, den, rat;
*
local F = 
  + den(0)*dz
  + a
;
*
#call HypSimpleIntegrate(den,L,rat,1,dz,1,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + a
  + L(0)
")
*}}}
*
*{{{ HypSimpleIntegrate_11 :
#include- hyperform.h
*
symbol z;
symbols a, b;
cfunction dz;
cfunctions L, den, rat;
*
local F = 
  + a + b
  + den(0)*L(a)*dz
;
*
#call HypSimpleIntegrate(den,L,rat,1,dz,1,HYPn1,HYPn2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + b + a
  + L(0, a)
")
*}}}
