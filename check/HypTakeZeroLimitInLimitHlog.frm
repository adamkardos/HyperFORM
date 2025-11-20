*{{{ HypTakeZeroLimitInLimitHlog_1 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-1, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1) , HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_2 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_3 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1) , HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_4 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))^2
  - Linf(HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_5 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_6 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_7 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_8 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_9 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1-a, a), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_10 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1-a, a), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_11 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_12 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_13 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_14 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1-a, a), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_15 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1-a, a), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_16 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1, -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1-a, a), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_17 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1-a, a), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_18 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1-a, a), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_19 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1-a, a), HYPcrat(-1-a, a), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_20 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1, HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1-a, a), HYPcrat(-1, 1), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_21 :
#include- hyperform.h
symbols a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1-a, a), HYPcrat(-1-a, a), HYPcrat(-1-a, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_22 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_23 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_24 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_25 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_26 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_27 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_28 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_29 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_30 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))^2
  - Linf(HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_31 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_32 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_33 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_34 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_35 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_36 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_37 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), -1, -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_38 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_39 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_40 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-1-z, 1), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_41 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), -1, HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_42 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_43 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_44 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_45 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_46 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))*Linf(HYPcrat(0, 1), HYPcrat(-1, 1))
  - 2*Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_47 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))*Linf(HYPcrat(0, 1), HYPcrat(-1, 1))
  - 2*Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_48 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1, -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))*Linf(HYPcrat(-1, 1), HYPcrat(-1, 1))
  - Linf(HYPcrat(-1, 1))*Linf(HYPcrat(0, 1), HYPcrat(-1, 1))
  + Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_49 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_50 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_51 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z), -1)
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1))*Linf(HYPcrat(-1, 1), HYPcrat(-1, 1))
  - Linf(HYPcrat(-1, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
  - Linf(HYPcrat(0, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_52 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1, HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(0, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_53 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(-1, 1), HYPcrat(-1, 1), HYPcrat(-1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_54 :
#include- hyperform.h
symbols z, a;
cfunction Linf;
*
local F = 
  Linf(
    HYPrat(-a, 1+a), 
    HYPrat(-a, 1+a+z), 
    HYPrat(1, z*(1+a+z)), 
    HYPrat(-a*(1+z), 1+a+z), 
    HYPrat(1, z*(1+a+z)), 
    HYPrat(-a*(1+z), 1+a+z)
  )
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 3*Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(1, 1+a), HYPcrat(0, 1), HYPcrat(1, 1+a))
  - 2*Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(1, 1+a), HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(1, 1+a))
  + Linf(HYPcrat(0, 1), HYPcrat(0, 1), HYPcrat(1, 1+a), HYPcrat(0, 1), HYPcrat(1, 1+a))*Linf(HYPcrat(-a, 1+a))

")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_55 :
#include- hyperform.h
symbols z;
cfunction Linf;
*
local F = Linf(HYPrat(z+z^2, 1-z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(1, 1))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_56 :
#include- hyperform.h
symbols z;
symbol a;
cfunction Linf;
*
local F = Linf(HYPrat(z+z^2, a-z))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(1, a))
")
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog_57 :
#include- hyperform.h
symbols z;
symbol a;
cfunction Linf;
*
local F = Linf(HYPrat(z+z^2, a-z),HYPrat(-1-z,1))
;
.sort
#call HypCreateRatFuncArgsInVar(F,Linf,0,,HYPrat,HYPpoly,z,HYPaux,HYPn1,...,HYPn2)
#call HypTakeZeroLimitInLimitHlog(F,Linf,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,Linf,HYPn1,...,HYPn3)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPcrat(0, 1),HYPcrat(-1, 1))
")
*}}}
