*{{{ HypCheckForZeroCoeffs_1 :
#include- hyperform.h
*
symbols a,b,c,d,z;
symbols x1,x2,x3;
cfunctions Linf;
*
local F = 
  + HYPnum(z)*HYPnum(x1+x2)*HYPden(z*(x1+x2))*Linf(-a)
  + Linf(-b) - HYPnum(z)*HYPnum(x1+x2)*HYPden(z*(x1+x2))*Linf(-b)
  + (HYPnum(x1) - HYPnum(x1*x2*z)*HYPden(x2*z))*Linf(-c)
;
*
.sort
*
#call HypCheckForZeroCoeffs(F,Linf,HYPtempCount,z,z,x1,x2,x3)
.sort
local diff =
  F
  -
  (
    HYPden(z*x2 + z*x1)*HYPnum(z)*HYPnum(x2 + x1)*Linf( - a)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
