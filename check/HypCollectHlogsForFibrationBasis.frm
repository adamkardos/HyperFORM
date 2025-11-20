*{{{ HypCollectHlogsForFibrationBasis_1 :
#-
off statistics;
#include- hyperform.h
cfunction L;
cfunction minmax;
symbol a, z;
*
local F = 
  + L(0) 
  + L(0, -1)
  + L(0, -1, -1)
  + L(0, -1, -1, -1)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypCollectHlogsForFibrationBasis(F,Sols,L,z,MinLength,MaxLength)
.sort
local H = minmax(`MinLength', `MaxLength');
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + minmax(99, 0)
")
*}}}
*
*{{{ HypCollectHlogsForFibrationBasis_2 :
#-
off statistics;
#include- hyperform.h
cfunction L;
cfunction minmax;
symbol a, z;
*
local F = 
  + L(0) 
  + L(0, -1)
  + L(0, -1, -1)
  + L(0, -1, -1, -1)
  + L(-z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypCollectHlogsForFibrationBasis(F,Sols,L,z,MinLength,MaxLength)
.sort
local H = minmax(`MinLength', `MaxLength');
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + minmax(1, 1)
")
assert result("Sols1") =~ expr("
  + HYPsol(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
  * L(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
")
*}}}
*
*{{{ HypCollectHlogsForFibrationBasis_3 :
#-
off statistics;
#include- hyperform.h
cfunction L;
cfunction minmax;
symbol a, z;
*
local F = 
  + L(0) 
  + L(0, -1)
  + L(0, -1, -1)
  + L(0, -1, -1, -1)
  + L(-z)
  + L(0, -z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypCollectHlogsForFibrationBasis(F,Sols,L,z,MinLength,MaxLength)
.sort
local H = minmax(`MinLength', `MaxLength');
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + minmax(1, 2)
")
assert result("Sols1") =~ expr("
  + HYPsol(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
    * L(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
")
assert result("Sols2") =~ expr("
  + HYPsol(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    )
   * L(
       HYPrat(HYPpoly(0), HYPpoly(1)),
       HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
     )
")
*}}}
*
*{{{ HypCollectHlogsForFibrationBasis_4 :
#-
off statistics;
#include- hyperform.h
cfunction L;
cfunction minmax;
symbol a, z;
*
local F = 
  + L(0) 
  + L(0, -1)
  + L(0, -1, -1)
  + L(0, -1, -1, -1)
  + L(-z)
  + L(0, -z)
  + L(0, 0, -z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypCollectHlogsForFibrationBasis(F,Sols,L,z,MinLength,MaxLength)
.sort
local H = minmax(`MinLength', `MaxLength');
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + minmax(1, 3)
")
assert result("Sols1") =~ expr("
  + HYPsol(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
    * L(HYPrat(HYPpoly(0, -1), HYPpoly(1, 0)))
")
assert result("Sols2") =~ expr("
  + HYPsol(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    )
    * L(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
")
assert result("Sols3") =~ expr("
  + HYPsol(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    )
    * L(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
")
*}}}
*
*{{{ HypCollectHlogsForFibrationBasis_5 :
#-
off statistics;
#include- hyperform.h
cfunction L;
cfunction minmax;
symbol a, z;
*
local F = 
  + L(0) 
  + L(0, -1)
  + L(0, -1, -1)
  + L(0, -1, -1, -1)
  + L(0, -z)
  + L(0, 0, -z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypCollectHlogsForFibrationBasis(F,Sols,L,z,MinLength,MaxLength)
.sort
local H = minmax(`MinLength', `MaxLength');
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + minmax(2, 3)
")
assert result("Sols2") =~ expr("
  + HYPsol(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    )
    * L(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
")
assert result("Sols3") =~ expr("
  + HYPsol(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    )
    * L(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
")
*}}}
*
*{{{ HypCollectHlogsForFibrationBasis_6 :
#-
off statistics;
#include- hyperform.h
cfunction L;
cfunction minmax;
symbol a, z;
*
local F = 
  + L(0) 
  + L(0, -1)
  + L(0, -1, -1)
  + L(0, -1, -1, -1)
  + L(0, 0, -z)
;
.sort
#define MinLength ""
#define MaxLength ""
#call HypCollectHlogsForFibrationBasis(F,Sols,L,z,MinLength,MaxLength)
.sort
local H = minmax(`MinLength', `MaxLength');
.sort
print +s;
.end
assert succeeded?
assert result("H") =~ expr("
  + minmax(3, 3)
")
assert result("Sols3") =~ expr("
  + HYPsol(
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0), HYPpoly(1)),
      HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
    )
    * L(
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0), HYPpoly(1)),
        HYPrat(HYPpoly(0, -1), HYPpoly(1, 0))
      )
")
*}}}
