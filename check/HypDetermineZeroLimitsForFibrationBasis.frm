*{{{ HypDetermineZeroLimitsForFibrationBasis_1 :
* This is for Linf(-z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols1 = 
  - HYPLx(0)*HYPsol( - z)
  + HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z)
;
.sort
#define MinLength "1"
#define MaxLength "1"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff1 =
  Sols1
  -
  (
  - HYPLx(0)*HYPsol( - z)
  + Linf(-1)*HYPsol( - z)
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
*{{{ HypDetermineZeroLimitsForFibrationBasis_2 :
* This is for Linf(0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols2 = 
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0, - z)
  + HYPLx(0,0)*HYPsol(0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0, - z)
;
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff2 = 
  Sols2
  -
  (
  - HYPLx(0)*Linf(-1)*HYPsol(0, - z)
  + HYPLx(0,0)*HYPsol(0, - z)
  + Linf(0,-1)*HYPsol(0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_3 :
* This is for Linf(0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols3 = 
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,- z)
  - HYPLx(0,0,0)*HYPsol(0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0, - z)
;
.sort
#define MinLength "3"
#define MaxLength "3"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff3 =
  Sols3
  -
  (
  - HYPLx(0)*Linf(0,-1)*HYPsol(0,0, - z)
  + HYPLx(0,0)*Linf(-1)*HYPsol(0,0, - z)
  - HYPLx(0,0,0)*HYPsol(0,0, - z)
  + Linf(0,0,-1)*HYPsol(0,0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff3") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_4 :
* This is for Linf(0, 0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols4 = 
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1
      ),HYPpoly(1,0)))*HYPsol(0,0,0, - z)
  - HYPLx(0,0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,
      0, - z)
  + HYPLx(0,0,0,0)*HYPsol(0,0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*
      HYPsol(0,0,0, - z)
;
.sort
#define MinLength "4"
#define MaxLength "4"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff4 =
  Sols4
  -
  (
  - HYPLx(0)*Linf(0,0,-1)*HYPsol(0,0,0, - z)
  + HYPLx(0,0)*Linf(0,-1)*HYPsol(0,0,0, - z)
  - HYPLx(0,0,0)*Linf(-1)*HYPsol(0,0,0, - z)
  + HYPLx(0,0,0,0)*HYPsol(0,0,0, - z)
  + Linf(0,0,0,-1)*HYPsol(0,0,0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff4") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_5 :
* This is for Linf(0, 0, 0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols5 = 
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1
      ,0)))*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
  - HYPLx(0,0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,
      -1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0,0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,
      0,0,0, - z)
  - HYPLx(0,0,0,0,0)*HYPsol(0,0,0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(
      HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
;
.sort
#define MinLength "5"
#define MaxLength "5"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff5 =
  Sols5
  -
  (
  - HYPLx(0)*Linf(0,0,0,-1)*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0)*Linf(0,0,-1)*HYPsol(0,0,0,0, - z)
  - HYPLx(0,0,0)*Linf(0,-1)*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0,0,0)*Linf(-1)*HYPsol(0,0,0,0, - z)
  - HYPLx(0,0,0,0,0)*HYPsol(0,0,0,0, - z)
  + Linf(0,0,0,0,-1)*HYPsol(0,0,0,0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff5") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_6 :
* This is for  Linf(0, -z) +Linf(0, 0, -z) + Linf(0, 0, 0, -z) + Linf(0, 0, 0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols5 =
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1
      ,0)))*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
  - HYPLx(0,0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,
      -1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0,0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,
      0,0,0, - z)
  - HYPLx(0,0,0,0,0)*HYPsol(0,0,0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(
      HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
;
local Sols4 =
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1
      ),HYPpoly(1,0)))*HYPsol(0,0,0, - z)
  - HYPLx(0,0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,
      0, - z)
  + HYPLx(0,0,0,0)*HYPsol(0,0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*
      HYPsol(0,0,0, - z)
;
local Sols3 =
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),
      HYPpoly(1,0)))*HYPsol(0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,
       - z)
  - HYPLx(0,0,0)*HYPsol(0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0, - z)
;
local Sols2 =
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0, - z)
  + HYPLx(0,0)*HYPsol(0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1
      ,0)))*HYPsol(0, - z)
;
*
.sort
#define MinLength "2"
#define MaxLength "5"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff2 = 
  Sols2
  -
  (
  - HYPLx(0)*Linf(-1)*HYPsol(0, - z)
  + HYPLx(0,0)*HYPsol(0, - z)
  + Linf(0,-1)*HYPsol(0, - z)
  )
;
local diff3 = 
  Sols3
  -
  (
  - HYPLx(0)*Linf(0,-1)*HYPsol(0,0, - z)
  + HYPLx(0,0)*Linf(-1)*HYPsol(0,0, - z)
  - HYPLx(0,0,0)*HYPsol(0,0, - z)
  + Linf(0,0,-1)*HYPsol(0,0, - z)
  )
;
local diff4 = 
  Sols4
  -
  (
  - HYPLx(0)*Linf(0,0,-1)*HYPsol(0,0,0, - z)
  + HYPLx(0,0)*Linf(0,-1)*HYPsol(0,0,0, - z)
  - HYPLx(0,0,0)*Linf(-1)*HYPsol(0,0,0, - z)
  + HYPLx(0,0,0,0)*HYPsol(0,0,0, - z)
  + Linf(0,0,0,-1)*HYPsol(0,0,0, - z)
  )
;
local diff5 = 
  Sols5
  -
  (
  - HYPLx(0)*Linf(0,0,0,-1)*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0)*Linf(0,0,-1)*HYPsol(0,0,0,0, - z)
  - HYPLx(0,0,0)*Linf(0,-1)*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0,0,0)*Linf(-1)*HYPsol(0,0,0,0, - z)
  - HYPLx(0,0,0,0,0)*HYPsol(0,0,0,0, - z)
  + Linf(0,0,0,0,-1)*HYPsol(0,0,0,0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff5") =~ expr("
  0
")
assert result("diff4") =~ expr("
  0
")
assert result("diff3") =~ expr("
  0
")
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_7 :
* This is for  Linf(-z, 0)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols2 =
  + HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z,0)
  - HYPLx(0)*Linf(0)*HYPsol( - z,0)
  - HYPLx(0,0)*HYPsol( - z,0)
  - HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1
      ,0)))*HYPsol( - z,0)
  + HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0)*HYPsol( - z,0)
;
*
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff2 =
  Sols2
  -
  (
  + HYPLx(0)*Linf(-1)*HYPsol( - z,0)
  - HYPLx(0)*Linf(0)*HYPsol( - z,0)
  - HYPLx(0,0)*HYPsol( - z,0)
  + Linf(-1)*Linf(0)*HYPsol( - z,0)
  - Linf(0,-1)*HYPsol( - z,0)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_8 :
* This is for  Linf(-z, 0, 0)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols3 =
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),
      HYPpoly(1,0)))*HYPsol( - z,0,0)
  + HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0)*HYPsol(
       - z,0,0)
  - HYPLx(0)*Linf(0,0)*HYPsol( - z,0,0)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z,0
      ,0)
  - HYPLx(0,0)*Linf(0)*HYPsol( - z,0,0)
  - HYPLx(0,0,0)*HYPsol( - z,0,0)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z,0,0)
  - HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1
      ,0)))*Linf(0)*HYPsol( - z,0,0)
  + HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0,0)*HYPsol( - z,0,
      0)
;
*
.sort
#define MinLength "3"
#define MaxLength "3"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff3 =
  Sols3
  -
  (
  + HYPLx(0)*Linf(-1)*Linf(0)*HYPsol( - z,0,0)
  - HYPLx(0)*Linf(0,-1)*HYPsol( - z,0,0)
  - HYPLx(0)*Linf(0,0)*HYPsol( - z,0,0)
  + HYPLx(0,0)*Linf(-1)*HYPsol( - z,0,0)
  - HYPLx(0,0)*Linf(0)*HYPsol( - z,0,0)
  - HYPLx(0,0,0)*HYPsol( - z,0,0)
  + Linf(-1)*Linf(0,0)*HYPsol( - z,0,0)
  - Linf(0)*Linf(0,-1)*HYPsol( - z,0,0)
  + Linf(0,0,-1)*HYPsol( - z,0,0)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff3") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_9 :
* This is for  Linf(-z, 0, 0) + Linf(0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols3 =
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),
      HYPpoly(1,0)))*HYPsol( - z,0,0)
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),
      HYPpoly(1,0)))*HYPsol(0,0, - z)
  + HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0)*HYPsol(
       - z,0,0)
  - HYPLx(0)*Linf(0,0)*HYPsol( - z,0,0)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z,0
      ,0)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,
       - z)
  - HYPLx(0,0)*Linf(0)*HYPsol( - z,0,0)
  - HYPLx(0,0,0)*HYPsol( - z,0,0)
  - HYPLx(0,0,0)*HYPsol(0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z,0,0)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0, - z)
  - HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1
      ,0)))*Linf(0)*HYPsol( - z,0,0)
  + HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0,0)*HYPsol( - z,0,
      0)
;
*
.sort
#define MinLength "3"
#define MaxLength "3"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff3 =
  Sols3
  -
  (
  + HYPLx(0)*Linf(-1)*Linf(0)*HYPsol( - z,0,0)
  - HYPLx(0)*Linf(0,-1)*HYPsol( - z,0,0)
  - HYPLx(0)*Linf(0,-1)*HYPsol(0,0, - z)
  - HYPLx(0)*Linf(0,0)*HYPsol( - z,0,0)
  + HYPLx(0,0)*Linf(-1)*HYPsol( - z,0,0)
  + HYPLx(0,0)*Linf(-1)*HYPsol(0,0, - z)
  - HYPLx(0,0)*Linf(0)*HYPsol( - z,0,0)
  - HYPLx(0,0,0)*HYPsol( - z,0,0)
  - HYPLx(0,0,0)*HYPsol(0,0, - z)
  + Linf(-1)*Linf(0,0)*HYPsol( - z,0,0)
  - Linf(0)*Linf(0,-1)*HYPsol( - z,0,0)
  + Linf(0,0,-1)*HYPsol( - z,0,0)
  + Linf(0,0,-1)*HYPsol(0,0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff3") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_10 :
* This is for  - Linf(-z, 0, 0, 0) + Linf(0, 0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "0"
cfunction Linf;
symbol z;
*
local Sols4 =
  + HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z,0,0,0)
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0, - z)
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),
      HYPpoly(1,0)))*Linf(0)*HYPsol( - z,0,0,0)
  + HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0,0)*
      HYPsol( - z,0,0,0)
  - HYPLx(0)*Linf(0,0,0)*HYPsol( - z,0,0,0)
  - HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1
      ),HYPpoly(1,0)))*HYPsol( - z,0,0,0)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1
      ),HYPpoly(1,0)))*HYPsol(0,0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0)*
      HYPsol( - z,0,0,0)
  - HYPLx(0,0)*Linf(0,0)*HYPsol( - z,0,0,0)
  + HYPLx(0,0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z
      ,0,0,0)
  - HYPLx(0,0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,
      0, - z)
  - HYPLx(0,0,0)*Linf(0)*HYPsol( - z,0,0,0)
  - HYPLx(0,0,0,0)*HYPsol( - z,0,0,0)
  + HYPLx(0,0,0,0)*HYPsol(0,0,0, - z)
  - HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*
      HYPsol( - z,0,0,0)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*
      HYPsol(0,0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0)*HYPsol( - z,0,0,0)
  - HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1
      ,0)))*Linf(0,0)*HYPsol( - z,0,0,0)
  + HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*Linf(0,0,0)*HYPsol( - z,
      0,0,0)
;
*
.sort
#define MinLength "4"
#define MaxLength "4"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff4 =
  Sols4
  -
  (
  + HYPLx(0)*Linf(-1)*Linf(0,0)*HYPsol( - z,0,0,0)
  - HYPLx(0)*Linf(0)*Linf(0,-1)*HYPsol( - z,0,0,0)
  + HYPLx(0)*Linf(0,0,-1)*HYPsol( - z,0,0,0)
  - HYPLx(0)*Linf(0,0,-1)*HYPsol(0,0,0, - z)
  - HYPLx(0)*Linf(0,0,0)*HYPsol( - z,0,0,0)
  + HYPLx(0,0)*Linf(-1)*Linf(0)*HYPsol( - z,0,0,0)
  - HYPLx(0,0)*Linf(0,-1)*HYPsol( - z,0,0,0)
  + HYPLx(0,0)*Linf(0,-1)*HYPsol(0,0,0, - z)
  - HYPLx(0,0)*Linf(0,0)*HYPsol( - z,0,0,0)
  + HYPLx(0,0,0)*Linf(-1)*HYPsol( - z,0,0,0)
  - HYPLx(0,0,0)*Linf(-1)*HYPsol(0,0,0, - z)
  - HYPLx(0,0,0)*Linf(0)*HYPsol( - z,0,0,0)
  - HYPLx(0,0,0,0)*HYPsol( - z,0,0,0)
  + HYPLx(0,0,0,0)*HYPsol(0,0,0, - z)
  + Linf(-1)*Linf(0,0,0)*HYPsol( - z,0,0,0)
  + Linf(0)*Linf(0,0,-1)*HYPsol( - z,0,0,0)
  - Linf(0,-1)*Linf(0,0)*HYPsol( - z,0,0,0)
  - Linf(0,0,0,-1)*HYPsol( - z,0,0,0)
  + Linf(0,0,0,-1)*HYPsol(0,0,0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff4") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_11 :
* This is for Linf(-z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "1"
cfunction Linf;
symbol z;
*
local Sols1 = 
  - HYPLx(0)*HYPsol( - z)
  + HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol( - z)
;
.sort
#define MinLength "1"
#define MaxLength "1"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff1 =
  Sols1
  -
  (
  - HYPLx(0)*HYPsol( - z)
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
*{{{ HypDetermineZeroLimitsForFibrationBasis_12 :
* This is for Linf(0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "1"
cfunction Linf;
symbol z;
*
local Sols2 = 
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0, - z)
  + HYPLx(0,0)*HYPsol(0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0, - z)
;
.sort
#define MinLength "2"
#define MaxLength "2"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff2 =
  Sols2
  -
  (
  + HYPLx(0,0)*HYPsol(0, - z)
  + HYPsol(0, - z)*z2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff2") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_13 :
* This is for Linf(0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "1"
cfunction Linf;
symbol z;
*
local Sols3 = 
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,- z)
  - HYPLx(0,0,0)*HYPsol(0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0, - z)
;
.sort
#define MinLength "3"
#define MaxLength "3"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff3 =
  Sols3
  -
  (
  - HYPLx(0)*HYPsol(0,0, - z)*z2
  - HYPLx(0,0,0)*HYPsol(0,0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff3") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_14 :
* This is for Linf(0, 0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "1"
cfunction Linf;
symbol z;
*
local Sols4 = 
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1
      ),HYPpoly(1,0)))*HYPsol(0,0,0, - z)
  - HYPLx(0,0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,
      0, - z)
  + HYPLx(0,0,0,0)*HYPsol(0,0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*
      HYPsol(0,0,0, - z)
;
.sort
#define MinLength "4"
#define MaxLength "4"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff4 =
  Sols4
  -
  (
  + HYPLx(0,0)*HYPsol(0,0,0, - z)*z2
  + HYPLx(0,0,0,0)*HYPsol(0,0,0, - z)
  + 7/10*HYPsol(0,0,0, - z)*z2^2
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff4") =~ expr("
  0
")
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis_15 :
* This is for Linf(0, 0, 0, 0, -z)
#-
off statistics;
#include- hyperform.h
#redefine ToNumberInFibrationBasisZeroLimit "1"
cfunction Linf;
symbol z;
*
local Sols5 = 
  - HYPLx(0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1
      ,0)))*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),
      HYPpoly(1)),HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
  - HYPLx(0,0,0)*HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0,
      -1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
  + HYPLx(0,0,0,0)*HYPLzero(HYPrat(HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,
      0,0,0, - z)
  - HYPLx(0,0,0,0,0)*HYPsol(0,0,0,0, - z)
  + HYPLzero(HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),
      HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(HYPpoly(0),HYPpoly(1)),HYPrat(
      HYPpoly(0,-1),HYPpoly(1,0)))*HYPsol(0,0,0,0, - z)
;
.sort
#define MinLength "5"
#define MaxLength "5"
#call HypDetermineZeroLimitsForFibrationBasis(Sols,Linf,z,`MinLength',`MaxLength')
.sort
local diff5 =
  Sols5
  -
  (
  - 7/10*HYPLx(0)*HYPsol(0,0,0,0, - z)*z2^2
  - HYPLx(0,0,0)*HYPsol(0,0,0,0, - z)*z2
  - HYPLx(0,0,0,0,0)*HYPsol(0,0,0,0, - z)
  )
;
.sort
print +s;
.end
assert succeeded?
assert result("diff5") =~ expr("
  0
")
*}}}
