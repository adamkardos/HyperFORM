*{{{ HypDetermineMinAndMaxFunctionIndices_1 :
#include- hyperform.h
*
cfunction L;
cfunctions L1,...,L99;
cfunctions min, max;
local F = 
  + L(0)
;
.sort
#define MinInput "1"
#define MaxInput "99"
#define MinIndex ""
#define MaxIndex ""
#call HypDetermineMinAndMaxFunctionIndices(L,`MinInput',`MaxInput',MinIndex,MaxIndex,F)
.sort
local G = min(`MinIndex') + max(`MaxIndex');
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + min(99) 
  + max(0)
")
*}}}
*
*{{{ HypDetermineMinAndMaxFunctionIndices_2 :
#include- hyperform.h
*
cfunction L;
cfunctions L1,...,L99;
cfunctions min, max;
local F = 
  + L(0)
  + L1(0)
;
.sort
#define MinInput "1"
#define MaxInput "99"
#define MinIndex ""
#define MaxIndex ""
#call HypDetermineMinAndMaxFunctionIndices(L,`MinInput',`MaxInput',MinIndex,MaxIndex,F)
.sort
local G = min(`MinIndex') + max(`MaxIndex');
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + min(1) 
  + max(1)
")
*}}}
*
*{{{ HypDetermineMinAndMaxFunctionIndices_3 :
#include- hyperform.h
*
cfunction L;
cfunctions L1,...,L99;
cfunctions min, max;
local F = 
  + L(0)
  + L2(0)
;
.sort
#define MinInput "1"
#define MaxInput "99"
#define MinIndex ""
#define MaxIndex ""
#call HypDetermineMinAndMaxFunctionIndices(L,`MinInput',`MaxInput',MinIndex,MaxIndex,F)
.sort
local G = min(`MinIndex') + max(`MaxIndex');
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + min(2) 
  + max(2)
")
*}}}
*
*{{{ HypDetermineMinAndMaxFunctionIndices_4 :
#include- hyperform.h
*
cfunction L;
cfunctions L1,...,L99;
cfunctions min, max;
local F = 
  + L(0)
  + L2(0)
  + L3(0)
;
.sort
#define MinInput "1"
#define MaxInput "99"
#define MinIndex ""
#define MaxIndex ""
#call HypDetermineMinAndMaxFunctionIndices(L,`MinInput',`MaxInput',MinIndex,MaxIndex,F)
.sort
local G = min(`MinIndex') + max(`MaxIndex');
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + min(2) 
  + max(3)
")
*}}}
*
*{{{ HypDetermineMinAndMaxFunctionIndices_5 :
#include- hyperform.h
*
cfunction L;
cfunctions L1,...,L99;
cfunctions min, max;
local F = 
  + L(0)
  + L2(0)
  + L3(0)
  + L4(0)
;
.sort
#define MinInput "1"
#define MaxInput "99"
#define MinIndex ""
#define MaxIndex ""
#call HypDetermineMinAndMaxFunctionIndices(L,`MinInput',`MaxInput',MinIndex,MaxIndex,F)
.sort
local G = min(`MinIndex') + max(`MaxIndex');
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + min(2) 
  + max(4)
")
*}}}
*
*{{{ HypDetermineMinAndMaxFunctionIndices_6 :
#include- hyperform.h
*
cfunction L;
cfunctions L1,...,L99;
cfunctions min, max;
local F = 
  + L(0)
  + L2(0)
  + L4(0)
;
.sort
#define MinInput "1"
#define MaxInput "99"
#define MinIndex ""
#define MaxIndex ""
#call HypDetermineMinAndMaxFunctionIndices(L,`MinInput',`MaxInput',MinIndex,MaxIndex,F)
.sort
local G = min(`MinIndex') + max(`MaxIndex');
print +s;
.end
assert succeeded?
assert result("G") =~ expr("
  + min(2) 
  + max(4)
")
*}}}
