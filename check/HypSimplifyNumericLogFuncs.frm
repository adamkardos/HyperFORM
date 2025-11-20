*{{{ HypSimplifyNumericLogFuncs_1 :
#include- hyperform.h
cfunction log;
*
local F = log(1) 
;
.sort
#call HypSimplifyNumericLogFuncs(log)
*
.sort
*
local diff =
  F
  -
  (
    0
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
*{{{ HypSimplifyNumericLogFuncs_2 :
#include- hyperform.h
cfunction log;
*
local F = log(2) 
;
.sort
#call HypSimplifyNumericLogFuncs(log)
*
.sort
*
local diff =
  F
  -
  (
    log(2) 
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
*{{{ HypSimplifyNumericLogFuncs_3 :
#include- hyperform.h
symbol a;
cfunction log;
*
local F = log(a) 
;
.sort
#call HypSimplifyNumericLogFuncs(log)
*
.sort
*
local diff =
  F
  -
  (
    log(a) 
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
*{{{ HypSimplifyNumericLogFuncs_4 :
#include- hyperform.h
symbol a;
cfunction log;
*
local F = log(2*a) 
;
.sort
#call HypSimplifyNumericLogFuncs(log)
*
.sort
*
local diff =
  F
  -
  (
    log(2*a) 
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
