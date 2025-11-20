*{{{ HypSimplifyHyperlogZeroLimit_1 :
#include- hyperform.h
symbol n1;
cfunction Lzero;
*
local F = Lzero(0) 
;
.sort
#call HypSimplifyHyperlogZeroLimit(Lzero,n1)
*
.sort
*
local diff =
  F
  -
  (
    Lzero(0)
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
*{{{ HypSimplifyHyperlogZeroLimit_2 :
#include- hyperform.h
symbol a;
symbol n1;
cfunction Lzero;
*
local F = Lzero(a) 
;
.sort
#call HypSimplifyHyperlogZeroLimit(Lzero,n1)
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
*{{{ HypSimplifyHyperlogZeroLimit_3 :
#include- hyperform.h
symbol a;
symbol n1;
cfunction Lzero;
*
local F = Lzero(a, 0) 
;
.sort
#call HypSimplifyHyperlogZeroLimit(Lzero,n1)
*
.sort
*
local diff =
  F
  -
  (
    Lzero(a, 0)
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
*{{{ HypSimplifyHyperlogZeroLimit_4 :
#include- hyperform.h
symbol a;
symbol n1;
cfunction Lzero;
*
local F = Lzero(0, a) 
;
.sort
#call HypSimplifyHyperlogZeroLimit(Lzero,n1)
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
*{{{ HypSimplifyHyperlogZeroLimit_5 :
#include- hyperform.h
symbol a, b;
symbol n1;
cfunction Lzero;
*
local F = Lzero(0, a, b) 
;
.sort
#call HypSimplifyHyperlogZeroLimit(Lzero,n1)
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
*{{{ HypSimplifyHyperlogZeroLimit_6 :
#include- hyperform.h
symbol a, b;
symbol n1;
cfunction rat;
cfunction Lzero;
*
local F = Lzero(0, rat(a, b))
;
.sort
#call HypSimplifyHyperlogZeroLimit(Lzero,n1)
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
