*{{{ HypSimplifyNumericVarDepLogFuncs_1 :
#include- hyperform.h
symbols a,n1,n2;
cfunction logx;
*
local F = logx(a) 
;
.sort
#call HypSimplifyNumericVarDepLogFuncs(logx,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    logx(a)
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
*{{{ HypSimplifyNumericVarDepLogFuncs_2 :
#include- hyperform.h
symbols a,b,n1,n2;
cfunction logx;
*
local F = logx(a,b) 
;
.sort
#call HypSimplifyNumericVarDepLogFuncs(logx,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    logx(a,b)
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
*{{{ HypSimplifyNumericVarDepLogFuncs_3 :
#include- hyperform.h
symbols a,n1,n2;
cfunction logx;
*
local F = logx(a,2) 
;
.sort
#call HypSimplifyNumericVarDepLogFuncs(logx,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    logx(a/2)
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
*{{{ HypSimplifyNumericVarDepLogFuncs_4 :
#include- hyperform.h
symbols n1,n2;
cfunction logx;
*
local F = logx(2) 
;
.sort
#call HypSimplifyNumericVarDepLogFuncs(logx,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    logx(2)
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
