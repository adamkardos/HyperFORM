*{{{ HypFromLinfToLone_1 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = Linf(0, -1) - Linf(-1, -1);
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Lone(0, 1)
")
*}}}
*
*{{{ HypFromLinfToLone_2 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = Linf(0);
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lone(0)
  - Lone(1)
")
*}}}
*
*{{{ HypFromLinfToLone_3 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = Linf(0, 0);
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lone(0, 0)
  - Lone(0, 1)
  - Lone(1, 0)
  + Lone(1, 1)
")
*}}}
*
*{{{ HypFromLinfToLone_4 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = Linf(0, 0, 0);
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lone(0, 0, 0)
  - Lone(0, 0, 1)
  - Lone(0, 1, 0)
  + Lone(0, 1, 1)
  - Lone(1, 0, 0)
  + Lone(1, 0, 1)
  + Lone(1, 1, 0)
  - Lone(1, 1, 1)
")
*}}}
*
*{{{ HypFromLinfToLone_5 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = Linf(0, 0, 0, 0);
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lone(0, 0, 0, 0)
  - Lone(0, 0, 0, 1)
  - Lone(0, 0, 1, 0)
  + Lone(0, 0, 1, 1)
  - Lone(0, 1, 0, 0)
  + Lone(0, 1, 0, 1)
  + Lone(0, 1, 1, 0)
  - Lone(0, 1, 1, 1)
  - Lone(1, 0, 0, 0)
  + Lone(1, 0, 0, 1)
  + Lone(1, 0, 1, 0)
  - Lone(1, 0, 1, 1)
  + Lone(1, 1, 0, 0)
  - Lone(1, 1, 0, 1)
  - Lone(1, 1, 1, 0)
  + Lone(1, 1, 1, 1)
")
*}}}
*
*{{{ HypFromLinfToLone_6 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = Linf(0, 0, -1);
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Lone(0, 0, 1)
  + Lone(0, 1, 1)
  + Lone(1, 0, 1)
  - Lone(1, 1, 1)
")
*}}}
*
*{{{ HypFromLinfToLone_7 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = 
  + Linf(-1,-1,-1)
;
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Lone(1,1,1)
")
*}}}
*
*{{{ HypFromLinfToLone_8 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = 
  + Linf(-1,0,-1)
;
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lone(1,0,1)
  - Lone(1,1,1)
")
*}}}
*
*{{{ HypFromLinfToLone_9 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = 
  + Linf(0,-1,-1)
;
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Lone(0,1,1)
  - Lone(1,1,1)
")
*}}}
*
*{{{ HypFromLinfToLone_10 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = 
  + Linf(0,0,-1)
;
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Lone(0,0,1)
  + Lone(0,1,1)
  + Lone(1,0,1)
  - Lone(1,1,1)
")
*}}}
*
*{{{ HypFromLinfToLone_11 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction aux,aux2;
cfunction Linf,Lone;
*
local F = 
  + 2*Linf(-1,-1,-1)
  - Linf(-1,0,-1)
  - 2*Linf(0,-1,-1)
  + Linf(0,0,-1)
;
*
.sort
#call HypFromLinfToLone(F,Linf,Lone,aux,aux2,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Lone(0,0,1)
  - Lone(0,1,1)
")
*}}}
