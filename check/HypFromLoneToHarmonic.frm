*{{{ HypFromLoneToHarmonic_1 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - H(0, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_2 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(1, 0);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - H(1, 0)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_3 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 0, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - H(0, 0, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_4 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 1, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0, 0, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_5 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(1, 0, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0, 1, 0)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_6 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 0, 0, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - H(0, 0, 0, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_7 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 0, 1, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0, 0, 1, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_8 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 1, 1, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - H(0, 0, 0, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_9 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 1, 0, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0, 1, 0, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_10 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 0, 0, 0, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - H(0, 0, 0, 0, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_11 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 0, 0, 1, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0, 0, 0, 1, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_12 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 0, 1, 1, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - H(0, 0, 0, 1, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_13 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0, 1, 1, 1, 1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0, 0, 0, 0, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_14 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0,0,1,1,1,0,1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0, 1, 0, 0, 0, 1, 1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_15 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0,0,1,0,0,1,1,1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0,0,0,1,1,0,1,1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_16 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0,1,0,0,0,1,1,1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0,0,0,1,1,1,0,1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_17 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0,1,0,0,1,0,1,1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0,0,1,0,1,1,0,1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_18 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0,1,0,1,0,0,1,1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0,0,1,1,0,1,0,1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_19 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0,1,1,0,0,0,1,1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0,0,1,1,1,0,0,1)
")
*}}}
*
*{{{ HypFromLoneToHarmonic_20 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2,aux3;
cfunction Lone,H;
*
local F = Lone(0,1,1,0,0,1,0,1);
*
.sort
#call HypFromLoneToHarmonic(F,Lone,H,aux,aux2,aux3,n1,n2)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + H(0,1,0,1,1,0,0,1)
")
*}}}
