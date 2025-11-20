*{{{ HypSyncNumDenOrder_1 :
#include- hyperform.h
*
cfunctions rat,num,den,aux;
symbols n1,n2;
symbols a,b,c;
*
local F = 
  + rat(num(a), den(b, 0))
;
*
.sort
*
#call HypSyncNumDenOrder(rat,num,den,aux,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(num(a, 0), den(b, 0))
")
*}}}
*
*{{{ HypSyncNumDenOrder_2 :
#include- hyperform.h
*
cfunctions rat,num,den,aux;
symbols n1,n2;
symbols a,b,c;
*
local F = 
  + rat(num(a, 0), den(b))
;
*
.sort
*
#call HypSyncNumDenOrder(rat,num,den,aux,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(num(a, 0), den(b, 0))
")
*}}}
*
*{{{ HypSyncNumDenOrder_3 :
#include- hyperform.h
*
cfunctions rat,num,den,aux;
symbols n1,n2;
symbols a,b,c;
*
local F = 
  + rat(num(a, c), den(b))
;
*
.sort
*
#call HypSyncNumDenOrder(rat,num,den,aux,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(num(a, c), den(b, 0))
")
*}}}
*
*{{{ HypSyncNumDenOrder_4 :
#include- hyperform.h
*
cfunctions rat,num,den,aux;
symbols n1,n2;
symbols a,b,c,d;
*
local F = 
  + rat(num(a), den(b, 0, c))
;
*
.sort
*
#call HypSyncNumDenOrder(rat,num,den,aux,n1,n2)
.sort
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + rat(num(a, 0, 0), den(b, 0, c))
")
*}}}
