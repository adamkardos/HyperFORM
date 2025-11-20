*{{{ HypNormalizeToIntegrate_1 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = den(a);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    den(a) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_2 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = den(-a);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    den(-a) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_3 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = den(a,b);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    den(a,b)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_4 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = den(-a,b);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    den(-a,b)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_5 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = den(a,-b);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    den(-a,b)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_6 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = den(-a,-b);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    den(a,b)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_7 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = den(1-a,b);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    den(1-a,b)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_8 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = den(-1+a,-b);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    den(1-a,b)
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_9 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = L(a);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(a) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_10 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = L(a,b);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(a,b) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_11 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = L(rat(a,b));
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(rat(a,b)) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_12 :
#include- hyperform.h
*
symbols a,b,c,d;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = L(rat(a,b),rat(c,d));
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(rat(a,b),rat(c,d)) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_13 :
#include- hyperform.h
*
symbols a,b,c,d;
symbols n1,...,n4;
cfunctions den,L,rat;
*
local F = L(rat(a,-b),rat(c,d));
*
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(rat(-a,b),rat(c,d)) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_14 :
#include- hyperform.h
*
symbols a,b,c,d;
symbols n1,...,n4;
cfunctions den,L,rat;
*
local F = L(rat(a,-b),rat(-c,d));
*
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(rat(-a,b),rat(-c,d)) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_15 :
#include- hyperform.h
*
symbols a,b,c,d;
symbols n1,...,n4;
cfunctions den,L,rat;
*
local F = L(rat(a,-b),rat(c,-d));
*
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(rat(-a,b),rat(-c,d)) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_16 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = L(-a);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(-a) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypNormalizeToIntegrate_17 :
#include- hyperform.h
*
symbols a,b;
symbols n1,...,n4;
cfunctions den,L,rat;
local F = L(-a,-b);
.sort
#call HypNormalizeToIntegrate(F,den,L,rat,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    L(-a,-b) 
  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
