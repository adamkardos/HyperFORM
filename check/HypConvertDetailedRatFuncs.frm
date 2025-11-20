*{{{ HypConvertDetailedRatFuncs_1 :
#include- hyperform.h
symbol z;
symbols n1,n2,n3;
symbols a, b, c, d, e, f;
cfunctions L,rat,poly;
*
local F1 = 
  + L(
       rat(-1, 2)
    )
  + L(
       rat(a, b),
       rat(poly(c), poly(d))
    )
  + L(
       rat(a, b),
       rat(poly(c), poly(d)),
       rat(poly(c,e), poly(d,f))
    )
;
*
local F2 = 
  + L(
       rat(-2, 3)
    )
  + L(
       rat(c, d),
       rat(poly(c,e), poly(d,f))
    )
  + L(
       rat(a, b),
       rat(poly(a,c), poly(b,d)),
       rat(poly(a,c,e), poly(b,d,f))
    )
;
*
local F3 = 
  + L(
       rat(-2, 3)
    )
  + L(
       rat(c, d),
       rat(poly(c,e), poly(d,f))
    )
  + L(
       rat(a, b),
       rat(poly(a,c), poly(b,d)),
       rat(poly(a,c,e), poly(b,d,f))
    )
;
.sort
#call HypConvertDetailedRatFuncs(L,rat,poly,z,n1,n2,n3,F1,F2)
.sort
print +s;
.end
assert succeeded?
assert result("F1") =~ expr("
  + L(-1/2)
  + L( 
       rat(a,b),
       rat(c,d)
    )
  + L( 
       rat(a,b),
       rat(c,d),
       rat(c+z*e,d+z*f)
    )
")
assert result("F2") =~ expr("
  + L(-2/3)
  + L( 
       rat(a,b),
       rat(a+z*c,b+z*d),
       rat(a+z*c+z^2*e,b+z*d+z^2*f)
    )
  + L( 
       rat(c,d),
       rat(c+z*e,d+z*f)
    )
")
assert result("F3") =~ expr("
  + L(
       rat(a, b),
       rat(poly(a,c), poly(b,d)),
       rat(poly(a,c,e), poly(b,d,f))
    )
  + L(
       rat(c, d),
       rat(poly(c,e), poly(d,f))
    )
  + L(
       rat(-2, 3)
    )
")
*}}}
*
*{{{ HypConvertDetailedRatFuncs_2 :
#include- hyperform.h
symbol z;
symbols n1,n2,n3;
symbols a, b, c, d, e, f, g, h;
cfunctions L,rat,poly;
*
local F1 = 
  + L(
       rat(poly(a,c,e,g), poly(b,d,f,h))
    )
;
.sort
#call HypConvertDetailedRatFuncs(L,rat,poly,z,n1,n2,n3,F1)
.sort
print +s;
.end
assert succeeded?
assert result("F1") =~ expr("
  + L( 
       rat(a+z*c+z^2*e+z^3*g,b+z*d+z^2*f+z^3*h)
    )
")
*}}}
