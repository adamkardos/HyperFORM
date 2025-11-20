*{{{ HypIntegrateAtLevelSubstituteAbove_1 :
#include- hyperform.h
*
symbol z;
symbols n1, n2;
cfunction dz;
cfunctions L, Linf, sol, den, rat, aux;
*
local F1 = 
  - den(0)*sol(-z)*dz
;
*
local F2 =
 - den(0)*Linf(-z)*sol(0, -z)*dz
;
*
local F3 =
 - den(0)*Linf(0, -z)*sol(0, 0, -z)*dz
;
*
local F4 =
 - den(0)*Linf(0, 0, -z)*sol(0, 0, 0, -z)*dz
;
*
#call HypIntegrateAtLevelSubstituteAbove(F,1,4,L,Linf,den,rat,aux,dz,n1,n2,sol)
print +s;
.end
assert succeeded?
assert result("F1") =~ expr("
  - L(0)*sol(-z)
")
assert result("F2") =~ expr("
  + L(0, 0)*sol(0, -z)
")
assert result("F3") =~ expr("
  - L(0, 0, 0)*sol(0, 0, -z)
")
assert result("F4") =~ expr("
  + L(0, 0, 0, 0)*sol(0, 0, 0, -z)
")
*}}}
*
*{{{ HypIntegrateAtLevelSubstituteAbove_2 :
#include- hyperform.h
*
symbol z;
symbols n1, n2;
cfunction dz;
cfunctions L, Lzero, Linf, sol, den, rat, aux;
*
local F1 = 
  + Lzero(-z)*sol(-z)
  - den(0)*sol(-z)*dz
;
*
local F2 =
  + Lzero(0, -z)*sol(0, -z)
  - den(0)*Linf(-z)*sol(0, -z)*dz
;
*
local F3 =
  + Lzero(0, 0, -z)*sol(0, 0, -z)
  - den(0)*Linf(0, -z)*sol(0, 0, -z)*dz
;
*
local F4 =
  + Lzero(0, 0, 0, -z)*sol(0, 0, 0, -z)
  - den(0)*Linf(0, 0, -z)*sol(0, 0, 0, -z)*dz
;
*
#call HypIntegrateAtLevelSubstituteAbove(F,1,4,L,Linf,den,rat,aux,dz,n1,n2,sol)
print +s;
.end
assert succeeded?
assert result("F1") =~ expr("
  - L(0)*sol(-z)
  + Lzero(-z)*sol(-z)
")
assert result("F2") =~ expr("
  - L(0)*Lzero(-z)*sol(0, -z)
  + L(0, 0)*sol(0, -z)
  + Lzero(0, -z)*sol(0, -z)
")
assert result("F3") =~ expr("
  - L(0)*Lzero(0, -z)*sol(0, 0, -z)
  + L(0, 0)*Lzero(-z)*sol(0, 0, -z)
  - L(0, 0, 0)*sol(0, 0, -z)
  + Lzero(0, 0, -z)*sol(0, 0, -z)
")
assert result("F4") =~ expr("
  - L(0)*Lzero(0, 0, -z)*sol(0, 0, 0, -z)
  + L(0, 0)*Lzero(0, -z)*sol(0, 0, 0, -z)
  - L(0, 0, 0)*Lzero(-z)*sol(0, 0, 0, -z)
  + L(0, 0, 0, 0)*sol(0, 0, 0, -z)
  + Lzero(0, 0, 0, -z)*sol(0, 0, 0, -z)
")
*}}}
*
*{{{ HypIntegrateAtLevelSubstituteAbove_3 :
#include- hyperform.h
*
symbol z;
symbols n1, n2;
cfunction dz;
cfunctions L, Linf, sol1, sol2, den, rat, aux;
*
local F1 = 
  - den(0)*sol1(-z)*dz
;
*
local F2 =
 - den(0)*Linf(-z)*sol1(0, -z)*dz
;
*
local F3 =
 - den(0)*Linf(0, -z)*sol2(0, 0, -z)*dz
;
*
local F4 =
 - den(0)*Linf(0, 0, -z)*sol2(0, 0, 0, -z)*dz
;
*
#call HypIntegrateAtLevelSubstituteAbove(F,1,4,L,Linf,den,rat,aux,dz,n1,n2,sol1,sol2)
print +s;
.end
assert succeeded?
assert result("F1") =~ expr("
  - L(0)*sol1(-z)
")
assert result("F2") =~ expr("
  + L(0, 0)*sol1(0, -z)
")
assert result("F3") =~ expr("
  - L(0, 0, 0)*sol2(0, 0, -z)
")
assert result("F4") =~ expr("
  + L(0, 0, 0, 0)*sol2(0, 0, 0, -z)
")
*}}}
*
*{{{ HypIntegrateAtLevelSubstituteAbove_4 :
#include- hyperform.h
*
symbol z;
symbols n1, n2;
cfunction dz;
cfunctions L, Lzero, Linf, sol1, sol2, den, rat, aux;
*
local F1 = 
  + Lzero(-z)*sol1(-z)
  - den(0)*sol1(-z)*dz
;
*
local F2 =
  + Lzero(0, -z)*sol1(0, -z)
  - den(0)*Linf(-z)*sol1(0, -z)*dz
;
*
local F3 =
  + Lzero(0, 0, -z)*sol2(0, 0, -z)
  - den(0)*Linf(0, -z)*sol2(0, 0, -z)*dz
;
*
local F4 =
  + Lzero(0, 0, 0, -z)*sol2(0, 0, 0, -z)
  - den(0)*Linf(0, 0, -z)*sol2(0, 0, 0, -z)*dz
;
*
#call HypIntegrateAtLevelSubstituteAbove(F,1,4,L,Linf,den,rat,aux,dz,n1,n2,sol1,sol2)
print +s;
.end
assert succeeded?
assert result("F1") =~ expr("
  - L(0)*sol1(-z)
  + Lzero(-z)*sol1(-z)
")
assert result("F2") =~ expr("
  - L(0)*Lzero(-z)*sol1(0, -z)
  + L(0, 0)*sol1(0, -z)
  + Lzero(0, -z)*sol1(0, -z)
")
assert result("F3") =~ expr("
  - L(0)*Lzero(0, -z)*sol2(0, 0, -z)
  + L(0, 0)*Lzero(-z)*sol2(0, 0, -z)
  - L(0, 0, 0)*sol2(0, 0, -z)
  + Lzero(0, 0, -z)*sol2(0, 0, -z)
")
assert result("F4") =~ expr("
  - L(0)*Lzero(0, 0, -z)*sol2(0, 0, 0, -z)
  + L(0, 0)*Lzero(0, -z)*sol2(0, 0, 0, -z)
  - L(0, 0, 0)*Lzero(-z)*sol2(0, 0, 0, -z)
  + L(0, 0, 0, 0)*sol2(0, 0, 0, -z)
  + Lzero(0, 0, 0, -z)*sol2(0, 0, 0, -z)
")
*}}}
