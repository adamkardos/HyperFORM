*{{{ HypFromHarmonicToMZV_1 :
#include- hyperform.h
*
symbols n1,...,n10;
cfunction H;
*
local F = H(0, 1);
*
.sort
#call HypFromHarmonicToMZV(F,H,mzv,n,10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z2 
")
*}}}
*
*{{{ HypFromHarmonicToMZV_2 :
#include- hyperform.h
*
symbols n1,...,n10;
cfunction H;
*
local F = H(1, 0);
*
.sort
#call HypFromHarmonicToMZV(F,H,mzv,n,10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + mzv2(1, 0)
")
*}}}
*
*{{{ HypFromHarmonicToMZV_3 :
#include- hyperform.h
*
symbols n1,...,n10;
cfunction H;
*
local F = H(0, 0, 1);
*
.sort
#call HypFromHarmonicToMZV(F,H,mzv,n,10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z3
")
*}}}
*
*{{{ HypFromHarmonicToMZV_4 :
#include- hyperform.h
*
symbols n1,...,n10;
cfunction H;
*
local F = H(0, 0, 0, 1);
*
.sort
#call HypFromHarmonicToMZV(F,H,mzv,n,10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2/5*z2^2
")
*}}}
*
*{{{ HypFromHarmonicToMZV_5 :
#include- hyperform.h
*
symbols n1,...,n10;
cfunction H;
*
local F = H(0, 0, 1, 1);
*
.sort
#call HypFromHarmonicToMZV(F,H,mzv,n,10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/10*z2^2
")
*}}}
*
*{{{ HypFromHarmonicToMZV_6 :
#include- hyperform.h
*
symbols n1,...,n10;
cfunction H;
*
local F = H(0, 1, 0, 1);
*
.sort
#call HypFromHarmonicToMZV(F,H,mzv,n,10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 3/10*z2^2
")
*}}}
*
*{{{ HypFromHarmonicToMZV_7 :
#include- hyperform.h
*
symbols n1,...,n10;
cfunction H;
*
local F = H(0, 0, 0, 0, 1);
*
.sort
#call HypFromHarmonicToMZV(F,H,mzv,n,10)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + z5
")
*}}}
*
*{{{ HypFromHarmonicToMZV_8 :
#include- hyperform.h
*
symbols n1,...,n10;
cfunction H;
*
local F = H(0, 0, 0, 0, 0, 1);
*
.sort
#call HypFromHarmonicToMZV(F,H,mzv,n,5)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0, 0, 0, 0, 0, 1)
")
*}}}
