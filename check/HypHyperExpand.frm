*{{{ HypHyperExpand_1 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L;
local F = L(a);
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPden(a)*z
  - 1/2*HYPden(a)^2*z^2
  - 1/3*HYPden(a)^3*z^3
  - 1/4*HYPden(a)^4*z^4
  - 1/5*HYPden(a)^5*z^5
")
*}}}
*
*{{{ HypHyperExpand_2 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L;
local F = L(0, a);
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPden(a)*z
  - 1/4*HYPden(a)^2*z^2
  - 1/9*HYPden(a)^3*z^3
  - 1/16*HYPden(a)^4*z^4
  - 1/25*HYPden(a)^5*z^5
")
*}}}
*
*{{{ HypHyperExpand_3 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L;
local F = L(0, 0, a);
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPden(a)*z
  - 1/8*HYPden(a)^2*z^2
  - 1/27*HYPden(a)^3*z^3
  - 1/64*HYPden(a)^4*z^4
  - 1/125*HYPden(a)^5*z^5
")
*}}}
*
*{{{ HypHyperExpand_4 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L;
local F = L(0, 0, 0, a);
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPden(a)*z
  - 1/16*HYPden(a)^2*z^2
  - 1/81*HYPden(a)^3*z^3
  - 1/256*HYPden(a)^4*z^4
  - 1/625*HYPden(a)^5*z^5
")
*}}}
*
*{{{ HypHyperExpand_5 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L;
local F = L(a)*HYPdenx;
.sort
#call HypHyperExpand(z, L, HYPdenx, 1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPden(a)*HYPdenx*z
")
*}}}
*
*{{{ HypHyperExpand_6 :
#include- hyperform.h
*
symbol z;
symbol a;
cfunction L;
local F = L(a)*HYPdenx^2;
.sort
#call HypHyperExpand(z, L, HYPdenx, 1)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 1/2*HYPden(a)^2*HYPdenx^2*z^2
  - HYPden(a)*HYPdenx^2*z
")
*}}}
*
*{{{ HypHyperExpand_7 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L;
local F = L(a, b);
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/5*HYPden(a)^4*HYPden(b)*z^5
  + 1/4*HYPden(a)^3*HYPden(b)*z^4
  + 1/10*HYPden(a)^3*HYPden(b)^2*z^5
  + 1/3*HYPden(a)^2*HYPden(b)*z^3
  + 1/8*HYPden(a)^2*HYPden(b)^2*z^4
  + 1/15*HYPden(a)^2*HYPden(b)^3*z^5
  + 1/2*HYPden(a)*HYPden(b)*z^2
  + 1/6*HYPden(a)*HYPden(b)^2*z^3
  + 1/12*HYPden(a)*HYPden(b)^3*z^4
  + 1/20*HYPden(a)*HYPden(b)^4*z^5
")
*}}}
*
*{{{ HypHyperExpand_8 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L;
local F = L(0, a, b);
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  + 1/25*HYPden(a)^4*HYPden(b)*z^5
  + 1/16*HYPden(a)^3*HYPden(b)*z^4
  + 1/50*HYPden(a)^3*HYPden(b)^2*z^5
  + 1/9*HYPden(a)^2*HYPden(b)*z^3
  + 1/32*HYPden(a)^2*HYPden(b)^2*z^4
  + 1/75*HYPden(a)^2*HYPden(b)^3*z^5
  + 1/4*HYPden(a)*HYPden(b)*z^2
  + 1/18*HYPden(a)*HYPden(b)^2*z^3
  + 1/48*HYPden(a)*HYPden(b)^3*z^4
  + 1/100*HYPden(a)*HYPden(b)^4*z^5
")
*}}}
*
*{{{ HypHyperExpand_9 :
#include- hyperform.h
*
symbol z;
symbol a, b, c;
cfunction L;
local F = L(a, b, c);
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - 1/10*HYPden(a)^3*HYPden(b)*HYPden(c)*z^5
  - 1/15*HYPden(a)^2*HYPden(b)^2*HYPden(c)*z^5
  - 1/8*HYPden(a)^2*HYPden(b)*HYPden(c)*z^4
  - 1/30*HYPden(a)^2*HYPden(b)*HYPden(c)^2*z^5
  - 1/20*HYPden(a)*HYPden(b)^3*HYPden(c)*z^5
  - 1/12*HYPden(a)*HYPden(b)^2*HYPden(c)*z^4
  - 1/40*HYPden(a)*HYPden(b)^2*HYPden(c)^2*z^5
  - 1/6*HYPden(a)*HYPden(b)*HYPden(c)*z^3
  - 1/24*HYPden(a)*HYPden(b)*HYPden(c)^2*z^4
  - 1/60*HYPden(a)*HYPden(b)*HYPden(c)^3*z^5
")
*}}}
*
*{{{ HypHyperExpand_10 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L;
local F = L(HYPrat(-a, b));
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPden(HYPrat(-a, b))*z
  - 1/2*HYPden(HYPrat(-a, b))^2*z^2
  - 1/3*HYPden(HYPrat(-a, b))^3*z^3
  - 1/4*HYPden(HYPrat(-a, b))^4*z^4
  - 1/5*HYPden(HYPrat(-a, b))^5*z^5
")
*}}}
*
*{{{ HypHyperExpand_11 :
#include- hyperform.h
*
symbol z;
symbol a, b;
cfunction L;
local F = L(0, HYPrat(-a, b));
.sort
#call HypHyperExpand(z, L,,0)
print +s;
.end
assert succeeded?
assert result("F") =~ expr("
  - HYPden(HYPrat(-a, b))*z
  - 1/4*HYPden(HYPrat(-a, b))^2*z^2
  - 1/9*HYPden(HYPrat(-a, b))^3*z^3
  - 1/16*HYPden(HYPrat(-a, b))^4*z^4
  - 1/25*HYPden(HYPrat(-a, b))^5*z^5
")
*}}}
