*{{{ HypNumSimplify_1 :
#include- hyperform.h
*
symbol ep,n1;
symbols x,y,z;
cfunction num;
*
local F = num(x + y)
;
*
.sort
*
#call HypNumSimplify(num,n1)
*
.sort
*
local diff = 
  F
  -
  (
    num(x + y)
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
*{{{ HypNumSimplify_2 :
#include- hyperform.h
*
symbol ep,n1;
symbols x,y,z;
cfunction num;
*
local F = num(4)
;
*
.sort
*
#call HypNumSimplify(num,n1)
*
.sort
*
local diff = 
  F
  -
  (
    4
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
*{{{ HypNumSimplify_3 :
#include- hyperform.h
*
symbol ep,n1;
symbols x,y,z;
cfunction num;
*
local F = num(4 + ep)
;
*
.sort
*
#call HypNumSimplify(num,n1)
*
.sort
*
local diff = 
  F
  -
  (
    num(4 + ep)
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
*{{{ HypNumSimplify_4 :
#include- hyperform.h
*
symbol ep,n1;
symbols x,y,z;
cfunction num;
*
local F = num(4*ep)
;
*
.sort
*
#call HypNumSimplify(num,n1)
*
.sort
*
local diff = 
  F
  -
  (
    num(4*ep)
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
