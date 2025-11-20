*{{{ HypSimplifyCompositeDenFuncs_1 :
#include- hyperform.h
symbols a,b;
symbols n1,n2;
cfunction num,den,rat;
*
local F = den(rat(a,b)) 
;
.sort
#call HypSimplifyCompositeDenFuncs(den,num,rat,num,den,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    den(a)*num(b)
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
*{{{ HypSimplifyCompositeDenFuncs_2 :
#include- hyperform.h
symbols a,b;
symbols n1,n2;
cfunction num,den,rat;
*
local F = den(num(a)*den(b)) 
;
.sort
#call HypSimplifyCompositeDenFuncs(den,num,rat,num,den,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    den(a)*num(b)
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
*{{{ HypSimplifyCompositeDenFuncs_3 :
#include- hyperform.h
symbols a,b;
symbols n1,n2;
cfunction num,den,rat,argnum,argden;
*
local F = den(argnum(a)*argden(b)) 
;
.sort
#call HypSimplifyCompositeDenFuncs(den,num,rat,argnum,argden,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    den(a)*num(b)
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
