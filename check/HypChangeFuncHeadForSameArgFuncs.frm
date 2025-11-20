*{{{ HypChangeFuncHeadForSameArgFuncs_1 :
#include- hyperform.h
*
symbol z;
symbol a;
symbols n1,n2;
cfunction f,g;
local F = f(-a);
.sort
#call HypChangeFuncHeadForSameArgFuncs(f,g,n1,n2,-a)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g(-a)
")
*}}}
*
*{{{ HypChangeFuncHeadForSameArgFuncs_2 :
#include- hyperform.h
*
symbol z;
symbol a,b;
symbols n1,n2;
cfunction f,g;
local F = f(-a, -b);
.sort
#call HypChangeFuncHeadForSameArgFuncs(f,g,n1,n2,-a)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(-a, -b)
")
*}}}
*
*{{{ HypChangeFuncHeadForSameArgFuncs_3 :
#include- hyperform.h
*
symbol z;
symbol a,b;
symbols n1,n2;
cfunction f,g;
local F = f(-a, -a);
.sort
#call HypChangeFuncHeadForSameArgFuncs(f,g,n1,n2,-a)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g(-a, -a)
")
*}}}
*
*{{{ HypChangeFuncHeadForSameArgFuncs_4 :
#include- hyperform.h
*
symbol z;
symbol a,b,c;
symbols n1,n2;
cfunction f,g;
local F = f(-a, -b, -c);
.sort
#call HypChangeFuncHeadForSameArgFuncs(f,g,n1,n2,-a)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(-a, -b, -c)
")
*}}}
*
*{{{ HypChangeFuncHeadForSameArgFuncs_5 :
#include- hyperform.h
*
symbol z;
symbol a,b,c;
symbols n1,n2;
cfunction f,g;
local F = f(-a, -a, -b);
.sort
#call HypChangeFuncHeadForSameArgFuncs(f,g,n1,n2,-a)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + f(-a, -a, -b)
")
*}}}
*
*{{{ HypChangeFuncHeadForSameArgFuncs_6 :
#include- hyperform.h
*
symbol z;
symbol a,b,c;
symbols n1,n2;
cfunction f,g;
local F = f(-a, -a, -a);
.sort
#call HypChangeFuncHeadForSameArgFuncs(f,g,n1,n2,-a)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + g(-a, -a, -a)
")
*}}}
