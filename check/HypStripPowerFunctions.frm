*{{{ HypStripPowerFunctions_1 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, 2)
;
*
.sort
*
#call HypStripPowerFunctions(F)
*
.sort
*
local diffnumden = 
  Fnumden
  -
  (
    HYPnum(x + y + z)^2
  )
;
*
local diffpowfunc = 
  Fpowfunc
  -
  (
    1
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diffnumden") =~ expr("
  0
")
assert result("diffpowfunc") =~ expr("
  0
")
*}}}
*
*{{{ HypStripPowerFunctions_2 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, -2)
;
*
.sort
*
#call HypStripPowerFunctions(F)
*
.sort
*
local diffnumden = 
  Fnumden
  -
  (
    HYPden(x + y + z)^2
  )
;
*
local diffpowfunc = 
  Fpowfunc
  -
  (
    1
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diffnumden") =~ expr("
  0
")
assert result("diffpowfunc") =~ expr("
  0
")
*}}}
*
*{{{ HypStripPowerFunctions_3 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, 2 - HYPep)
;
*
.sort
*
#call HypStripPowerFunctions(F)
*
.sort
*
local diffnumden = 
  Fnumden
  -
  (
    HYPnum(x + y + z)^2
  )
;
*
local diffpowfunc = 
  Fpowfunc
  -
  (
    HYPpow(x + y + z, -HYPep)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diffnumden") =~ expr("
  0
")
assert result("diffpowfunc") =~ expr("
  0
")
*}}}
*
*{{{ HypStripPowerFunctions_4 :
#include- hyperform.h
*
symbols x, y, z;
*
local F = 
  HYPpow(x + y + z, -2 - HYPep)
;
*
.sort
*
#call HypStripPowerFunctions(F)
*
.sort
*
local diffnumden = 
  Fnumden
  -
  (
    HYPden(x + y + z)^2
  )
;
*
local diffpowfunc = 
  Fpowfunc
  -
  (
    HYPpow(x + y + z, -HYPep)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diffnumden") =~ expr("
  0
")
assert result("diffpowfunc") =~ expr("
  0
")
*}}}
