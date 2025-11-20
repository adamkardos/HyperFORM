*{{{ HypShuffleNonNumericHlogs_1 :
#include- hyperform.h
*
symbols a,b,c,d,z;
cfunctions Linf,aux;
*
local F = 
  + Linf(0, -1)*Linf(-a)
;
*
.sort
*
#call HypShuffleNonNumericHlogs(Linf,aux,a,1)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(0, -1)*Linf(-a)
")
*}}}
*
*{{{ HypShuffleNonNumericHlogs_2 :
#include- hyperform.h
*
symbols a,b,c,d,z;
cfunctions Linf,aux;
*
local F = 
  + Linf(-b)*Linf(-a)
;
*
.sort
*
#call HypShuffleNonNumericHlogs(Linf,aux,a,1)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-b, -a)
  + Linf(-a, -b)
")
*}}}
*
*{{{ HypShuffleNonNumericHlogs_3 :
#include- hyperform.h
*
symbols a,b,c,d,z;
cfunctions Linf,aux;
*
local F = 
  + Linf(-1)*Linf(-b)*Linf(-a)
;
*
.sort
*
#call HypShuffleNonNumericHlogs(Linf,aux,a,1)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1)*Linf(-b, -a)
  + Linf(-1)*Linf(-a, -b)
")
*}}}
*
*{{{ HypShuffleNonNumericHlogs_4 :
#include- hyperform.h
*
symbols a,b,c,d,z;
cfunctions Linf,aux;
*
local F = 
  + Linf(-a, -b)*Linf(-c)
;
*
.sort
*
#call HypShuffleNonNumericHlogs(Linf,aux,a,1)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-c, -a, -b)
  + Linf(-a, -c, -b)
  + Linf(-a, -b, -c)
")
*}}}
