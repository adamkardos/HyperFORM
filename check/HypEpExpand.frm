*{{{ HypEpExpand_1 :
#include- hyperform.h
*
#redefine HYPMAXEP "0"
*
local F = 
  1
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    1
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
*{{{ HypEpExpand_2 :
#include- hyperform.h
*
#redefine HYPMAXEP "0"
*
local F = 
  HYPep
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    0
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
*{{{ HypEpExpand_3 :
#include- hyperform.h
*
#redefine HYPMAXEP "0"
*
local F = 
  1/HYPep
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    HYPratep(1,HYPep) 
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
*{{{ HypEpExpand_4 :
#include- hyperform.h
*
#redefine HYPMAXEP "0"
*
local F = 
  HYPnumep(HYPep)/HYPep
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    1
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
*{{{ HypEpExpand_5 :
#include- hyperform.h
*
#redefine HYPMAXEP "0"
*
local F = 
  HYPnumep(1 + 2*HYPep + 3*HYPep^2)/HYPep
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    HYPratep(1 + 2*HYPep,HYPep)
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
*{{{ HypEpExpand_6 :
#include- hyperform.h
*
#redefine HYPMAXEP "1"
*
local F = 
  HYPdenep(1 - HYPep)
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    HYPratep(1 + HYPep,1)
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
*{{{ HypEpExpand_7 :
#include- hyperform.h
*
#redefine HYPMAXEP "2"
*
local F = 
  HYPdenep(1 - HYPep + 2*HYPep^2)
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    HYPratep(1 + HYPep - HYPep^2,1)
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
*{{{ HypEpExpand_8 :
#include- hyperform.h
*
#redefine HYPMAXEP "3"
*
local F = 
  HYPdenep(1 - HYPep + 2*HYPep^2 - 4*HYPep^3)
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    HYPratep(1 + HYPep - HYPep^2 + HYPep^3,1)
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
*{{{ HypEpExpand_9 :
#include- hyperform.h
*
#redefine HYPMAXEP "3"
*
local F = 
  HYPdenep(1 - HYPep + 2*HYPep^2 - 3*HYPep^3)
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    HYPratep(1 + HYPep - HYPep^2,1)
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
*{{{ HypEpExpand_10 :
#include- hyperform.h
*
#redefine HYPMAXEP "4"
*
local F = 
  HYPdenep(1 - HYPep + 2*HYPep^2 - 3*HYPep^3)
;
*
.sort
#call HypEpExpand()
.sort
local diff =
  F
  -
  (
    HYPratep(1 + HYPep - HYPep^2 + 5*HYPep^4,1)
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
