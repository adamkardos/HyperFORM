*{{{ HypLambdaExpand_1 :
#include- hyperform.h
*
symbol lambda;
symbol n1;
cfunction ord;
cfunctions den,num;
*
local F = lambda*ord(0);
*
.sort
#call HypLambdaExpand(lambda,ord,den,num,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  0
")
*}}}
*
*{{{ HypLambdaExpand_2 :
#include- hyperform.h
*
symbol lambda;
symbol n1;
cfunction ord;
cfunctions den,num;
*
local F = lambda*ord(1);
*
.sort
#call HypLambdaExpand(lambda,ord,den,num,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + lambda
")
*}}}
*
*{{{ HypLambdaExpand_3 :
#include- hyperform.h
*
symbol lambda;
symbol n1;
cfunction ord;
cfunctions den,num;
*
local F = 1/lambda*ord(1);
*
.sort
#call HypLambdaExpand(lambda,ord,den,num,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + lambda^-1
")
*}}}
*
*{{{ HypLambdaExpand_4 :
#include- hyperform.h
*
symbol lambda;
symbol n1;
cfunction ord;
cfunctions den,num;
*
local F = den(2 + lambda)*ord(0);
*
.sort
#call HypLambdaExpand(lambda,ord,den,num,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/2
")
*}}}
*
*{{{ HypLambdaExpand_5 :
#include- hyperform.h
*
symbol lambda;
symbol n1;
cfunction ord;
cfunctions den,num;
*
local F = den(2 + lambda - lambda^2)*ord(0);
*
.sort
#call HypLambdaExpand(lambda,ord,den,num,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/2
")
*}}}
*
*{{{ HypLambdaExpand_6 :
#include- hyperform.h
*
symbol lambda;
symbol n1;
cfunction ord;
cfunctions den,num;
*
local F = den(2 + lambda + lambda^2)*ord(0);
*
.sort
#call HypLambdaExpand(lambda,ord,den,num,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/2
")
*}}}
*
*{{{ HypLambdaExpand_7 :
#include- hyperform.h
*
symbol lambda;
symbol n1;
cfunction ord;
cfunctions den,num;
*
local F = den(2 + lambda + lambda^2)*ord(2);
*
.sort
#call HypLambdaExpand(lambda,ord,den,num,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/2 
  - 1/4*lambda 
  - 1/8*lambda^2
")
*}}}
*
*{{{ HypLambdaExpand_8 :
#include- hyperform.h
*
symbol lambda;
symbol n1;
cfunction ord;
cfunctions den,num;
*
local F = den(3 - 1/lambda)*den(2 + lambda + lambda^2)*ord(2);
*
.sort
#call HypLambdaExpand(lambda,ord,den,num,n1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 1/2*lambda 
  - 5/4*lambda^2
")
*}}}
