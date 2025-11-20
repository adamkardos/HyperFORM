*{{{ HypExpandGamma_1 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
cfunctions Gamma,invGamma;
symbol EulerG;
*
local F = 
  + Gamma(0, 1)
;
.sort
*
#call HypExpandGamma(Gamma,invGamma,ep,n1,6)
*
.sort
*
multiply replace_(HYPEulerGamma,EulerG,HYPzeta2,z2,HYPzeta3,z3,HYPzeta5,z5,HYPzeta7,z7);
*
.sort
local Diff = 
  F
  -
  (
    ep^5*
    (
      EulerG*(24192*z5+20160*z2*z3)+6720*z3^2+6720*EulerG^3*z3
      +
      13176*z2^3+13608*EulerG^2*z2^2+2520*EulerG^4*z2+168*EulerG^6
    )/120960
    -ep^4*
    (
      288*z5+240*z2*z3+240*EulerG^2*z3+324*EulerG*z2^2
      +
      120*EulerG^3*z2+12*EulerG^5
    )/1440
    +
    ep^3*(160*EulerG*z3+108*z2^2+120*EulerG^2*z2+20*EulerG^4)/480
    -ep^2*(4*z3+6*EulerG*z2+2*EulerG^3)/12
    +ep*(6*z2+6*EulerG^2)/12
    +1/ep
    -EulerG
    + HYPGammaExpand(ep^6)*ep^6
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
*
*{{{ HypExpandGamma_2 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
symbol EulerG;
cfunctions Gamma,invGamma;
*
local F = 
  + Gamma(0, 2)
;
.sort
*
#call HypExpandGamma(Gamma,invGamma,ep,n1,6)
*
.sort
*
multiply replace_(HYPEulerGamma,EulerG,HYPzeta2,z2,HYPzeta3,z3,HYPzeta5,z5,HYPzeta7,z7);
*
.sort
local Diff = 
  F
  -
  (
    ep^5*
    (
      EulerG*(24192*z5+20160*z2*z3)+6720*z3^2+6720*EulerG^3*z3
      +
      13176*z2^3+13608*EulerG^2*z2^2+2520*EulerG^4*z2+168*EulerG^6
    )/3780
    -
    ep^4*
    (
      288*z5+240*z2*z3+240*EulerG^2*z3+324*EulerG*z2^2
      +
      120*EulerG^3*z2+12*EulerG^5
    )/90
    +
    ep^3*(160*EulerG*z3+108*z2^2+120*EulerG^2*z2+20*EulerG^4)/60
    -
    ep^2*(4*z3+6*EulerG*z2+2*EulerG^3)/3
    +
    ep*(6*z2+6*EulerG^2)/6
    +
    1/(2*ep)
    -
    EulerG
    + HYPGammaExpand(ep^6)*ep^6
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
*
*{{{ HypExpandGamma_3 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbol EulerG;
symbols z2,z3,z5,z7,z9;
cfunctions Gamma,invGamma;
*
local F = 
  + Gamma(0, -2)
;
.sort
*
#call HypExpandGamma(Gamma,invGamma,ep,n1,6)
*
multiply replace_(HYPEulerGamma,EulerG,HYPzeta2,z2,HYPzeta3,z3,HYPzeta5,z5,HYPzeta7,z7);
*
.sort
local Diff = 
  F
  -
  (
    -
    ep^5*
    (
      EulerG*(24192*z5+20160*z2*z3)+6720*z3^2+6720*EulerG^3*z3+13176*z2^3
      +
      13608*EulerG^2*z2^2+2520*EulerG^4*z2+168*EulerG^6
    )/3780
    -
    ep^4*
    (
      288*z5+240*z2*z3+240*EulerG^2*z3+324*EulerG*z2^2+120*EulerG^3*z2+12*EulerG^5
    )/90
    -
    ep^3*
    (
      160*EulerG*z3+108*z2^2+120*EulerG^2*z2+20*EulerG^4
    )/60
    -
    ep^2*
    (
      4*z3+6*EulerG*z2+2*EulerG^3
    )/3
    -
    ep*(6*z2+6*EulerG^2)/6
    -
    1/(2*ep)
    -
    EulerG
    + HYPGammaExpand(ep^6)*ep^6
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
*
*{{{ HypExpandGamma_4 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
symbol EulerG;
cfunctions Gamma,invGamma;
*
local F = 
  + invGamma(0, 1)
;
.sort
*
#call HypExpandGamma(Gamma,invGamma,ep,n1,8)
*
multiply replace_(HYPEulerGamma,EulerG,HYPzeta2,z2,HYPzeta3,z3,HYPzeta5,z5,HYPzeta7,z7);
*
.sort
local Diff = 
  F
  -
  (
    ep^7*
    (
      EulerG*(24192*z5-20160*z2*z3)+6720*z3^2+6720*EulerG^3*z3-1080*z2^3
      +
      1512*EulerG^2*z2^2-2520*EulerG^4*z2+168*EulerG^6
    )/120960
  +
  ep^6*
  (
    288*z5-240*z2*z3+240*EulerG^2*z3+36*EulerG*z2^2-120*EulerG^3*z2+12*EulerG^5
  )/1440
  +
  ep^5*(480*EulerG*z3+36*z2^2-360*EulerG^2*z2+60*EulerG^4)/1440
  +
  ep^4*(4*z3-6*EulerG*z2+2*EulerG^3)/12
  +
  ep^3*(6*EulerG^2-6*z2)/12
  +
  EulerG*ep^2
  +
  ep
  + HYPinvGammaExpand(ep^8)*ep^8
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
*
*{{{ HypExpandGamma_5 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
symbol EulerG;
cfunctions Gamma,invGamma;
*
local F = 
  + invGamma(0, 2)
;
.sort
*
#call HypExpandGamma(Gamma,invGamma,ep,n1,8)
*
multiply replace_(HYPEulerGamma,EulerG,HYPzeta2,z2,HYPzeta3,z3,HYPzeta5,z5,HYPzeta7,z7);
*
.sort
local Diff = 
  F
  -
  (
    ep^7*
    (
      EulerG*(24192*z5-20160*z2*z3)+6720*z3^2+6720*EulerG^3*z3-1080*z2^3
      +
      1512*EulerG^2*z2^2-2520*EulerG^4*z2+168*EulerG^6
    )/945
    +
    ep^6*
    (
      576*z5-480*z2*z3+480*EulerG^2*z3+72*EulerG*z2^2-240*EulerG^3*z2+24*EulerG^5
    )/45
    +
    ep^5*
    (
      480*EulerG*z3+36*z2^2-360*EulerG^2*z2+60*EulerG^4
    )/45
    +
    ep^4*(16*z3-24*EulerG*z2+8*EulerG^3)/3
    +ep^3*(12*EulerG^2-12*z2)/3
    +
    4*EulerG*ep^2
    +
    2*ep
    + HYPinvGammaExpand(ep^8)*ep^8
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
*
*{{{ HypExpandGamma_6 :
#include- hyperform.h
*
symbol ep;
symbols n1;
symbols z2,z3,z5,z7,z9;
symbol EulerG;
cfunctions Gamma,invGamma;
*
local F = 
  + invGamma(0, -2)
;
.sort
*
#call HypExpandGamma(Gamma,invGamma,ep,n1,8)
*
multiply replace_(HYPEulerGamma,EulerG,HYPzeta2,z2,HYPzeta3,z3,HYPzeta5,z5,HYPzeta7,z7);
*
.sort
local Diff = 
  F
  -
  (
    -
    ep^7*
    (
      EulerG*(24192*z5-20160*z2*z3)+6720*z3^2+6720*EulerG^3*z3-1080*z2^3
      +
      1512*EulerG^2*z2^2-2520*EulerG^4*z2+168*EulerG^6
    )/945
    +
    ep^6*
    (
      576*z5-480*z2*z3+480*EulerG^2*z3+72*EulerG*z2^2-240*EulerG^3*z2+24*EulerG^5
    )/45
    -
    ep^5*
    (
      480*EulerG*z3+36*z2^2-360*EulerG^2*z2+60*EulerG^4
    )/45
    +
    ep^4*(16*z3-24*EulerG*z2+8*EulerG^3)/3
    -
    ep^3*(12*EulerG^2-12*z2)/3
    +
    4*EulerG*ep^2
    -
    2*ep
    + HYPinvGammaExpand(ep^8)*ep^8
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("Diff") =~ expr("
  0
")
*}}}
