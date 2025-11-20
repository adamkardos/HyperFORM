*{{{ HypRegularizeAndDifferentiateForFibrationBases_1 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
    * HYPsol(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
;
.sort
#define MinLength "1"
#define MaxLength "1"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_2 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  - HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_3 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols3 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
.sort
#define MinLength "3"
#define MaxLength "3"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPauxSol(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))
  )
;
local diff2 =
  Sols2
  -
  (
  - HYPdenx(0) *
      L(
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      ) *
      HYPauxSol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPauxSol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff3 =
  Sols3
  -
  (
  - HYPdenx(0) *
      L(
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
       ) *
       HYPsol(
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
       )
  + HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) * 
    HYPsol(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
assert result("diff3") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_4 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
        HYPrat(HYPpoly(0), HYPpoly(1))
      )
;
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) * 
    HYPauxSol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    )
  )
;
local diff2 =
  Sols2
  -
  (
  + HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  - HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1 ,0))
    ) * 
    HYPsol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    )
  + L(
       HYPrat(HYPpoly(0),HYPpoly(1))
    ) *
      L(
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      ) * 
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_5 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
.sort
#define MinLength "1"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  - HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_6 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
        HYPrat(HYPpoly(0), HYPpoly(1))
      )
;
.sort
#define MinLength "1"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  + HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  - HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1 ,0))
    ) * 
    HYPsol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    )
  + L(
       HYPrat(HYPpoly(0),HYPpoly(1))
    ) *
      L(
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      ) * 
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_7 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols3 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
.sort
#define MinLength "1"
#define MaxLength "3"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPsol(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))
  )
;
local diff2 =
  Sols2
  -
  (
  - HYPdenx(0) *
      L(
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      ) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff3 =
  Sols3
  -
  (
  - HYPdenx(0) *
      L(
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
       ) *
       HYPsol(
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
       )
  + HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) * 
    HYPsol(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
assert result("diff3") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_8 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
    * HYPsol(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
;
.sort
#define MinLength "1"
#define MaxLength "1"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_9 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1 
  -
  (
  - HYPdenx(0) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  - HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )*z2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_10 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols3 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
.sort
#define MinLength "3"
#define MaxLength "3"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  - HYPdenx(0) *
      L(
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      ) *
      HYPauxSol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPauxSol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )*z2
  )
;
local diff3 =
  Sols3
  -
  (
  - HYPdenx(0) *
      L(
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
       ) *
       HYPsol(
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
       )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
assert result("diff3") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_11 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
        HYPrat(HYPpoly(0), HYPpoly(1))
      )
;
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  + HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  -  HYPsol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    )*z2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_12 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
.sort
#define MinLength "1"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  - HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )*z2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_13 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
        HYPrat(HYPpoly(0), HYPpoly(1))
      )
;
.sort
#define MinLength "1"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  + HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  - HYPsol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    )*z2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_14 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols3 = 
  + L(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
.sort
#define MinLength "1"
#define MaxLength "3"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  - HYPdenx(0) *
      L(
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      ) *
      HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPsol(
        HYPrat(HYPpoly(0),HYPpoly(1)),
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )*z2
  )
;
local diff3 =
  Sols3
  -
  (
  - HYPdenx(0) *
      L(
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
       ) *
       HYPsol(
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0),HYPpoly(1)),
         HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
       )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
assert result("diff3") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_15 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
        HYPrat(HYPpoly(0), HYPpoly(1))
      )
;
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) * 
    HYPauxSol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    )
  )
;
local diff2 =
  Sols2
  -
  (
  + HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  - HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1 ,0))
    ) * 
    HYPsol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_16 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "0"
#define KeepLinfZeroInZeroRegularization  "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
        HYPrat(HYPpoly(0), HYPpoly(1))
      )
;
.sort
#define MinLength "1"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  + HYPLzero(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  + HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  - HYPLzero(
      HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1 ,0))
    ) * 
    HYPsol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    )
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_17 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
        HYPrat(HYPpoly(0), HYPpoly(1))
      )
;
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPauxSol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  + HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  -  HYPsol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    )*z2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases_18 :
#-
off statistics;
#include- hyperform.h
#redefine FibrationBasisZeroLimitBeforeDiff "1"
#define KeepLinfZeroInZeroRegularization  "0"
cfunction L;
cfunction minmax;
symbol a, z;
*
local Sols1 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
;
*
local Sols2 = 
  + L(
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    ) *
      HYPsol(
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)),
        HYPrat(HYPpoly(0), HYPpoly(1))
      )
;
.sort
#define MinLength "1"
#define MaxLength "2"
#call HypRegularizeAndDifferentiateForFibrationBases(Sols,L,z,MinLength,MaxLength)
.sort
local diff1 =
  Sols1
  -
  (
  - HYPdenx(0) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0))
      )
  )
;
local diff2 =
  Sols2
  -
  (
  + HYPdenx(0) *
      L(HYPrat(HYPpoly(0,-1),HYPpoly(1,0))) *
      HYPsol(
        HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
        HYPrat(HYPpoly(0),HYPpoly(1))
      )
  - HYPsol(
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)),
      HYPrat(HYPpoly(0), HYPpoly(1))
    )*z2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff1") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
