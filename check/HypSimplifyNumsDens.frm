*{{{ HypSimplifyNumsDens_1 :
#include- hyperform.h
symbols z1,...,z5;
symbol n1;
cfunctions num,den;
*
local F = 
  num(z1*(z2 + z3))
;
*
.sort
*
#call HypSimplifyNumsDens(num,den,n1)
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + num(z1)*
    num(z3 + z2)
")
*}}}
*
*{{{ HypSimplifyNumsDens_2 :
#include- hyperform.h
symbols z1,...,z5;
symbol n1;
cfunctions num,den;
*
local F = 
  den(z2*(z3 + z4))
;
*
.sort
*
#call HypSimplifyNumsDens(num,den,n1)
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + den(z2)*
    den(z4 + z3)
")
*}}}
*
*{{{ HypSimplifyNumsDens_3 :
#include- hyperform.h
symbols z1,...,z5;
symbol n1;
cfunctions num,den;
*
local F = 
  num(2*(z1 + z2))
;
*
.sort
*
#call HypSimplifyNumsDens(num,den,n1)
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + 2*num(z2 + z1)
")
*}}}
*
*{{{ HypSimplifyNumsDens_4 :
#include- hyperform.h
symbols z1,...,z5;
symbol n1;
cfunctions num,den;
*
local F = 
  den(2*(z1 + z2))
;
*
.sort
*
#call HypSimplifyNumsDens(num,den,n1)
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/2*den(z2 + z1)
")
*}}}
*
*{{{ HypSimplifyNumsDens_5 :
#include- hyperform.h
symbols z1,...,z5;
symbol n1;
cfunctions num,den;
*
local F = 
  num(z1*(z2 + z3))*
  den(z2*(z3 + z4))*
  den(z3*(z2 + z4 + z5))
;
*
.sort
*
#call HypSimplifyNumsDens(num,den,n1)
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + num(z1)*
    num(z3 + z2)*
    den(z2)*
    den(z3)*
    den(z4 + z3)*
    den(z5 + z4 + z2)
")
*}}}
*
*{{{ HypSimplifyNumsDens_6 :
#include- hyperform.h
symbols z1,...,z5;
symbol n1;
cfunctions num,den;
*
local F = 
  num(z1*(z2 + z3))*
  den(z1*(z3 + z4))*
  den(z3*(z2 + z4 + z5))
;
*
.sort
*
#call HypSimplifyNumsDens(num,den,n1)
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + num(z3 + z2)*
    den(z3)*
    den(z4 + z3)*
    den(z5 + z4 + z2)
")
*}}}
*
*{{{ HypSimplifyNumsDens_7 :
#include- hyperform.h
symbols z1,...,z5;
symbol n1;
cfunctions num,den;
*
local F = 
  num(z1*(z2 + z3))*
  den(z2*(z2 + z3))*
  den(z3*(z2 + z4 + z5))
;
*
.sort
*
#call HypSimplifyNumsDens(num,den,n1)
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + num(z1)*
    den(z2)*
    den(z3)*
    den(z5 + z4 + z2)
")
*}}}
*
*{{{ HypSimplifyNumsDens_8 :
#include- hyperform.h
symbols z1,...,z5;
symbol n1;
cfunctions num,den;
*
local F = 
  num(z1*(z2 + z3))*
  den(z1*(z2 + z3))*
  den(z3*(z2 + z4 + z5))
;
*
.sort
*
#call HypSimplifyNumsDens(num,den,n1)
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("
  + den(z3)*
    den(z5 + z4 + z2)
")
*}}}
