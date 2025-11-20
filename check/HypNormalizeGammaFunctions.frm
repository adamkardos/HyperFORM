*{{{ HypNormalizeGammaFunctions_1 :
#include- hyperform.h
*
symbol ep;
symbols n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(1)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_2 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(2)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_3 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(3)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_4 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(4)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 6
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_5 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(5)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 24
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_6 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,1)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_7 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(2*ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,2)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_8 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(1 - ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,-1)*num(-ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_9 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(2 - ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,-1)*num(-ep)*num(1-ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_10 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(3 - ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,-1)*num(-ep)*num(1-ep)*num(2-ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_11 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(-1 + ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,1)*den(-1+ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_12 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(-2 + ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,1)*den(-1+ep)*den(-2+ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_13 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(-3 + ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,1)*den(-1+ep)*den(-2+ep)*den(-3+ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_14 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(-4 + ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,1)*den(-1+ep)*den(-2+ep)*den(-3+ep)*den(-4+ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_15 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(-1 - 2*ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,-2)*den(-1-2*ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_16 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(-2 - 2*ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,-2)*den(-1-2*ep)*den(-2-2*ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_17 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + Gamma(-3 - 2*ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + Gamma(0,-2)*den(-1-2*ep)*den(-2-2*ep)*den(-3-2*ep)
")
*}}}
*
*
*
*
*
*{{{ HypNormalizeGammaFunctions_18 :
#include- hyperform.h
*
symbol ep;
symbols n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(1)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_19 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(2)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_20 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(3)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/2
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_21 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(4)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/6
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_22 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(5)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/24
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_23 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,1)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_24 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(2*ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,2)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_25 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(1 - ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,-1)*den(-ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_26 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(2 - ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,-1)*den(-ep)*den(1-ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_27 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(3 - ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,-1)*den(-ep)*den(1-ep)*den(2-ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_28 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(-1 + ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,1)*num(-1+ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_29 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(-2 + ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,1)*num(-1+ep)*num(-2+ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_30 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(-3 + ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,1)*num(-1+ep)*num(-2+ep)*num(-3+ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_31 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(-4 + ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,1)*num(-1+ep)*num(-2+ep)*num(-3+ep)*num(-4+ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_32 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(-1 - 2*ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,-2)*num(-1-2*ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_33 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(-2 - 2*ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,-2)*num(-1-2*ep)*num(-2-2*ep)
")
*}}}
*
*{{{ HypNormalizeGammaFunctions_34 :
#include- hyperform.h
*
symbol ep;
symbol n1,n2;
cfunction Gamma;
cfunction invGamma;
cfunctions num,den;
*
local F = 
  + invGamma(-3 - 2*ep)
;
*
#call HypNormalizeGammaFunctions(ep,Gamma,invGamma,num,den,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + invGamma(0,-2)*num(-1-2*ep)*num(-2-2*ep)*num(-3-2*ep)
")
*}}}
