*{{{ HypShuffleRegularizeAtInfinity_1 :
#-
off statistics;
#include- hyperform.h
symbol z;
cfunction Linf;
symbol n1,n2;
cfunction aux1,aux2,aux3,aux4;
local F = Linf(0);
.sort
#call HypShuffleRegularizeAtInfinity(F,Linf,0,,n1,n2,aux1,...,aux4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(-1)
  + Linf(0) ")
*}}} : 
*
*{{{ HypShuffleRegularizeAtInfinity_2 :
#-
off statistics;
#include- hyperform.h
symbol z;
cfunction Linf;
symbol n1,n2;
cfunction aux1,aux2,aux3,aux4;
local F = Linf(0,0);
.sort
#call HypShuffleRegularizeAtInfinity(F,Linf,0,,n1,n2,aux1,...,aux4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-1, -1)
  - Linf(-1, 0)
  - Linf(0, -1)
  + Linf(0, 0) 
")
*}}} : 
*
*{{{ HypShuffleRegularizeAtInfinity_3 :
#-
off statistics;
#include- hyperform.h
symbols a,b,z;
cfunction Linf;
symbols n1,n2;
cfunction aux1,aux2,aux3,aux4;
local F = Linf(-a);
.sort
#call HypShuffleRegularizeAtInfinity(F,Linf,0,,n1,n2,aux1,...,aux4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-a)
  - Linf(-1)
")
*}}} : 
*
*{{{ HypShuffleRegularizeAtInfinity_4 :
#-
off statistics;
#include- hyperform.h
symbols a,b,z;
cfunction Linf;
symbols n1,n2;
cfunction aux1,aux2,aux3,aux4;
local F = Linf(-a, -b);
.sort
#call HypShuffleRegularizeAtInfinity(F,Linf,0,,n1,n2,aux1,...,aux4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(-b, -1)
  + Linf(-a, -b)
  - Linf(-1, -b)
  + Linf(-1, -1)
")
*}}} : 
*
*{{{ HypShuffleRegularizeAtInfinity_5 :
#-
off statistics;
#include- hyperform.h
symbols a,b,c,z;
cfunction Linf;
symbols n1,n2;
cfunction aux1,aux2,aux3,aux4;
local F = Linf(-a, -b, -c);
.sort
#call HypShuffleRegularizeAtInfinity(F,Linf,0,,n1,n2,aux1,...,aux4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Linf(-c, -1, -1)
  - Linf(-b, -c, -1)
  - Linf(-b, -1, -c)
  + Linf(-a, -b, -c)
  + Linf(-1, -c, -1)
  - Linf(-1, -b, -c)
  + Linf(-1, -1, -c)
  - Linf(-1, -1, -1)
")
*}}} : 
*
*{{{ HypShuffleRegularizeAtInfinity_6 :
#-
off statistics;
#include- hyperform.h
symbols a,b,c,d,z;
symbols n1,n2;
cfunction aux1,aux2,aux3,aux4;
cfunction Linf;
local F = Linf(-a, -b, -c, -d);
.sort
#call HypShuffleRegularizeAtInfinity(F,Linf,0,,n1,n2,aux1,...,aux4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - Linf(-d, -1, -1, -1)
  + Linf(-c, -d, -1, -1)
  + Linf(-c, -1, -d, -1)
  + Linf(-c, -1, -1, -d)
  - Linf(-b, -c, -d, -1)
  - Linf(-b, -c, -1, -d)
  - Linf(-b, -1, -c, -d)
  + Linf(-a, -b, -c, -d)
  - Linf(-1, -d, -1, -1)
  + Linf(-1, -c, -d, -1)
  + Linf(-1, -c, -1, -d)
  - Linf(-1, -b, -c, -d)
  - Linf(-1, -1, -d, -1)
  + Linf(-1, -1, -c, -d)
  - Linf(-1, -1, -1, -d)
  + Linf(-1, -1, -1, -1)
")
*}}} : 
*
*{{{ HypShuffleRegularizeAtInfinity_7 :
#-
off statistics;
#include- hyperform.h
symbol z;
cfunction Linf;
symbol n1,n2;
cfunction aux1,aux2,aux3,aux4;
local F = Linf(0,0,-1);
.sort
#call HypShuffleRegularizeAtInfinity(F,Linf,0,,n1,n2,aux1,...,aux4)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2*Linf(-1,-1,-1)
  - Linf(-1,0,-1)
  - 2*Linf(0,-1,-1)
  + Linf(0,0,-1)
")
*}}} : 
