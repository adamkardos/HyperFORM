*{{{ HypShuffleRegularizeAtZero_1 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(0, 1))
")
*}}} HypShuffleRegularizeAtZero_1 : 
*
*{{{ HypShuffleRegularizeAtZero_2 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(0, 1), HYPrat(0, 1))
")
*}}} HypShuffleRegularizeAtZero_2 : 
*
*{{{ HypShuffleRegularizeAtZero_3 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1))
")
*}}} HypShuffleRegularizeAtZero_3 : 
*
*{{{ HypShuffleRegularizeAtZero_4 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1))
")
*}}} HypShuffleRegularizeAtZero_4 : 
*
*{{{ HypShuffleRegularizeAtZero_5 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1))
")
*}}} HypShuffleRegularizeAtZero_5 : 
*
*{{{ HypShuffleRegularizeAtZero_6 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0)
")
*}}} HypShuffleRegularizeAtZero_6 : 
*
*{{{ HypShuffleRegularizeAtZero_7 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0)
")
*}}} HypShuffleRegularizeAtZero_7 : 
*
*{{{ HypShuffleRegularizeAtZero_8 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(0, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, 0)
")
*}}} HypShuffleRegularizeAtZero_8 : 
*
*{{{ HypShuffleRegularizeAtZero_9 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(0, 0, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, 0, 0)
")
*}}} HypShuffleRegularizeAtZero_9 : 
*
*{{{ HypShuffleRegularizeAtZero_10 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(0, 0, 0, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, 0, 0, 0)
")
*}}} HypShuffleRegularizeAtZero_10 : 
*
*{{{ HypShuffleRegularizeAtZero_11 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1)*Linf(0)
  - Linf(0, -1)
")
*}}} HypShuffleRegularizeAtZero_11 : 
*
*{{{ HypShuffleRegularizeAtZero_12 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1, -1)*Linf(0)
  - Linf(-1, 0, -1)
  - Linf(0, -1, -1)
")
*}}} HypShuffleRegularizeAtZero_12 : 
*
*{{{ HypShuffleRegularizeAtZero_13 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1, -1, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1, -1, -1)*Linf(0)
  - Linf(-1, -1, 0, -1)
  - Linf(-1, 0, -1, -1)
  - Linf(0, -1, -1, -1)
")
*}}} HypShuffleRegularizeAtZero_13 : 
*
*{{{ HypShuffleRegularizeAtZero_14 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1, -1, -1, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1, -1, -1, -1)*Linf(0)
  - Linf(-1, -1, -1, 0, -1)
  - Linf(-1, -1, 0, -1, -1)
  - Linf(-1, 0, -1, -1, -1)
  - Linf(0, -1, -1, -1, -1)
")
*}}} HypShuffleRegularizeAtZero_14 : 
*
*{{{ HypShuffleRegularizeAtZero_15 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(-1, 1), 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0)*Linf(HYPrat(-1, 1))
  - Linf(0, HYPrat(-1, 1))
")
*}}} HypShuffleRegularizeAtZero_15 : 
*
*{{{ HypShuffleRegularizeAtZero_16 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(-1, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(-1, 1))*Linf(HYPrat(0, 1))
  - Linf(HYPrat(0, 1), HYPrat(-1, 1))
")
*}}} HypShuffleRegularizeAtZero_16 : 
*
*{{{ HypShuffleRegularizeAtZero_17 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1, HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(HYPrat(0, 1), -1)
  + Linf(-1)*Linf(HYPrat(0, 1))
")
*}}} HypShuffleRegularizeAtZero_17 : 
*
*{{{ HypShuffleRegularizeAtZero_18 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(0, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0)*Linf(0, -1)
  - 2*Linf(0, 0, -1)
")
*}}} HypShuffleRegularizeAtZero_18 : 
*
*{{{ HypShuffleRegularizeAtZero_19 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1)*Linf(0, 0)
  - Linf(0)*Linf(0, -1)
  + Linf(0, 0, -1)
")
*}}} HypShuffleRegularizeAtZero_19 : 
*
*{{{ HypShuffleRegularizeAtZero_20 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(0, -1, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0)*Linf(0, -1, -1)
  - Linf(0, -1, 0, -1)
  - 2*Linf(0, 0, -1, -1)
")
*}}} HypShuffleRegularizeAtZero_20 : 
*
*{{{ HypShuffleRegularizeAtZero_21 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1, 0, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1, 0, -1)*Linf(0)
  - 2*Linf(-1, 0, 0, -1)
  - Linf(0, -1, 0, -1)
")
*}}} HypShuffleRegularizeAtZero_21 : 
*
*{{{ HypShuffleRegularizeAtZero_22 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(-1, -1, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1, -1)*Linf(0, 0)
  - Linf(-1, 0, -1)*Linf(0)
  + Linf(-1, 0, 0, -1)
  - Linf(0)*Linf(0, -1, -1)
  + Linf(0, -1, 0, -1)
  + Linf(0, 0, -1, -1)
")
*}}} HypShuffleRegularizeAtZero_22 : 
*
*{{{ HypShuffleRegularizeAtZero_23 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol a, z;
cfunction Linf;
local F = Linf(HYPrat(-1-a-z, a), 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0)*Linf(HYPrat(-1-z-a, a))
  - Linf(0, HYPrat(-1-z-a, a))
")
*}}} HypShuffleRegularizeAtZero_23 : 
*
*{{{ HypShuffleRegularizeAtZero_24 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(HYPpoly(0), HYPpoly(1)))
")
*}}} HypShuffleRegularizeAtZero_24 : 
*
*{{{ HypShuffleRegularizeAtZero_25 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)))
")
*}}} HypShuffleRegularizeAtZero_25 : 
*
*{{{ HypShuffleRegularizeAtZero_26 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)))
")
*}}} HypShuffleRegularizeAtZero_26 : 
*
*{{{ HypShuffleRegularizeAtZero_27 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(-1, 1), HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1))
  + Linf(HYPrat(-1, 1))*Linf(HYPrat(HYPpoly(0), HYPpoly(1)))
")
*}}} HypShuffleRegularizeAtZero_27 : 
*
*{{{ HypShuffleRegularizeAtZero_28 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(-1, 1), HYPrat(-1, 1), HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1), HYPrat(-1, 1))
  - Linf(HYPrat(-1, 1), HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1))
  + Linf(HYPrat(-1, 1), HYPrat(-1, 1))*Linf(HYPrat(HYPpoly(0), HYPpoly(1)))
")
*}}} HypShuffleRegularizeAtZero_28 : 
*
*{{{ HypShuffleRegularizeAtZero_29 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = 
  + Linf(
      HYPrat(-1, 1), 
      HYPrat(HYPpoly(0), HYPpoly(1)), 
      HYPrat(HYPpoly(0), HYPpoly(1))
    )
;
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(HYPrat(HYPpoly(0), HYPpoly(1)))*Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1))
  + Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1))
  + Linf(HYPrat(-1, 1))*Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)))
")
*}}} HypShuffleRegularizeAtZero_29 : 
*
*{{{ HypShuffleRegularizeAtZero_30 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "1"
symbol z;
cfunction Linf;
local F = Linf(0, 0, -1);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, -1)
")
*}}} HypShuffleRegularizeAtZero_30 : 
*
*
*
*
*{{{ HypShuffleRegularizeAtZero_31 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_32 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_63 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_64 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0 
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_65 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_66 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_67 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_68 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(0, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_69 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(0, 0, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_70 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(0, 0, 0, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_71 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(0, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_72 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(-1, 0, -1)
  - Linf(0, -1, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_73 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1, -1, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(-1, -1, 0, -1)
  - Linf(-1, 0, -1, -1)
  - Linf(0, -1, -1, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_74 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1, -1, -1, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(-1, -1, -1, 0, -1)
  - Linf(-1, -1, 0, -1, -1)
  - Linf(-1, 0, -1, -1, -1)
  - Linf(0, -1, -1, -1, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_75 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(-1, 1), 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(0, HYPrat(-1, 1))
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_76 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(-1, 1), HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(HYPrat(0, 1), HYPrat(-1, 1))
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_77 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1, HYPrat(0, 1));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(HYPrat(0, 1), -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_78 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(0, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2*Linf(0, 0, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_79 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_80 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(0, -1, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(0, -1, 0, -1)
  - 2*Linf(0, 0, -1, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_81 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1, 0, -1, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 2*Linf(-1, 0, 0, -1)
  - Linf(0, -1, 0, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_82 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(-1, -1, 0, 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1, 0, 0, -1)
  + Linf(0, -1, 0, -1)
  + Linf(0, 0, -1, -1)
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_83 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol a, z;
cfunction Linf;
local F = Linf(HYPrat(-1-a-z, a), 0);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(0, HYPrat(-1-z-a, a))
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_84 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_85 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_86 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_87 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(-1, 1), HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1))
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_88 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(HYPrat(-1, 1), HYPrat(-1, 1), HYPrat(HYPpoly(0), HYPpoly(1)));
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1), HYPrat(-1, 1))
  - Linf(HYPrat(-1, 1), HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1))
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_89 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = 
  + Linf(
      HYPrat(-1, 1), 
      HYPrat(HYPpoly(0), HYPpoly(1)), 
      HYPrat(HYPpoly(0), HYPpoly(1))
    )
;
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(HYPpoly(0), HYPpoly(1)), HYPrat(-1, 1))
")
*}}}
*
*{{{ HypShuffleRegularizeAtZero_90 :
#-
off statistics;
#include- hyperform.h
#redefine KeepLinfZeroInZeroRegularization  "0"
symbol z;
cfunction Linf;
local F = Linf(0, 0, -1);
.sort
#call HypShuffleRegularizeAtZero(F, Linf, HYPrat, HYPpoly, 0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, 0, -1)
")
*}}}
