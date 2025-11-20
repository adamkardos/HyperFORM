*{{{ HypLimitsToHlogs_1 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
local F = Linf(-1-z, -1);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, -1)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_1 : 
*
*{{{ HypLimitsToHlogs_2 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
local F = Linf(-z);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0)
  + Linf(-1)
")
*}}} HypLimitsToHlogs_2 : 
*
*{{{ HypLimitsToHlogs_3 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
local F = Linf(0, -z);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0)*Linf(-1)
  + HYPLx(0, 0)
  + Linf(0, -1)
")
*}}} HypLimitsToHlogs_3 : 
*
*{{{ HypLimitsToHlogs_4 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
local F = Linf(-1-z, -z);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0)*Linf(-1)
  + HYPLx(0, -1)
  + Linf(-1)^2
  - Linf(0, -1)
")
*}}} HypLimitsToHlogs_4 : 
*
*{{{ HypLimitsToHlogs_5 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
local F = Linf(-1-z);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  + Linf(-1)
")
*}}} HypLimitsToHlogs_5 : 
*
*{{{ HypLimitsToHlogs_6 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)
  + Linf(HYPrat(-1-a, a))
")
*}}} HypLimitsToHlogs_6 : 
*
*{{{ HypLimitsToHlogs_7 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a, a))
  + HYPLx(-1-a, -1-a)
  + Linf(0, HYPrat(-1-a, a))
")
*}}} HypLimitsToHlogs_7 : 
*
*{{{ HypLimitsToHlogs_8 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(-1)
  - HYPLx(-1)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1)*Linf(-1)
  + HYPLx(-1, -1-a)
  + Linf(-1, HYPrat(-1-a, a))
")
*}}} HypLimitsToHlogs_8 : 
*
*{{{ HypLimitsToHlogs_9 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1)*Linf(-1)
  - HYPLx(-1, -1-a)
  + Linf(HYPrat(-1-a,a), -1)
")
*}}} HypLimitsToHlogs_9 : 
*
*{{{ HypLimitsToHlogs_10 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)
  + Linf(HYPrat(-1-a,a), HYPrat(-1-a,a))
")
*}}} HypLimitsToHlogs_10 : 
*
*{{{ HypLimitsToHlogs_11 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(0, HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1-a, -1-a, -1-a)
  + Linf(0, 0, HYPrat(-1-a,a))
")
*}}} HypLimitsToHlogs_11 : 
*
*{{{ HypLimitsToHlogs_12 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(0, -1)
  - HYPLx(-1)*Linf(0, HYPrat(-1-a,a))
  + HYPLx(-1)*Linf(0, -1)
  + HYPLx(-1, -1-a)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1, -1-a, -1-a)
  + Linf(0, -1, HYPrat(-1-a,a))
")
*}}} HypLimitsToHlogs_12 : 
*
*{{{ HypLimitsToHlogs_13 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(-1, -1)
  - HYPLx(-1)*Linf(-1, HYPrat(-1-a,a))
  + HYPLx(-1)*Linf(-1, -1)
  + HYPLx(-1, -1-a)*Linf(-1)
  + HYPLx(-1, -1)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1 , -1, -1-a)
  + Linf(-1, -1, HYPrat(-1-a,a))
")
*}}} HypLimitsToHlogs_13 : 
*
*{{{ HypLimitsToHlogs_14 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a), -1)  
  + HYPLx(-1-a)*Linf(0, -1) 
  - HYPLx(-1-a, -1)*Linf(HYPrat(-1-a,a)) 
  + HYPLx(-1-a, -1)*Linf(-1)
  + HYPLx(-1-a, -1, -1-a)
  + HYPLx(-1)*Linf(0, HYPrat(-1-a,a)) 
  - HYPLx(-1)*Linf(0, -1) 
  - HYPLx(-1, -1-a)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1, -1-a, -1-a)
  + Linf(0, HYPrat(-1-a,a), -1)
")
*}}} HypLimitsToHlogs_14 : 
*
*{{{ HypLimitsToHlogs_15 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(HYPrat(-1-a,a), -1) 
  + HYPLx(-1)*Linf(-1, HYPrat(-1-a,a))
  - HYPLx(-1, -1-a)*Linf(-1)
  - 2*HYPLx(-1, -1)*Linf(HYPrat(-1-a,a))
  + 2*HYPLx(-1, -1)*Linf(-1)
  + 2*HYPLx(-1, -1, -1-a)
  + Linf(-1, HYPrat(-1-a,a), -1) 
")
*}}} HypLimitsToHlogs_15 : 
*
*{{{ HypLimitsToHlogs_16 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1, -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1)*Linf(HYPrat(-1-a,a),-1)
  - HYPLx(-1)*Linf(-1,-1)
  + HYPLx(-1,-1)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1,-1)*Linf(-1)
  - HYPLx(-1,-1,-1-a)
  + Linf(HYPrat(-1-a,a), -1, -1)
")
*}}} HypLimitsToHlogs_16 : 
*
*{{{ HypLimitsToHlogs_17 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a), HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1-a, -1-a, -1-a)
  + Linf(0, HYPrat(-1-a,a), HYPrat(-1-a,a))
")
*}}} HypLimitsToHlogs_17 : 
*
*{{{ HypLimitsToHlogs_18 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(-1, HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)*Linf(-1) 
  + HYPLx(-1-a, -1)*Linf(HYPrat(-1-a,a)) 
  - HYPLx(-1-a, -1)*Linf(-1)
  - HYPLx(-1-a, -1, -1-a) 
  - HYPLx(-1)*Linf(HYPrat(-1-a,a), HYPrat(-1-a,a)) 
  + HYPLx(-1)*Linf(-1, HYPrat(-1-a,a)) 
  + HYPLx(-1, -1-a)*Linf(HYPrat(-1-a,a)) 
  - HYPLx(-1, -1-a)*Linf(-1)
  - HYPLx(-1, -1-a, -1-a)
  - HYPLx(-1, -1)*Linf(HYPrat(-1-a,a)) 
  + HYPLx(-1, -1)*Linf(-1)
  + HYPLx(-1, -1, -1-a)
  + Linf(-1, HYPrat(-1-a,a), HYPrat(-1-a,a))
")
*}}} HypLimitsToHlogs_18 : 
*
*{{{ HypLimitsToHlogs_19 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1)*Linf(HYPrat(-1-a,a), HYPrat(-1-a,a)) 
  - HYPLx(-1)*Linf(HYPrat(-1-a,a), -1) 
  - HYPLx(-1, -1-a)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1, -1-a, -1-a)
  - HYPLx(-1, -1)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1, -1)*Linf(-1)
  + HYPLx(-1, -1, -1-a)
  + Linf(HYPrat(-1-a,a), HYPrat(-1-a,a), -1)
")
*}}} HypLimitsToHlogs_19 : 
*
*{{{ HypLimitsToHlogs_20 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a), -1)
  - HYPLx(-1-a, -1)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1-a, -1)*Linf(-1)
  + HYPLx(-1-a, -1, -1-a)
  + HYPLx(-1)*Linf(HYPrat(-1-a,a), -1)
  - HYPLx(-1)*Linf(-1, HYPrat(-1-a,a))
  + HYPLx(-1, -1-a)*Linf(-1)
  + 2*HYPLx(-1, -1)*Linf(HYPrat(-1-a,a))
  - 2*HYPLx(-1, -1)*Linf(-1)
  - 2*HYPLx(-1, -1, -1-a)
  + Linf(HYPrat(-1-a,a), -1, HYPrat(-1-a,a))
")
*}}} HypLimitsToHlogs_20 : 
*
*{{{ HypLimitsToHlogs_21 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a), HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1-a, -1-a, -1-a)
  + Linf(HYPrat(-1-a,a), HYPrat(-1-a,a), HYPrat(-1-a,a))
")
*}}} HypLimitsToHlogs_21 : 
*
*{{{ HypLimitsToHlogs_22a :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  + Linf(-1)
")
*}}} HypLimitsToHlogs_22a : 
*
*{{{ HypLimitsToHlogs_22b :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  + Linf(-1)
")
*}}} HypLimitsToHlogs_22b : 
*
*{{{ HypLimitsToHlogs_23 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  + HYPLx( 0)
  + Linf(-1)
")
*}}} HypLimitsToHlogs_23 : 
*
*{{{ HypLimitsToHlogs_24a :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, -1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(-1, -1)
  + Linf(0, -1)
")
*}}} HypLimitsToHlogs_24a : 
*
*{{{ HypLimitsToHlogs_24b :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(-1, -1)
  + Linf(0, -1)
")
*}}} HypLimitsToHlogs_24b : 
*
*{{{ HypLimitsToHlogs_25a :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, -1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(0, -1)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_25a : 
*
*{{{ HypLimitsToHlogs_25b :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1, 1), HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(0, -1)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_25b : 
*
*{{{ HypLimitsToHlogs_25c :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(0, -1)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_25c : 
*
*{{{ HypLimitsToHlogs_25d :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1, 1), -1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(0, -1)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_25d : 
*
*{{{ HypLimitsToHlogs_26 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1-z, -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, -1)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_26 : 
*
*{{{ HypLimitsToHlogs_27 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1-z, -1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(-1, -1)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_27 : 
*
*{{{ HypLimitsToHlogs_28 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(-1, -1)
  - HYPLx(-1, 0)
  + HYPLx(0)*Linf(-1)
  - HYPLx(0, -1)
  + HYPLx(0, 0)
  + Linf(0, -1)
")
*}}} HypLimitsToHlogs_28 : 
*
*{{{ HypLimitsToHlogs_29 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(0)*Linf(-1)
  - HYPLx(0, -1)
  + HYPLx(0, 0)
  +  Linf(0, -1)
")
*}}} HypLimitsToHlogs_29 : 
*
*{{{ HypLimitsToHlogs_30 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0, -1)
  - HYPLx(0, 0)
  + Linf(-1)^2 
  - Linf(0, -1)
")
*}}} HypLimitsToHlogs_30 : 
*
*{{{ HypLimitsToHlogs_31 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)
  + HYPLx(-1, -1)
  - HYPLx(-1, 0)
  + HYPLx(0)*Linf(-1)
  - HYPLx(0, -1)
  + HYPLx(0, 0)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_31 : 
*
*{{{ HypLimitsToHlogs_32 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(0, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, -1, -1)
  + Linf(0, 0, -1)
")
*}}} HypLimitsToHlogs_32 : 
*
*{{{ HypLimitsToHlogs_33 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(0,-1)
  + HYPLx(0,-1)*Linf(-1)
  - HYPLx(0,-1,-1)
  + Linf(0, -1, -1)
")
*}}} HypLimitsToHlogs_33 : 
*
*{{{ HypLimitsToHlogs_34 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(-1)*Linf(0, -1)
  + HYPLx(-1, 0, -1)
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, -1, -1)
  + Linf(0, -1, -1)
")
*}}} HypLimitsToHlogs_34 : 
*
*{{{ HypLimitsToHlogs_35 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(0, -1)*Linf(-1)
  - HYPLx(0, 0, -1)
  + Linf(-1, -1, -1)
")
*}}} HypLimitsToHlogs_35 : 
*
*{{{ HypLimitsToHlogs_36 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, -1)*Linf(-1)
  + 2*HYPLx(0, 0, -1)
  + Linf(-1, -1, -1)
")
*}}} HypLimitsToHlogs_36 : 
*
*{{{ HypLimitsToHlogs_37 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), -1, -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, 0, -1)
  + Linf(-1, -1, -1)
")
*}}} HypLimitsToHlogs_37 : 
*
*{{{ HypLimitsToHlogs_38 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, -1, -1)
  + Linf(0, -1, -1)
")
*}}} HypLimitsToHlogs_38 : 
*
*{{{ HypLimitsToHlogs_39 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, 0, -1)
  - HYPLx(0, -1, -1)
  + HYPLx(0, 0, -1)
  + Linf(-1, -1, -1)
")
*}}} HypLimitsToHlogs_39 : 
*
*{{{ HypLimitsToHlogs_40 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-1-z, 1), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, -1, -1)
  + HYPLx(0, 0, -1)
  + Linf(-1, -1, -1)
")
*}}} HypLimitsToHlogs_40 : 
*
*{{{ HypLimitsToHlogs_41 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), -1, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(-1, 0, -1)
  + HYPLx(0, -1)*Linf(-1)
  - 2*HYPLx(0, 0, -1)
  + Linf(-1, -1, -1)
")
*}}} HypLimitsToHlogs_41 : 
*
*{{{ HypLimitsToHlogs_42 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, -1, -1)
  + Linf(-1, -1, -1)
")
*}}} HypLimitsToHlogs_42 : 
*
*{{{ HypLimitsToHlogs_43 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(0, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, -1, -1)
  + HYPLx(-1, -1, 0)
  - HYPLx(-1, 0)*Linf(-1)
  + HYPLx(-1, 0, -1)
  - HYPLx(-1, 0, 0)
  + HYPLx(0)*Linf(0, -1)
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  + HYPLx(0, 0)*Linf(-1)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
  + Linf(0, 0, -1)
")
*}}} HypLimitsToHlogs_43 : 
*
*{{{ HypLimitsToHlogs_44 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(0, -1)
  + HYPLx(0)*Linf(0, -1)
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  + HYPLx(0, 0)*Linf(-1)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
  + Linf(0, 0, -1)
")
*}}} HypLimitsToHlogs_44 : 
*
*{{{ HypLimitsToHlogs_45 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(0)*Linf(0, -1)
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, 0)*Linf(-1)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
  + Linf(0, 0, -1)
")
*}}} HypLimitsToHlogs_45 : 
*
*{{{ HypLimitsToHlogs_46 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)^2
  + 2*HYPLx(-1)*Linf(0, -1) 
  - HYPLx(-1, 0, -1)
  + HYPLx(-1, 0, 0)
  + HYPLx(0)*Linf(-1)^2
  - 2*HYPLx(0)*Linf(0, -1)
  + HYPLx(0, -1)*Linf(-1)
  - HYPLx(0, -1, -1)
  + HYPLx(0, -1, 0)
  - HYPLx(0, 0)*Linf(-1)
  + 2*HYPLx(0, 0, -1)
  - 2*HYPLx(0, 0, 0)
  + Linf(-1)*Linf(0, -1)
  - 2*Linf(0, 0, -1)
")
*}}} HypLimitsToHlogs_46 : 
*
*{{{ HypLimitsToHlogs_47 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0)*Linf(-1)^2
  - 2*HYPLx(0)*Linf(0, -1)
  + HYPLx(0, -1)*Linf(-1)
  - HYPLx(0, 0)*Linf(-1)
  + 2*HYPLx(0, 0, -1)
  - 2*HYPLx(0, 0, 0)
  + Linf(-1)*Linf(0, -1)
  - 2*Linf(0, 0, -1)
")
*}}} HypLimitsToHlogs_47 : 
*
*{{{ HypLimitsToHlogs_48 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1, -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0)*Linf(-1)^2
  + HYPLx(0)*Linf(-1, -1)
  + HYPLx(0)*Linf(0, -1)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
  + Linf(-1)*Linf(-1, -1) 
  - Linf(-1)*Linf(0, -1) 
  + Linf(0, 0, -1)
")
*}}} HypLimitsToHlogs_48 : 
*
*{{{ HypLimitsToHlogs_49 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, -1, -1)
  + HYPLx(-1, -1, 0)
  - HYPLx(-1, 0)*Linf(-1)
  + HYPLx(-1, 0, -1)
  - HYPLx(-1, 0, 0)
  + HYPLx(0)*Linf(-1, -1)
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  + HYPLx(0, 0)*Linf(-1)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
  + Linf(0, -1, -1)
")
*}}} HypLimitsToHlogs_49 : 
*
*{{{ HypLimitsToHlogs_50 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(0, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, 0)*Linf(-1)
  + HYPLx(-1, 0, -1)
  - HYPLx(-1, 0, 0)
  + HYPLx(0)*Linf(-1, -1)
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  + HYPLx(0, 0)*Linf(-1)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
  + Linf(0, -1, -1)
")
*}}} HypLimitsToHlogs_50 : 
*
*{{{ HypLimitsToHlogs_51 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0)*Linf(-1)^2
  - HYPLx(0)*Linf(-1, -1)
  - HYPLx(0)*Linf(0, -1)
  + HYPLx(0, -1)*Linf(-1)
  - HYPLx(0, -1, -1)
  + HYPLx(0, -1, 0)
  - HYPLx(0, 0)*Linf(-1)
  + 2*HYPLx(0, 0, -1)
  - 2*HYPLx(0, 0, 0)
  + Linf(-1)*Linf(-1, -1) 
  - Linf(-1, 0, -1) 
  - Linf(0, -1, -1)
")
*}}} HypLimitsToHlogs_51 : 
*
*{{{ HypLimitsToHlogs_52 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1)^2
  + HYPLx(-1)*Linf(0, -1)
  - HYPLx(-1, 0, -1)
  + HYPLx(-1, 0, 0)
  + HYPLx(0)*Linf(0, -1)
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, 0)*Linf(-1)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
  + Linf(-1, 0, -1)
")
*}}} HypLimitsToHlogs_52 : 
*
*{{{ HypLimitsToHlogs_53 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, -1, -1)
  + HYPLx(-1, -1, 0)
  - HYPLx(-1, 0)*Linf(-1)
  + HYPLx(-1, 0, -1)
  - HYPLx(-1, 0, 0)
  + HYPLx(0)*Linf(-1, -1)
  - HYPLx(0, -1)*Linf(-1)
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  + HYPLx(0, 0)*Linf(-1)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
  + Linf(-1, -1, -1)
")
*}}} HypLimitsToHlogs_53 : 
*
*{{{ HypLimitsToHlogs_54 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0)*Linf(-1)
  - HYPLx(0)*Linf(0)
  - HYPLx(0, 0)
  + Linf(-1)*Linf(0)
  - Linf(0, -1) 
")
*}}} HypLimitsToHlogs_54 : 
*
*{{{ HypLimitsToHlogs_55 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1)*Linf(-1)
  - HYPLx(-1)*Linf(0)
  - HYPLx(-1, -1)
  + Linf(-1)*Linf(0)
  - Linf(0, -1) 
")
*}}} HypLimitsToHlogs_55 : 
*
*{{{ HypLimitsToHlogs_56 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1-z, -1-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  -   HYPLx(-1)*Linf(-1)*Linf(0)
  +   HYPLx(-1)*Linf(-1, -1)
  +   HYPLx(-1)*Linf(0, -1)
  - 2*HYPLx(-1, -1)*Linf(-1)
  +   HYPLx(-1, -1)*Linf(0)
  + 2*HYPLx(-1, -1, -1)
  +   Linf(-1, -1)*Linf(0)
  -   Linf(-1, 0, -1)
  -   Linf(0, -1, -1)
")
*}}} HypLimitsToHlogs_56 : 
*
*{{{ HypLimitsToHlogs_57 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "1"
symbol a, z;
cfunction Linf;
local F = Linf(HYPrat(-1-a-z, a), 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1-a)*Linf(HYPrat(-1-a, a))
  - HYPLx(-1-a)*Linf(0)
  - HYPLx(-1-a, -1-a)
  + Linf(0)*Linf(HYPrat(-1-a, a))
  - Linf(0, HYPrat(-1-a, a))
")
*}}} HypLimitsToHlogs_57 : 
*
*{{{ HypLimitsToHlogs_58 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), 0, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(0, -1)
  + HYPLx(-1, -1)*Linf(-1)
  - HYPLx(-1, -1, -1)
  + Linf(-1, 0, -1)
")
*}}} HypLimitsToHlogs_58 : 
*
*{{{ HypLimitsToHlogs_59 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
local F = 
  + Linf(-1-z, -1)
  + Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  - HYPLx(0, -1)
  + Linf(-1)
  + Linf(-1, -1)
")
*}}} HypLimitsToHlogs_59 : 
*
*{{{ HypLimitsToHlogs_60 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
local F = 
  + Linf(-1-z, -1, -1, -1)
  + Linf(-1-z, -1, -1)
  + Linf(-1-z, -1)
  + Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  - HYPLx(0, -1)
  - HYPLx(0, 0, -1)
  - HYPLx(0, 0, 0, -1)
  + Linf(-1)
  + Linf(-1, -1)
  + Linf(-1, -1, -1)
  + Linf(-1, -1, -1, -1)
")
*}}} HypLimitsToHlogs_60 : 
*
*{{{ HypLimitsToHlogs_61 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = 
  + Linf(-1-z, -1, -1, -1)
  + Linf(-1-z, -1, -1)
  + Linf(-1-z, 0)
  + Linf(-1-z, -1)
  + Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  + HYPLx(-1)*Linf(-1)
  - HYPLx(-1)*Linf(0)
  - HYPLx(-1, -1)
  - HYPLx(0, -1)
  - HYPLx(0, 0, -1)
  - HYPLx(0, 0, 0, -1)
  + Linf(-1)
  + Linf(-1)*Linf(0)
  + Linf(-1, -1)
  + Linf(-1, -1, -1)
  + Linf(-1, -1, -1, -1)
  - Linf(0, -1) 
")
*}}} HypLimitsToHlogs_61 : 
*
*{{{ HypLimitsToHlogs_62 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
symbol z;
cfunction Linf;
local F = Linf(-1-z);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  + Linf(-1)
")
*}}} : 
*
*{{{ HypLimitsToHlogs_63 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
local F = Linf(-1-z, -1);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_64 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
local F = Linf(-z);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0)
")
*}}}
*
*{{{ HypLimitsToHlogs_65 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
local F = Linf(0, -z);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
  + HYPLx(0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_66 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
local F = Linf(-1-z, -z);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
  + HYPLx(0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_67 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)
  + Linf(HYPrat(-1-a, a))
")
*}}}
*
*{{{ HypLimitsToHlogs_68 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a, a))
  + HYPLx(-1-a, -1-a)
  + Linf(0, HYPrat(-1-a, a))
")
*}}}
*
*{{{ HypLimitsToHlogs_69 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1, -1-a)
  + Linf(-1, HYPrat(-1-a, a))
")
*}}}
*
*{{{ HypLimitsToHlogs_70 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1, -1-a)
  + Linf(HYPrat(-1-a,a), -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_71 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)
  + Linf(HYPrat(-1-a,a), HYPrat(-1-a,a))
")
*}}}
*
*{{{ HypLimitsToHlogs_72 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(0, HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1-a, -1-a, -1-a)
  + Linf(0, 0, HYPrat(-1-a,a))
")
*}}}
*
*{{{ HypLimitsToHlogs_73 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*z2
  + HYPLx(-1)*z2
  - HYPLx(-1)*Linf(0, HYPrat(-1-a,a))
  + HYPLx(-1, -1-a)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1, -1-a, -1-a)
  + Linf(0, -1, HYPrat(-1-a,a))
")
*}}}
*
*{{{ HypLimitsToHlogs_74 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(-1, HYPrat(-1-a,a))
  + HYPLx(-1, -1)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1 , -1, -1-a)
  + Linf(-1, -1, HYPrat(-1-a,a))
")
*}}}
*
*{{{ HypLimitsToHlogs_75 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1-a)*z2
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a), -1)  
  - HYPLx(-1-a, -1)*Linf(HYPrat(-1-a,a)) 
  + HYPLx(-1-a, -1, -1-a)
  - HYPLx(-1)*z2
  + HYPLx(-1)*Linf(0, HYPrat(-1-a,a)) 
  - HYPLx(-1, -1-a)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1, -1-a, -1-a)
  + Linf(0, HYPrat(-1-a,a), -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_76 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*Linf(HYPrat(-1-a,a), -1) 
  + HYPLx(-1)*Linf(-1, HYPrat(-1-a,a))
  - 2*HYPLx(-1, -1)*Linf(HYPrat(-1-a,a))
  + 2*HYPLx(-1, -1, -1-a)
  + Linf(-1, HYPrat(-1-a,a), -1) 
")
*}}}
*
*{{{ HypLimitsToHlogs_77 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1, -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1)*Linf(HYPrat(-1-a,a),-1)
  + HYPLx(-1,-1)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1,-1,-1-a)
  + Linf(HYPrat(-1-a,a), -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_78 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a), HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1-a, -1-a, -1-a)
  + Linf(0, HYPrat(-1-a,a), HYPrat(-1-a,a))
")
*}}}
*
*{{{ HypLimitsToHlogs_79 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(-1, HYPrat(-1-a,a))
  + HYPLx(-1-a, -1)*Linf(HYPrat(-1-a,a)) 
  - HYPLx(-1-a, -1, -1-a) 
  - HYPLx(-1)*Linf(HYPrat(-1-a,a), HYPrat(-1-a,a)) 
  + HYPLx(-1)*Linf(-1, HYPrat(-1-a,a)) 
  + HYPLx(-1, -1-a)*Linf(HYPrat(-1-a,a)) 
  - HYPLx(-1, -1-a, -1-a)
  - HYPLx(-1, -1)*Linf(HYPrat(-1-a,a)) 
  + HYPLx(-1, -1, -1-a)
  + Linf(-1, HYPrat(-1-a,a), HYPrat(-1-a,a))
")
*}}}
*
*{{{ HypLimitsToHlogs_80 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1)*Linf(HYPrat(-1-a,a), HYPrat(-1-a,a)) 
  - HYPLx(-1)*Linf(HYPrat(-1-a,a), -1) 
  - HYPLx(-1, -1-a)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1, -1-a, -1-a)
  - HYPLx(-1, -1)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1, -1, -1-a)
  + Linf(HYPrat(-1-a,a), HYPrat(-1-a,a), -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_81 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), -1, HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a), -1)
  - HYPLx(-1-a, -1)*Linf(HYPrat(-1-a,a))
  + HYPLx(-1-a, -1, -1-a)
  + HYPLx(-1)*Linf(HYPrat(-1-a,a), -1)
  - HYPLx(-1)*Linf(-1, HYPrat(-1-a,a))
  + 2*HYPLx(-1, -1)*Linf(HYPrat(-1-a,a))
  - 2*HYPLx(-1, -1, -1-a)
  + Linf(HYPrat(-1-a,a), -1, HYPrat(-1-a,a))
")
*}}}
*
*{{{ HypLimitsToHlogs_82 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol a, z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-a-z,a), HYPrat(-1-a-z,a), HYPrat(-1-a-z,a))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1-a)*Linf(HYPrat(-1-a,a), HYPrat(-1-a,a))
  + HYPLx(-1-a, -1-a)*Linf(HYPrat(-1-a,a))
  - HYPLx(-1-a, -1-a, -1-a)
  + Linf(HYPrat(-1-a,a), HYPrat(-1-a,a), HYPrat(-1-a,a))
")
*}}}
*
*{{{ HypLimitsToHlogs_83a :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
")
*}}}
*
*{{{ HypLimitsToHlogs_83b :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
")
*}}}
*
*{{{ HypLimitsToHlogs_84 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  + HYPLx( 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_85a :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, -1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
  + HYPLx(-1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_85b :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
  + HYPLx(-1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_86a :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, -1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_86b :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1, 1), HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_86c :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_86d :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1, 1), -1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_87 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1-z, -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_88 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1-z, -1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_89 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
  + HYPLx(-1, -1)
  - HYPLx(-1, 0)
  - HYPLx(0, -1)
  + HYPLx(0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_90 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2
  - HYPLx(0, -1)
  + HYPLx(0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_91 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
  + HYPLx(0, -1)
  - HYPLx(0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_92 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1, -1)
  - HYPLx(-1, 0)
  - HYPLx(0, -1)
  + HYPLx(0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_93 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*z2
  - HYPLx(-1, -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_94 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
  - HYPLx(-1)*z2
  - HYPLx(0,-1,-1)
")
*}}}
*
*{{{ HypLimitsToHlogs_95 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
  + HYPLx(-1)*z2
  + HYPLx(-1, 0, -1)
  + HYPLx(0, -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_96 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, 0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_97 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2*HYPLx(0, 0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_98 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), -1, -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(0, 0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_99 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
  - HYPLx(-1, -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_100 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1, 0, -1)
  - HYPLx(0, -1, -1)
  + HYPLx(0, 0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_101 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-1-z, 1), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0, -1, -1)
  + HYPLx(0, 0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_102 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), -1, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1, 0, -1)
  - 2*HYPLx(0, 0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_103 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), HYPrat(-1-z, 1), HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1, -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_104 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, 0, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*z2
  - HYPLx(-1, -1, -1)
  + HYPLx(-1, -1, 0)
  + HYPLx(-1, 0, -1)
  - HYPLx(-1, 0, 0)
  + HYPLx(0)*z2
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_105 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, -1, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)*z2
  + HYPLx(0)*z2
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_106 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, -1, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0)*z2
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_107 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2*HYPLx(-1)*z2
  - HYPLx(-1, 0, -1)
  + HYPLx(-1, 0, 0)
  - 2*HYPLx(0)*z2
  - HYPLx(0, -1, -1)
  + HYPLx(0, -1, 0)
  + 2*HYPLx(0, 0, -1)
  - 2*HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_108 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2*HYPLx(0)*z2
  + 2*HYPLx(0, 0, -1)
  - 2*HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_109 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1, -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0)*z2
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_110 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(0, HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
  - HYPLx(-1, -1, -1)
  + HYPLx(-1, -1, 0)
  + HYPLx(-1, 0, -1)
  - HYPLx(-1, 0, 0)
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_111 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(-1, HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
  - HYPLx(-1)*z2
  + HYPLx(-1, 0, -1)
  - HYPLx(-1, 0, 0)
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_112 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z), -1)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
  - HYPLx(0)*z2
  - HYPLx(0, -1, -1)
  + HYPLx(0, -1, 0)
  + 2*HYPLx(0, 0, -1)
  - 2*HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_113 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), -1, HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2*z3
  + HYPLx(-1)*z2
  - HYPLx(-1, 0, -1)
  + HYPLx(-1, 0, 0)
  + HYPLx(0)*z2
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_114 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, z), HYPrat(-1-z, z), HYPrat(-1-z, z))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1, -1, -1)
  + HYPLx(-1, -1, 0)
  + HYPLx(-1, 0, -1)
  - HYPLx(-1, 0, 0)
  + HYPLx(0, -1, -1)
  - HYPLx(0, -1, 0)
  - HYPLx(0, 0, -1)
  + HYPLx(0, 0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_115 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
  - HYPLx(0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_116 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
  - HYPLx(-1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_117 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1-z, -1-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  +   z3
  +   HYPLx(-1)*z2
  + 2*HYPLx(-1, -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_118 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "1"
symbol a, z;
cfunction Linf;
local F = Linf(HYPrat(-1-a-z, a), 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1-a)*Linf(HYPrat(-1-a, a))
  - HYPLx(-1-a, -1-a)
  - Linf(0, HYPrat(-1-a, a))
")
*}}}
*
*{{{ HypLimitsToHlogs_119 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
*
local F = Linf(HYPrat(-1-z, 1), 0, HYPrat(-1-z, 1))
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2*z3
  - HYPLx(-1)*z2
  - HYPLx(-1, -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_120 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
local F = 
  + Linf(-1-z, -1)
  + Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  - HYPLx(0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_121 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
symbol z;
cfunction Linf;
local F = 
  + Linf(-1-z, -1, -1, -1)
  + Linf(-1-z, -1, -1)
  + Linf(-1-z, -1)
  + Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  - HYPLx(0, -1)
  - HYPLx(0, 0, -1)
  - HYPLx(0, 0, 0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_122 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = 
  + Linf(-1-z, -1, -1, -1)
  + Linf(-1-z, -1, -1)
  + Linf(-1-z, 0)
  + Linf(-1-z, -1)
  + Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
  - HYPLx(-1)
  - HYPLx(-1, -1)
  - HYPLx(0, -1)
  - HYPLx(0, 0, -1)
  - HYPLx(0, 0, 0, -1)
")
*}}}
*
*
*
*
*{{{ HypLimitsToHlogs_123 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = 
  + Linf(-1-z, -1, -1, -1)
  + Linf(-1-z, -1, -1)
  + Linf(-1-z, 0)
  + Linf(-1-z, -1)
  + Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPLx(-1)
  + HYPLx(-1)*Linf(-1)
  - HYPLx(-1, -1)
  - HYPLx(0, -1)
  - HYPLx(0, 0, -1)
  - HYPLx(0, 0, 0, -1)
  + Linf(-1)
  + Linf(-1, -1)
  + Linf(-1, -1, -1)
  + Linf(-1, -1, -1, -1)
  - Linf(0, -1) 
")
*}}}
*
*{{{ HypLimitsToHlogs_124 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "0"
symbol a, z;
cfunction Linf;
local F = Linf(HYPrat(-1-a-z, a), 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1-a)*Linf(HYPrat(-1-a, a))
  - HYPLx(-1-a, -1-a)
  - Linf(0, HYPrat(-1-a, a))
")
*}}}
*
*{{{ HypLimitsToHlogs_125 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1-z, -1-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  +   HYPLx(-1)*Linf(-1, -1)
  +   HYPLx(-1)*Linf(0, -1)
  - 2*HYPLx(-1, -1)*Linf(-1)
  + 2*HYPLx(-1, -1, -1)
  -   Linf(-1, 0, -1)
  -   Linf(0, -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_126 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1)*Linf(-1)
  - HYPLx(-1, -1)
  - Linf(0, -1) 
")
*}}}
*
*{{{ HypLimitsToHlogs_127 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(0)*Linf(-1)
  - HYPLx(0, 0)
  - Linf(0, -1) 
")
*}}}
*
*{{{ HypLimitsToHlogs_128 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = 
  + Linf(-1-z, -1, -1, -1)
  + Linf(-1-z, -1, -1)
  + Linf(-1-z, 0)
  + Linf(-1-z, -1)
  + Linf(-1-z)
;
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
  - HYPLx(-1)
  - HYPLx(-1, -1)
  - HYPLx(0, -1)
  - HYPLx(0, 0, -1)
  - HYPLx(0, 0, 0, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_129 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
symbol a, z;
cfunction Linf;
local F = Linf(HYPrat(-1-a-z, a), 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-1-a)*Linf(HYPrat(-1-a, a))
  - HYPLx(-1-a, -1-a)
  - Linf(0, HYPrat(-1-a, a))
")
*}}}
*
*{{{ HypLimitsToHlogs_130 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1-z, -1-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  +   z3
  +   HYPLx(-1)*z2
  + 2*HYPLx(-1, -1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_131 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
  - HYPLx(-1, -1)
")
*}}}
*
*{{{ HypLimitsToHlogs_132 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-z, 0);
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - z2
  - HYPLx(0, 0)
")
*}}}
*
*{{{ HypLimitsToHlogs_133 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
symbol x1,x2,x6,x7;
cfunction Linf;
local F = Linf(
  HYPrat(-x2*x7-x2*x6-x2*x6*x7-x1*x7-x1*x6-x1*x6*x7-x1*x2*x7-x1*x2*x6,
         x2*x7+x2*x6+x1*x7+x1*x6)
  );
.sort
#call HypLimitsToHlogs(F, Linf, x2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + HYPLx(-x1)
  - HYPLx(HYPrat( - x1*x7 - x1*x6 - x1*x6*x7, x7 + x6 + x6*x7 + x1*x7 + x1*x6))
  + Linf(HYPrat(- x7 - x6 - x6*x7, x7 + x6))
")
*}}}
*
*{{{ HypLimitsToHlogs_134 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "1"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(
  HYPrat(z+z^2,1-z)
  );
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
local diff =
  F
  -
  (
    Linf(1)
    +
    HYPLx(1)
    -
    HYPLx(-1)
    -
    HYPLx(0)
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
*{{{ HypLimitsToHlogs_135 :
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "1"
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(
  0,
  HYPrat(z+z^2,1-z)
  );
.sort
#call HypLimitsToHlogs(F, Linf, z)
.sort
local diff =
  F
  -
  (
    + Linf(0,1)
    - HYPLx(0,1)
    + HYPLx(1)*Linf(1)
    - HYPLx(-1,1)
    - HYPLx(1,0)
    - HYPLx(-1)*Linf(1)
    - HYPLx(1,-1)
    + HYPLx(-1,-1)
    + HYPLx(1,1)
    + HYPLx(0,-1)
    - HYPLx(0)*Linf(1)
    + HYPLx(-1,0)
    + HYPLx(0,0)
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
