*{{{ HypAutoRegularize_1 :
* G-integral:
#include- hyperform.h
*
#redefine HYPNPARAMS "2"
*
local F = 
  + HYPpow(HYPz1, - HYPep)*HYPpow(HYPz2, - HYPep)*HYPpow(HYPz2 + HYPz1, - 2 + 2*HYPep)
;
*
.sort
*
#call HypAutoRegularize(F,)
*
.sort
*
local diff = 
  F
  -
  (
    + HYPpow(HYPz1, - HYPep)*HYPpow(HYPz2, - HYPep)*HYPpow(HYPz2 + HYPz1, - 2 + 2*HYPep)

  )
;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypAutoRegularize_2 :
* T2-integral:
#include- hyperform.h
*
#redefine HYPNPARAMS "4"
*
local F = 
  + HYPpow(HYPz1,1)*
    HYPpow(HYPz2, - 1 - 2*HYPep)*
    HYPpow(HYPz3*HYPz4 + HYPz1*HYPz4 + HYPz1*HYPz3, - 1 - 2*HYPep)*
    HYPpow(HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + HYPz1*HYPz4 + HYPz1*HYPz3, - 1 + 3*HYPep)

;
*
.sort
*
#call HypAutoRegularize(F,)
*
.sort
*
local diff = 
  F
  -
  (
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 1 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz1*HYPz4 + HYPz1*HYPz3, - 1 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + HYPz1*HYPz4 + HYPz1
      *HYPz3, - 2 + 3*HYPep)
         *HYPpow(2*HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + 2*HYPz1*HYPz4 + 2
      *HYPz1*HYPz3,1)
         *HYPdenep(2*HYPep^2)
         *HYPnumep(3*HYPep^2 - 7*HYPep + 2)
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 1 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz1*HYPz4 + HYPz1*HYPz3, - 1 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + HYPz1*HYPz4 + HYPz1
      *HYPz3, - 1 + 3*HYPep)
         *HYPdenep(HYPep^2)
         *HYPnumep( - 3*HYPep^2 + 7*HYPep - 2)
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 1 - 2*HYPep)
         *HYPpow(HYPz2 + HYPz1,1)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz3*HYPz4 + HYPz1*HYPz4 + HYPz1*HYPz3, - 1 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + HYPz1*HYPz4 + HYPz1
      *HYPz3, - 3 + 3*HYPep)
         *HYPpow(2*HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + 2*HYPz1*HYPz4 + 2
      *HYPz1*HYPz3,1)
         *HYPdenep(2*HYPep^2)
         *HYPnumep( - 9*HYPep^2 + 9*HYPep - 2)
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 2*HYPep)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz3*HYPz4 + HYPz1*HYPz4 + HYPz1*HYPz3, - 1 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + HYPz1*HYPz4 + HYPz1
      *HYPz3, - 2 + 3*HYPep)
         *HYPdenep(2*HYPep^2)
         *HYPnumep(18*HYPep^2 - 15*HYPep + 3)
       +
         HYPpow(HYPz1,2)
         *HYPpow(HYPz2, - 1 - 2*HYPep)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz3*HYPz4 + HYPz1*HYPz4 + HYPz1*HYPz3, - 2 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + HYPz1*HYPz4 + HYPz1
      *HYPz3, - 2 + 3*HYPep)
         *HYPpow(2*HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + 2*HYPz1*HYPz4 + 2
      *HYPz1*HYPz3,1)
         *HYPdenep(2*HYPep^2)
         *HYPnumep(6*HYPep^2 + HYPep - 1)
       +
         HYPpow(HYPz1,2)
         *HYPpow(HYPz2, - 1 - 2*HYPep)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz3*HYPz4 + HYPz1*HYPz4 + HYPz1*HYPz3, - 2 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + HYPz1*HYPz4 + HYPz1
      *HYPz3, - 1 + 3*HYPep)
         *HYPdenep(HYPep^2)
         *HYPnumep( - 6*HYPep^2 - HYPep + 1)
       +
         HYPpow(HYPz1,2)
         *HYPpow(HYPz2, - 1 - 2*HYPep)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz3*HYPz4 + HYPz1*HYPz4 + HYPz1*HYPz3, - 1 - 2*HYPep)
         *HYPpow(HYPz3*HYPz4 + HYPz2*HYPz4 + HYPz2*HYPz3 + HYPz1*HYPz4 + HYPz1
      *HYPz3, - 2 + 3*HYPep)
         *HYPdenep(HYPep^2)
         *HYPnumep(9*HYPep^2 - 9*HYPep + 2)
  )
;
*
id HYPnumep(HYPn1?) = HYPratep(HYPn1,1);
id HYPdenep(HYPn1?) = HYPratep(1,HYPn1);
*
.sort
polyratfun HYPratep;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypAutoRegularize_3 :
* T3-integral:
#include- hyperform.h
*
#redefine HYPNPARAMS "4"
*
local F = 
       + HYPpow(HYPz2 + HYPz1, - 2 + 3*HYPep)*
         HYPpow(HYPz4 + HYPz3, - 2 + 3*HYPep)*
         HYPpow(HYPz2*HYPz3*HYPz4 + HYPz1*HYPz3*HYPz4 + HYPz1*HYPz2*HYPz4 + HYPz1*HYPz2*HYPz3, - 2*HYPep)
;
*
.sort
*
#call HypAutoRegularize(F,)
*
.sort
*
local diff = 
  F
  -
  (
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 3*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 3*HYPep)
         *HYPpow(HYPz2*HYPz3*HYPz4 + HYPz1*HYPz3*HYPz4 + HYPz1*HYPz2*HYPz4 + 
      HYPz1*HYPz2*HYPz3, - 2 - 2*HYPep)
         *HYPpow(HYPz2*HYPz3*HYPz4 + HYPz1*HYPz3*HYPz4 + 2*HYPz1*HYPz2*HYPz4
       + 2*HYPz1*HYPz2*HYPz3,1)
         *HYPpow(2*HYPz2*HYPz3*HYPz4 + 2*HYPz1*HYPz3*HYPz4 + HYPz1*HYPz2*HYPz4
       + HYPz1*HYPz2*HYPz3,1)
         *HYPdenep(HYPep)
         *HYPnumep(4*HYPep + 2)
       -
         8
         *HYPpow(HYPz2 + HYPz1, - 2 + 3*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 3*HYPep)
         *HYPpow(HYPz2*HYPz3*HYPz4 + HYPz1*HYPz3*HYPz4 + HYPz1*HYPz2*HYPz4 + 
      HYPz1*HYPz2*HYPz3, - 1 - 2*HYPep)
         *HYPpow(HYPz2*HYPz3*HYPz4 + HYPz1*HYPz3*HYPz4 + 2*HYPz1*HYPz2*HYPz4
       + 2*HYPz1*HYPz2*HYPz3,1)
       -
         8
         *HYPpow(HYPz2 + HYPz1, - 2 + 3*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 3*HYPep)
         *HYPpow(HYPz2*HYPz3*HYPz4 + HYPz1*HYPz3*HYPz4 + HYPz1*HYPz2*HYPz4 + 
      HYPz1*HYPz2*HYPz3, - 1 - 2*HYPep)
         *HYPpow(2*HYPz2*HYPz3*HYPz4 + 2*HYPz1*HYPz3*HYPz4 + HYPz1*HYPz2*HYPz4
       + HYPz1*HYPz2*HYPz3,1)
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 3*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 3*HYPep)
         *HYPpow(HYPz2*HYPz3*HYPz4 + HYPz1*HYPz3*HYPz4 + HYPz1*HYPz2*HYPz4 + 
      HYPz1*HYPz2*HYPz3, - 2*HYPep)
         *HYPdenep(HYPep)
         *HYPnumep(16*HYPep - 4)
  )
;
*
id HYPnumep(HYPn1?) = HYPratep(HYPn1,1);
id HYPdenep(HYPn1?) = HYPratep(1,HYPn1);
*
.sort
polyratfun HYPratep;
*
.sort
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypAutoRegularize_4 :
* O2-integral:
#include- hyperform.h
*
#redefine HYPNPARAMS "7"
*
local F = 
       +
         HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 +
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz7 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz4*
      HYPz7 + HYPz2*HYPz3*HYPz7 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz6 +
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5 + HYPz1*HYPz2*HYPz6 +
      HYPz1*HYPz2*HYPz4 + HYPz1*HYPz2*HYPz3, - 1 + 4*HYPep)
         *HYPpow(HYPz3*HYPz5*HYPz6*HYPz7 + HYPz3*HYPz4*HYPz6*HYPz7 + HYPz3*
      HYPz4*HYPz5*HYPz7 + HYPz2*HYPz5*HYPz6*HYPz7 + HYPz2*HYPz4*HYPz6*HYPz7 +
      HYPz2*HYPz4*HYPz5*HYPz7 + HYPz2*HYPz3*HYPz5*HYPz7 + HYPz2*HYPz3*HYPz4*
      HYPz7 + HYPz1*HYPz5*HYPz6*HYPz7 + HYPz1*HYPz4*HYPz6*HYPz7 + HYPz1*HYPz4*
      HYPz5*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*
      HYPz3*HYPz4*HYPz7 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz5 +
      HYPz1*HYPz2*HYPz5*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz3*HYPz5 + HYPz1*HYPz2*HYPz3*HYPz4, - 1 - 3*HYPep
      )
;
*
.sort
*
#call HypAutoRegularize(F,)
*
.sort
*
local diff = 
  F
  -
  (
       +
         HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz7 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz4*
      HYPz7 + HYPz2*HYPz3*HYPz7 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz6 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5 + HYPz1*HYPz2*HYPz6 + 
      HYPz1*HYPz2*HYPz4 + HYPz1*HYPz2*HYPz3, - 2 + 4*HYPep)
         *HYPpow(2*HYPz5*HYPz6*HYPz7 + 2*HYPz4*HYPz6*HYPz7 + 2*HYPz4*HYPz5*
      HYPz7 + 2*HYPz3*HYPz6*HYPz7 + 2*HYPz3*HYPz5*HYPz7 + 2*HYPz2*HYPz6*HYPz7
       + 2*HYPz2*HYPz4*HYPz7 + 2*HYPz2*HYPz3*HYPz7 + HYPz1*HYPz6*HYPz7 + 2*
      HYPz1*HYPz5*HYPz6 + HYPz1*HYPz4*HYPz7 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + HYPz1*HYPz3*HYPz7 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*
      HYPz5 + 2*HYPz1*HYPz2*HYPz6 + 2*HYPz1*HYPz2*HYPz4 + 2*HYPz1*HYPz2*HYPz3,
      1)
         *HYPpow(HYPz3*HYPz5*HYPz6*HYPz7 + HYPz3*HYPz4*HYPz6*HYPz7 + HYPz3*
      HYPz4*HYPz5*HYPz7 + HYPz2*HYPz5*HYPz6*HYPz7 + HYPz2*HYPz4*HYPz6*HYPz7 + 
      HYPz2*HYPz4*HYPz5*HYPz7 + HYPz2*HYPz3*HYPz5*HYPz7 + HYPz2*HYPz3*HYPz4*
      HYPz7 + HYPz1*HYPz5*HYPz6*HYPz7 + HYPz1*HYPz4*HYPz6*HYPz7 + HYPz1*HYPz4*
      HYPz5*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*
      HYPz3*HYPz4*HYPz7 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz5 + 
      HYPz1*HYPz2*HYPz5*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz3*HYPz5 + HYPz1*HYPz2*HYPz3*HYPz4, - 1 - 3*HYPep
      )
         *HYPdenep(HYPep)
         *HYPnumep(4*HYPep - 1)
       +
         HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz7 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz4*
      HYPz7 + HYPz2*HYPz3*HYPz7 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz6 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5 + HYPz1*HYPz2*HYPz6 + 
      HYPz1*HYPz2*HYPz4 + HYPz1*HYPz2*HYPz3, - 1 + 4*HYPep)
         *HYPpow(HYPz3*HYPz5*HYPz6*HYPz7 + HYPz3*HYPz4*HYPz6*HYPz7 + HYPz3*
      HYPz4*HYPz5*HYPz7 + HYPz2*HYPz5*HYPz6*HYPz7 + HYPz2*HYPz4*HYPz6*HYPz7 + 
      HYPz2*HYPz4*HYPz5*HYPz7 + HYPz2*HYPz3*HYPz5*HYPz7 + HYPz2*HYPz3*HYPz4*
      HYPz7 + HYPz1*HYPz5*HYPz6*HYPz7 + HYPz1*HYPz4*HYPz6*HYPz7 + HYPz1*HYPz4*
      HYPz5*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*
      HYPz3*HYPz4*HYPz7 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz5 + 
      HYPz1*HYPz2*HYPz5*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz3*HYPz5 + HYPz1*HYPz2*HYPz3*HYPz4, - 2 - 3*HYPep
      )
         *HYPpow(3*HYPz3*HYPz5*HYPz6*HYPz7 + 3*HYPz3*HYPz4*HYPz6*HYPz7 + 3*
      HYPz3*HYPz4*HYPz5*HYPz7 + 3*HYPz2*HYPz5*HYPz6*HYPz7 + 3*HYPz2*HYPz4*
      HYPz6*HYPz7 + 3*HYPz2*HYPz4*HYPz5*HYPz7 + 3*HYPz2*HYPz3*HYPz5*HYPz7 + 3*
      HYPz2*HYPz3*HYPz4*HYPz7 + 2*HYPz1*HYPz5*HYPz6*HYPz7 + 2*HYPz1*HYPz4*
      HYPz6*HYPz7 + 2*HYPz1*HYPz4*HYPz5*HYPz7 + 2*HYPz1*HYPz3*HYPz5*HYPz7 + 3*
      HYPz1*HYPz3*HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz4*HYPz7 + 3*HYPz1*HYPz3*
      HYPz4*HYPz6 + 3*HYPz1*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz5*HYPz6 + 3*
      HYPz1*HYPz2*HYPz4*HYPz6 + 3*HYPz1*HYPz2*HYPz4*HYPz5 + 3*HYPz1*HYPz2*
      HYPz3*HYPz5 + 3*HYPz1*HYPz2*HYPz3*HYPz4,1)
         *HYPdenep(HYPep)
         *HYPnumep( - 3*HYPep - 1)
       +
         HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz7 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz4*
      HYPz7 + HYPz2*HYPz3*HYPz7 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz6 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5 + HYPz1*HYPz2*HYPz6 + 
      HYPz1*HYPz2*HYPz4 + HYPz1*HYPz2*HYPz3, - 1 + 4*HYPep)
         *HYPpow(HYPz3*HYPz5*HYPz6*HYPz7 + HYPz3*HYPz4*HYPz6*HYPz7 + HYPz3*
      HYPz4*HYPz5*HYPz7 + HYPz2*HYPz5*HYPz6*HYPz7 + HYPz2*HYPz4*HYPz6*HYPz7 + 
      HYPz2*HYPz4*HYPz5*HYPz7 + HYPz2*HYPz3*HYPz5*HYPz7 + HYPz2*HYPz3*HYPz4*
      HYPz7 + HYPz1*HYPz5*HYPz6*HYPz7 + HYPz1*HYPz4*HYPz6*HYPz7 + HYPz1*HYPz4*
      HYPz5*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*
      HYPz3*HYPz4*HYPz7 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz5 + 
      HYPz1*HYPz2*HYPz5*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz3*HYPz5 + HYPz1*HYPz2*HYPz3*HYPz4, - 1 - 3*HYPep
      )
         *HYPdenep(HYPep)
         *HYPnumep(HYPep + 5)
  )
;
*
id HYPnumep(HYPn1?) = HYPratep(HYPn1,1);
id HYPdenep(HYPn1?) = HYPratep(1,HYPn1);
*
.sort
polyratfun HYPratep;
*
.sort
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypAutoRegularize_5 :
* O3-integral:
#include- hyperform.h
*
#redefine HYPNPARAMS "7"
*
local F = 
       +
         HYPpow(HYPz7 + HYPz6, - 1 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5 + HYPz3*HYPz5 + HYPz3*HYPz4 + HYPz2*HYPz5 + HYPz2
      *HYPz4 + HYPz1*HYPz5 + HYPz1*HYPz3 + HYPz1*HYPz2, - 1 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6*HYPz7 + HYPz3*
      HYPz4*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz6*HYPz7 + HYPz2*HYPz4*HYPz6*HYPz7 +
      HYPz2*HYPz4*HYPz5*HYPz7 + HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*
      HYPz7 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz7 + HYPz2*HYPz3*
      HYPz4*HYPz6 + HYPz1*HYPz5*HYPz6*HYPz7 + HYPz1*HYPz4*HYPz5*HYPz7 + HYPz1*
      HYPz4*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz6*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz7 +
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz7 + HYPz1*HYPz3*HYPz4*
      HYPz6 + HYPz1*HYPz2*HYPz6*HYPz7 + HYPz1*HYPz2*HYPz4*HYPz7 + HYPz1*HYPz2*
      HYPz4*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz7 + HYPz1*HYPz2*HYPz3*HYPz6, - 1 - 3
      *HYPep)
;
*
.sort
*
#call HypAutoRegularize(F,)
*
.sort
*
local diff = 
  F
  -
  (
       +
         HYPpow(HYPz7 + HYPz6, - 1 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5 + HYPz3*HYPz5 + HYPz3*HYPz4 + HYPz2*HYPz5 + HYPz2
      *HYPz4 + HYPz1*HYPz5 + HYPz1*HYPz3 + HYPz1*HYPz2, - 1 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6*HYPz7 + HYPz3*
      HYPz4*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz6*HYPz7 + HYPz2*HYPz4*HYPz6*HYPz7 + 
      HYPz2*HYPz4*HYPz5*HYPz7 + HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*
      HYPz7 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz7 + HYPz2*HYPz3*
      HYPz4*HYPz6 + HYPz1*HYPz5*HYPz6*HYPz7 + HYPz1*HYPz4*HYPz5*HYPz7 + HYPz1*
      HYPz4*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz6*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz7 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz7 + HYPz1*HYPz3*HYPz4*
      HYPz6 + HYPz1*HYPz2*HYPz6*HYPz7 + HYPz1*HYPz2*HYPz4*HYPz7 + HYPz1*HYPz2*
      HYPz4*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz7 + HYPz1*HYPz2*HYPz3*HYPz6, - 2 - 3
      *HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6*HYPz7 + 2*HYPz3*HYPz5*HYPz6*HYPz7 + 2*
      HYPz3*HYPz4*HYPz6*HYPz7 + 2*HYPz2*HYPz5*HYPz6*HYPz7 + 2*HYPz2*HYPz4*
      HYPz6*HYPz7 + 3*HYPz2*HYPz4*HYPz5*HYPz7 + 3*HYPz2*HYPz4*HYPz5*HYPz6 + 3*
      HYPz2*HYPz3*HYPz5*HYPz7 + 3*HYPz2*HYPz3*HYPz5*HYPz6 + 3*HYPz2*HYPz3*
      HYPz4*HYPz7 + 3*HYPz2*HYPz3*HYPz4*HYPz6 + 2*HYPz1*HYPz5*HYPz6*HYPz7 + 3*
      HYPz1*HYPz4*HYPz5*HYPz7 + 3*HYPz1*HYPz4*HYPz5*HYPz6 + 2*HYPz1*HYPz3*
      HYPz6*HYPz7 + 3*HYPz1*HYPz3*HYPz5*HYPz7 + 3*HYPz1*HYPz3*HYPz5*HYPz6 + 3*
      HYPz1*HYPz3*HYPz4*HYPz7 + 3*HYPz1*HYPz3*HYPz4*HYPz6 + 2*HYPz1*HYPz2*
      HYPz6*HYPz7 + 3*HYPz1*HYPz2*HYPz4*HYPz7 + 3*HYPz1*HYPz2*HYPz4*HYPz6 + 3*
      HYPz1*HYPz2*HYPz3*HYPz7 + 3*HYPz1*HYPz2*HYPz3*HYPz6,1)
         *HYPdenep(HYPep)
         *HYPnumep( - 3*HYPep - 1)
       +
         HYPpow(HYPz7 + HYPz6, - 1 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5 + HYPz3*HYPz5 + HYPz3*HYPz4 + HYPz2*HYPz5 + HYPz2
      *HYPz4 + HYPz1*HYPz5 + HYPz1*HYPz3 + HYPz1*HYPz2, - 1 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6*HYPz7 + HYPz3*
      HYPz4*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz6*HYPz7 + HYPz2*HYPz4*HYPz6*HYPz7 + 
      HYPz2*HYPz4*HYPz5*HYPz7 + HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*
      HYPz7 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz7 + HYPz2*HYPz3*
      HYPz4*HYPz6 + HYPz1*HYPz5*HYPz6*HYPz7 + HYPz1*HYPz4*HYPz5*HYPz7 + HYPz1*
      HYPz4*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz6*HYPz7 + HYPz1*HYPz3*HYPz5*HYPz7 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz7 + HYPz1*HYPz3*HYPz4*
      HYPz6 + HYPz1*HYPz2*HYPz6*HYPz7 + HYPz1*HYPz2*HYPz4*HYPz7 + HYPz1*HYPz2*
      HYPz4*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz7 + HYPz1*HYPz2*HYPz3*HYPz6, - 1 - 3
      *HYPep)
         *HYPdenep(HYPep)
         *HYPnumep(9*HYPep + 3)
  )
;
*
id HYPnumep(HYPn1?) = HYPratep(HYPn1,1);
id HYPdenep(HYPn1?) = HYPratep(1,HYPn1);
*
.sort
polyratfun HYPratep;
*
.sort
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypAutoRegularize_6 :
* O4-integral:
#include- hyperform.h
*
#redefine HYPNPARAMS "7"
*
local F = 
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 +
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz7 +
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 +
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz7 +
      HYPz2*HYPz4*HYPz7 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz7 + HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz6*HYPz7 +
      HYPz1*HYPz5*HYPz7 + HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,4*
      HYPep)
;
*
.sort
*
#call HypAutoRegularize(F,)
*
.sort
*
local diff = 
  F
  -
  (
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz7 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz7 + 
      HYPz2*HYPz4*HYPz7 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz7 + HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz6*HYPz7 + 
      HYPz1*HYPz5*HYPz7 + HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2
       + 4*HYPep)
         *HYPpow(3*HYPz5*HYPz6*HYPz7 + 3*HYPz4*HYPz5*HYPz7 + 3*HYPz4*HYPz5*
      HYPz6 + 3*HYPz3*HYPz6*HYPz7 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*HYPz7
       + 3*HYPz3*HYPz4*HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz6*HYPz7 + 2*
      HYPz2*HYPz5*HYPz7 + 2*HYPz2*HYPz4*HYPz7 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*
      HYPz4*HYPz5 + 2*HYPz2*HYPz3*HYPz7 + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*
      HYPz5 + 3*HYPz1*HYPz6*HYPz7 + 3*HYPz1*HYPz5*HYPz7 + 3*HYPz1*HYPz4*HYPz7
       + 3*HYPz1*HYPz4*HYPz6 + 3*HYPz1*HYPz4*HYPz5 + 3*HYPz1*HYPz3*HYPz7 + 3*
      HYPz1*HYPz3*HYPz6 + 3*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep + 3)
         *HYPnumep(16*HYPep - 4)
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz7 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz7 + 
      HYPz2*HYPz4*HYPz7 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz7 + HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz6*HYPz7 + 
      HYPz1*HYPz5*HYPz7 + HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1
       + 4*HYPep)
         *HYPpow(3*HYPz5*HYPz6*HYPz7 + 3*HYPz4*HYPz5*HYPz7 + 3*HYPz4*HYPz5*
      HYPz6 + 3*HYPz3*HYPz6*HYPz7 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*HYPz7
       + 3*HYPz3*HYPz4*HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz6*HYPz7 + 2*
      HYPz2*HYPz5*HYPz7 + 2*HYPz2*HYPz4*HYPz7 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*
      HYPz4*HYPz5 + 2*HYPz2*HYPz3*HYPz7 + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*
      HYPz5 + 2*HYPz1*HYPz6*HYPz7 + 2*HYPz1*HYPz5*HYPz7 + 2*HYPz1*HYPz4*HYPz7
       + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz7 + 2*
      HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep + 1)
         *HYPnumep( - 16*HYPep)
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz7 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz7 + 
      HYPz2*HYPz4*HYPz7 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz7 + HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz6*HYPz7 + 
      HYPz1*HYPz5*HYPz7 + HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1
       + 4*HYPep)
         *HYPpow(3*HYPz5*HYPz6*HYPz7 + 3*HYPz4*HYPz5*HYPz7 + 3*HYPz4*HYPz5*
      HYPz6 + 3*HYPz3*HYPz6*HYPz7 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*HYPz7
       + 3*HYPz3*HYPz4*HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz6*HYPz7 + 2*
      HYPz2*HYPz5*HYPz7 + 2*HYPz2*HYPz4*HYPz7 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*
      HYPz4*HYPz5 + 2*HYPz2*HYPz3*HYPz7 + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*
      HYPz5 + 3*HYPz1*HYPz6*HYPz7 + 3*HYPz1*HYPz5*HYPz7 + 3*HYPz1*HYPz4*HYPz7
       + 3*HYPz1*HYPz4*HYPz6 + 3*HYPz1*HYPz4*HYPz5 + 3*HYPz1*HYPz3*HYPz7 + 3*
      HYPz1*HYPz3*HYPz6 + 3*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep + 3)
         *HYPnumep( - 48*HYPep + 4)
       +
         4
         *HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz7 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz7 + 
      HYPz2*HYPz4*HYPz7 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz7 + HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz6*HYPz7 + 
      HYPz1*HYPz5*HYPz7 + HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1
       + 4*HYPep)
         *HYPpow(9*HYPz5*HYPz6*HYPz7 + 9*HYPz4*HYPz5*HYPz7 + 9*HYPz4*HYPz5*
      HYPz6 + 9*HYPz3*HYPz6*HYPz7 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*HYPz7
       + 9*HYPz3*HYPz4*HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 4*HYPz2*HYPz6*HYPz7 + 4*
      HYPz2*HYPz5*HYPz7 + 4*HYPz2*HYPz4*HYPz7 + 4*HYPz2*HYPz4*HYPz6 + 4*HYPz2*
      HYPz4*HYPz5 + 4*HYPz2*HYPz3*HYPz7 + 4*HYPz2*HYPz3*HYPz6 + 4*HYPz2*HYPz3*
      HYPz5 + 6*HYPz1*HYPz6*HYPz7 + 6*HYPz1*HYPz5*HYPz7 + 6*HYPz1*HYPz4*HYPz7
       + 6*HYPz1*HYPz4*HYPz6 + 6*HYPz1*HYPz4*HYPz5 + 6*HYPz1*HYPz3*HYPz7 + 6*
      HYPz1*HYPz3*HYPz6 + 6*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep + 3)
       +
         HYPpow(HYPz1,1)
         *HYPpow(HYPz2, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz7 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz7 + 
      HYPz2*HYPz4*HYPz7 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz7 + HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz6*HYPz7 + 
      HYPz1*HYPz5*HYPz7 + HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,4*
      HYPep)
         *HYPdenep(3*HYPep + 1)
         *HYPnumep(48*HYPep - 4)
       +
         HYPpow(HYPz1,2)
         *HYPpow(HYPz2, - 2 - 3*HYPep)
         *HYPpow(HYPz6*HYPz7 + HYPz5*HYPz7 + HYPz4*HYPz7 + HYPz4*HYPz6 + HYPz4
      *HYPz5 + HYPz3*HYPz7 + HYPz3*HYPz6 + HYPz3*HYPz5,1)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz1*HYPz6*HYPz7 + HYPz1*HYPz5*HYPz7 + 
      HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + HYPz1*HYPz3*
      HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz5*HYPz6*HYPz7 + HYPz4*HYPz5*HYPz7 + HYPz4*HYPz5*HYPz6 + 
      HYPz3*HYPz6*HYPz7 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz7 + HYPz3*HYPz4*
      HYPz6 + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz6*HYPz7 + HYPz2*HYPz5*HYPz7 + 
      HYPz2*HYPz4*HYPz7 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz7 + HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz6*HYPz7 + 
      HYPz1*HYPz5*HYPz7 + HYPz1*HYPz4*HYPz7 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz7 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1
       + 4*HYPep)
         *HYPdenep(3*HYPep + 1)
         *HYPnumep( - 16*HYPep + 4)
  )
;
*
id HYPnumep(HYPn1?) = HYPratep(HYPn1,1);
id HYPdenep(HYPn1?) = HYPratep(1,HYPn1);
*
.sort
polyratfun HYPratep;
*
.sort
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypAutoRegularize_7 :
* Y2-integral:
#include- hyperform.h
*
#redefine HYPNPARAMS "6"
*
local F = 
       +
         1/2
         *HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 +
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 +
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 +
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,4*HYPep)
;
*
.sort
*
#call HypAutoRegularize(F,)
*
.sort
*
local diff = 
  F
  -
  (
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 4 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(24*HYPep^3 + 34*HYPep^2 + 6*HYPep - 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 4 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 72*HYPep^2 - 120*HYPep - 48)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 4 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 72*HYPep^3 - 114*HYPep^2 - 38*HYPep + 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 4 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(6*HYPep^2 + 10*HYPep + 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 4 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(216*HYPep^3 + 342*HYPep^2 + 114*HYPep - 12)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPpow(2*HYPz4^2*HYPz5^2*HYPz6^2 + 4*HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 5
      *HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 5*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 2*HYPz3^2
      *HYPz5^2*HYPz6^2 + 5*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 5*HYPz3^2*HYPz4*
      HYPz5^2*HYPz6 + 2*HYPz3^2*HYPz4^2*HYPz6^2 + 4*HYPz3^2*HYPz4^2*HYPz5*
      HYPz6 + 2*HYPz3^2*HYPz4^2*HYPz5^2 + 6*HYPz2*HYPz4^2*HYPz5*HYPz6^2 + 6*
      HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 12*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6^2 + 12*
      HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 6*HYPz2*HYPz3*HYPz4^2*HYPz6^2 + 12*
      HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 6*HYPz2*HYPz3*HYPz4^2*HYPz5^2 + 6*
      HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 6*HYPz2*HYPz3^2*HYPz5^2*HYPz6 + 6*HYPz2*
      HYPz3^2*HYPz4*HYPz6^2 + 12*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 6*HYPz2*
      HYPz3^2*HYPz4*HYPz5^2 + 4*HYPz2^2*HYPz4^2*HYPz6^2 + 8*HYPz2^2*HYPz4^2*
      HYPz5*HYPz6 + 4*HYPz2^2*HYPz4^2*HYPz5^2 + 8*HYPz2^2*HYPz3*HYPz4*HYPz6^2
       + 16*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz2^2*HYPz3*HYPz4*HYPz5^2 + 
      4*HYPz2^2*HYPz3^2*HYPz6^2 + 8*HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 4*HYPz2^2*
      HYPz3^2*HYPz5^2 + 3*HYPz1*HYPz4^2*HYPz5*HYPz6^2 + 3*HYPz1*HYPz4^2*
      HYPz5^2*HYPz6 + 6*HYPz1*HYPz3*HYPz4*HYPz5*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4*
      HYPz5^2*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4^2*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz5^2 + 3*HYPz1*HYPz3^2*HYPz5*
      HYPz6^2 + 3*HYPz1*HYPz3^2*HYPz5^2*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz6^2
       + 6*HYPz1*HYPz3^2*HYPz4*HYPz5*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 4
      *HYPz1*HYPz2*HYPz4^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 4*
      HYPz1*HYPz2*HYPz4^2*HYPz5^2 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 16*
      HYPz1*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2
       + 4*HYPz1*HYPz2*HYPz3^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 4
      *HYPz1*HYPz2*HYPz3^2*HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 192*HYPep^3 + 16*HYPep^2 + 72*HYPep - 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4^2*HYPz5^2*HYPz6^2 + 4*HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 5
      *HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 5*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 2*HYPz3^2
      *HYPz5^2*HYPz6^2 + 5*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 5*HYPz3^2*HYPz4*
      HYPz5^2*HYPz6 + 2*HYPz3^2*HYPz4^2*HYPz6^2 + 4*HYPz3^2*HYPz4^2*HYPz5*
      HYPz6 + 2*HYPz3^2*HYPz4^2*HYPz5^2 + 6*HYPz2*HYPz4^2*HYPz5*HYPz6^2 + 6*
      HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 12*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6^2 + 12*
      HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 6*HYPz2*HYPz3*HYPz4^2*HYPz6^2 + 12*
      HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 6*HYPz2*HYPz3*HYPz4^2*HYPz5^2 + 6*
      HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 6*HYPz2*HYPz3^2*HYPz5^2*HYPz6 + 6*HYPz2*
      HYPz3^2*HYPz4*HYPz6^2 + 12*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 6*HYPz2*
      HYPz3^2*HYPz4*HYPz5^2 + 4*HYPz2^2*HYPz4^2*HYPz6^2 + 8*HYPz2^2*HYPz4^2*
      HYPz5*HYPz6 + 4*HYPz2^2*HYPz4^2*HYPz5^2 + 8*HYPz2^2*HYPz3*HYPz4*HYPz6^2
       + 16*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz2^2*HYPz3*HYPz4*HYPz5^2 + 
      4*HYPz2^2*HYPz3^2*HYPz6^2 + 8*HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 4*HYPz2^2*
      HYPz3^2*HYPz5^2 + 3*HYPz1*HYPz4^2*HYPz5*HYPz6^2 + 3*HYPz1*HYPz4^2*
      HYPz5^2*HYPz6 + 6*HYPz1*HYPz3*HYPz4*HYPz5*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4*
      HYPz5^2*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4^2*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz5^2 + 3*HYPz1*HYPz3^2*HYPz5*
      HYPz6^2 + 3*HYPz1*HYPz3^2*HYPz5^2*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz6^2
       + 6*HYPz1*HYPz3^2*HYPz4*HYPz5*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 4
      *HYPz1*HYPz2*HYPz4^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 4*
      HYPz1*HYPz2*HYPz4^2*HYPz5^2 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 16*
      HYPz1*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2
       + 4*HYPz1*HYPz2*HYPz3^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 4
      *HYPz1*HYPz2*HYPz3^2*HYPz5^2,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(192*HYPep^2 + 80*HYPep - 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(4*HYPz4^2*HYPz5^2*HYPz6^2 + 8*HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 
      10*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 10*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 4*
      HYPz3^2*HYPz5^2*HYPz6^2 + 10*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 10*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 4*HYPz3^2*HYPz4^2*HYPz6^2 + 8*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 4*HYPz3^2*HYPz4^2*HYPz5^2 + 9*HYPz2*HYPz4^2*HYPz5*HYPz6^2
       + 9*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 18*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6^2 + 
      18*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 9*HYPz2*HYPz3*HYPz4^2*HYPz6^2 + 18*
      HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 9*HYPz2*HYPz3*HYPz4^2*HYPz5^2 + 9*
      HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 9*HYPz2*HYPz3^2*HYPz5^2*HYPz6 + 9*HYPz2*
      HYPz3^2*HYPz4*HYPz6^2 + 18*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 9*HYPz2*
      HYPz3^2*HYPz4*HYPz5^2 + 4*HYPz2^2*HYPz4^2*HYPz6^2 + 8*HYPz2^2*HYPz4^2*
      HYPz5*HYPz6 + 4*HYPz2^2*HYPz4^2*HYPz5^2 + 8*HYPz2^2*HYPz3*HYPz4*HYPz6^2
       + 16*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz2^2*HYPz3*HYPz4*HYPz5^2 + 
      4*HYPz2^2*HYPz3^2*HYPz6^2 + 8*HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 4*HYPz2^2*
      HYPz3^2*HYPz5^2 + 3*HYPz1*HYPz4^2*HYPz5*HYPz6^2 + 3*HYPz1*HYPz4^2*
      HYPz5^2*HYPz6 + 6*HYPz1*HYPz3*HYPz4*HYPz5*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4*
      HYPz5^2*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4^2*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz5^2 + 3*HYPz1*HYPz3^2*HYPz5*
      HYPz6^2 + 3*HYPz1*HYPz3^2*HYPz5^2*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz6^2
       + 6*HYPz1*HYPz3^2*HYPz4*HYPz5*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 4
      *HYPz1*HYPz2*HYPz4^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 4*
      HYPz1*HYPz2*HYPz4^2*HYPz5^2 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 16*
      HYPz1*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2
       + 4*HYPz1*HYPz2*HYPz3^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 4
      *HYPz1*HYPz2*HYPz3^2*HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(288*HYPep^3 + 96*HYPep^2 - 58*HYPep + 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(21*HYPz4^2*HYPz5^2*HYPz6^2 + 42*HYPz3*HYPz4*HYPz5^2*HYPz6^2
       + 48*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 48*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 21*
      HYPz3^2*HYPz5^2*HYPz6^2 + 48*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 48*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 21*HYPz3^2*HYPz4^2*HYPz6^2 + 42*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 21*HYPz3^2*HYPz4^2*HYPz5^2 + 48*HYPz2*HYPz4^2*HYPz5*
      HYPz6^2 + 48*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 96*HYPz2*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 96*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 48*HYPz2*HYPz3*HYPz4^2*
      HYPz6^2 + 96*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 48*HYPz2*HYPz3*HYPz4^2*
      HYPz5^2 + 48*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 48*HYPz2*HYPz3^2*HYPz5^2*
      HYPz6 + 48*HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 96*HYPz2*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 48*HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 24*HYPz2^2*HYPz4^2*HYPz6^2 + 48
      *HYPz2^2*HYPz4^2*HYPz5*HYPz6 + 24*HYPz2^2*HYPz4^2*HYPz5^2 + 48*HYPz2^2*
      HYPz3*HYPz4*HYPz6^2 + 96*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 48*HYPz2^2*
      HYPz3*HYPz4*HYPz5^2 + 24*HYPz2^2*HYPz3^2*HYPz6^2 + 48*HYPz2^2*HYPz3^2*
      HYPz5*HYPz6 + 24*HYPz2^2*HYPz3^2*HYPz5^2 + 12*HYPz1*HYPz4^2*HYPz5*
      HYPz6^2 + 12*HYPz1*HYPz4^2*HYPz5^2*HYPz6 + 24*HYPz1*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 24*HYPz1*HYPz3*HYPz4*HYPz5^2*HYPz6 + 12*HYPz1*HYPz3*HYPz4^2*
      HYPz6^2 + 24*HYPz1*HYPz3*HYPz4^2*HYPz5*HYPz6 + 12*HYPz1*HYPz3*HYPz4^2*
      HYPz5^2 + 12*HYPz1*HYPz3^2*HYPz5*HYPz6^2 + 12*HYPz1*HYPz3^2*HYPz5^2*
      HYPz6 + 12*HYPz1*HYPz3^2*HYPz4*HYPz6^2 + 24*HYPz1*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 12*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 16*HYPz1*HYPz2*HYPz4^2*HYPz6^2
       + 32*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 16*HYPz1*HYPz2*HYPz4^2*HYPz5^2
       + 32*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 64*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5
      *HYPz6 + 32*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2 + 16*HYPz1*HYPz2*HYPz3^2*
      HYPz6^2 + 32*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 16*HYPz1*HYPz2*HYPz3^2*
      HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 48*HYPep^2 - 20*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(27*HYPz4^3*HYPz5^3*HYPz6^3 + 81*HYPz3*HYPz4^2*HYPz5^3*HYPz6^3
       + 90*HYPz3*HYPz4^3*HYPz5^2*HYPz6^3 + 90*HYPz3*HYPz4^3*HYPz5^3*HYPz6^2
       + 81*HYPz3^2*HYPz4*HYPz5^3*HYPz6^3 + 180*HYPz3^2*HYPz4^2*HYPz5^2*
      HYPz6^3 + 180*HYPz3^2*HYPz4^2*HYPz5^3*HYPz6^2 + 90*HYPz3^2*HYPz4^3*HYPz5
      *HYPz6^3 + 180*HYPz3^2*HYPz4^3*HYPz5^2*HYPz6^2 + 90*HYPz3^2*HYPz4^3*
      HYPz5^3*HYPz6 + 27*HYPz3^3*HYPz5^3*HYPz6^3 + 90*HYPz3^3*HYPz4*HYPz5^2*
      HYPz6^3 + 90*HYPz3^3*HYPz4*HYPz5^3*HYPz6^2 + 90*HYPz3^3*HYPz4^2*HYPz5*
      HYPz6^3 + 180*HYPz3^3*HYPz4^2*HYPz5^2*HYPz6^2 + 90*HYPz3^3*HYPz4^2*
      HYPz5^3*HYPz6 + 27*HYPz3^3*HYPz4^3*HYPz6^3 + 81*HYPz3^3*HYPz4^3*HYPz5*
      HYPz6^2 + 81*HYPz3^3*HYPz4^3*HYPz5^2*HYPz6 + 27*HYPz3^3*HYPz4^3*HYPz5^3
       + 93*HYPz2*HYPz4^3*HYPz5^2*HYPz6^3 + 93*HYPz2*HYPz4^3*HYPz5^3*HYPz6^2
       + 279*HYPz2*HYPz3*HYPz4^2*HYPz5^2*HYPz6^3 + 279*HYPz2*HYPz3*HYPz4^2*
      HYPz5^3*HYPz6^2 + 192*HYPz2*HYPz3*HYPz4^3*HYPz5*HYPz6^3 + 384*HYPz2*
      HYPz3*HYPz4^3*HYPz5^2*HYPz6^2 + 192*HYPz2*HYPz3*HYPz4^3*HYPz5^3*HYPz6 + 
      279*HYPz2*HYPz3^2*HYPz4*HYPz5^2*HYPz6^3 + 279*HYPz2*HYPz3^2*HYPz4*
      HYPz5^3*HYPz6^2 + 384*HYPz2*HYPz3^2*HYPz4^2*HYPz5*HYPz6^3 + 768*HYPz2*
      HYPz3^2*HYPz4^2*HYPz5^2*HYPz6^2 + 384*HYPz2*HYPz3^2*HYPz4^2*HYPz5^3*
      HYPz6 + 93*HYPz2*HYPz3^2*HYPz4^3*HYPz6^3 + 279*HYPz2*HYPz3^2*HYPz4^3*
      HYPz5*HYPz6^2 + 279*HYPz2*HYPz3^2*HYPz4^3*HYPz5^2*HYPz6 + 93*HYPz2*
      HYPz3^2*HYPz4^3*HYPz5^3 + 93*HYPz2*HYPz3^3*HYPz5^2*HYPz6^3 + 93*HYPz2*
      HYPz3^3*HYPz5^3*HYPz6^2 + 192*HYPz2*HYPz3^3*HYPz4*HYPz5*HYPz6^3 + 384*
      HYPz2*HYPz3^3*HYPz4*HYPz5^2*HYPz6^2 + 192*HYPz2*HYPz3^3*HYPz4*HYPz5^3*
      HYPz6 + 93*HYPz2*HYPz3^3*HYPz4^2*HYPz6^3 + 279*HYPz2*HYPz3^3*HYPz4^2*
      HYPz5*HYPz6^2 + 279*HYPz2*HYPz3^3*HYPz4^2*HYPz5^2*HYPz6 + 93*HYPz2*
      HYPz3^3*HYPz4^2*HYPz5^3 + 99*HYPz2^2*HYPz4^3*HYPz5*HYPz6^3 + 198*HYPz2^2
      *HYPz4^3*HYPz5^2*HYPz6^2 + 99*HYPz2^2*HYPz4^3*HYPz5^3*HYPz6 + 297*
      HYPz2^2*HYPz3*HYPz4^2*HYPz5*HYPz6^3 + 594*HYPz2^2*HYPz3*HYPz4^2*HYPz5^2*
      HYPz6^2 + 297*HYPz2^2*HYPz3*HYPz4^2*HYPz5^3*HYPz6 + 99*HYPz2^2*HYPz3*
      HYPz4^3*HYPz6^3 + 297*HYPz2^2*HYPz3*HYPz4^3*HYPz5*HYPz6^2 + 297*HYPz2^2*
      HYPz3*HYPz4^3*HYPz5^2*HYPz6 + 99*HYPz2^2*HYPz3*HYPz4^3*HYPz5^3 + 297*
      HYPz2^2*HYPz3^2*HYPz4*HYPz5*HYPz6^3 + 594*HYPz2^2*HYPz3^2*HYPz4*HYPz5^2*
      HYPz6^2 + 297*HYPz2^2*HYPz3^2*HYPz4*HYPz5^3*HYPz6 + 198*HYPz2^2*HYPz3^2*
      HYPz4^2*HYPz6^3 + 594*HYPz2^2*HYPz3^2*HYPz4^2*HYPz5*HYPz6^2 + 594*
      HYPz2^2*HYPz3^2*HYPz4^2*HYPz5^2*HYPz6 + 198*HYPz2^2*HYPz3^2*HYPz4^2*
      HYPz5^3 + 99*HYPz2^2*HYPz3^3*HYPz5*HYPz6^3 + 198*HYPz2^2*HYPz3^3*HYPz5^2
      *HYPz6^2 + 99*HYPz2^2*HYPz3^3*HYPz5^3*HYPz6 + 99*HYPz2^2*HYPz3^3*HYPz4*
      HYPz6^3 + 297*HYPz2^2*HYPz3^3*HYPz4*HYPz5*HYPz6^2 + 297*HYPz2^2*HYPz3^3*
      HYPz4*HYPz5^2*HYPz6 + 99*HYPz2^2*HYPz3^3*HYPz4*HYPz5^3 + 33*HYPz2^3*
      HYPz4^3*HYPz6^3 + 99*HYPz2^3*HYPz4^3*HYPz5*HYPz6^2 + 99*HYPz2^3*HYPz4^3*
      HYPz5^2*HYPz6 + 33*HYPz2^3*HYPz4^3*HYPz5^3 + 99*HYPz2^3*HYPz3*HYPz4^2*
      HYPz6^3 + 297*HYPz2^3*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 297*HYPz2^3*HYPz3*
      HYPz4^2*HYPz5^2*HYPz6 + 99*HYPz2^3*HYPz3*HYPz4^2*HYPz5^3 + 99*HYPz2^3*
      HYPz3^2*HYPz4*HYPz6^3 + 297*HYPz2^3*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 297*
      HYPz2^3*HYPz3^2*HYPz4*HYPz5^2*HYPz6 + 99*HYPz2^3*HYPz3^2*HYPz4*HYPz5^3
       + 33*HYPz2^3*HYPz3^3*HYPz6^3 + 99*HYPz2^3*HYPz3^3*HYPz5*HYPz6^2 + 99*
      HYPz2^3*HYPz3^3*HYPz5^2*HYPz6 + 33*HYPz2^3*HYPz3^3*HYPz5^3 + 47*HYPz1*
      HYPz4^3*HYPz5^2*HYPz6^3 + 47*HYPz1*HYPz4^3*HYPz5^3*HYPz6^2 + 141*HYPz1*
      HYPz3*HYPz4^2*HYPz5^2*HYPz6^3 + 141*HYPz1*HYPz3*HYPz4^2*HYPz5^3*HYPz6^2
       + 98*HYPz1*HYPz3*HYPz4^3*HYPz5*HYPz6^3 + 196*HYPz1*HYPz3*HYPz4^3*
      HYPz5^2*HYPz6^2 + 98*HYPz1*HYPz3*HYPz4^3*HYPz5^3*HYPz6 + 141*HYPz1*
      HYPz3^2*HYPz4*HYPz5^2*HYPz6^3 + 141*HYPz1*HYPz3^2*HYPz4*HYPz5^3*HYPz6^2
       + 196*HYPz1*HYPz3^2*HYPz4^2*HYPz5*HYPz6^3 + 392*HYPz1*HYPz3^2*HYPz4^2*
      HYPz5^2*HYPz6^2 + 196*HYPz1*HYPz3^2*HYPz4^2*HYPz5^3*HYPz6 + 47*HYPz1*
      HYPz3^2*HYPz4^3*HYPz6^3 + 141*HYPz1*HYPz3^2*HYPz4^3*HYPz5*HYPz6^2 + 141*
      HYPz1*HYPz3^2*HYPz4^3*HYPz5^2*HYPz6 + 47*HYPz1*HYPz3^2*HYPz4^3*HYPz5^3
       + 47*HYPz1*HYPz3^3*HYPz5^2*HYPz6^3 + 47*HYPz1*HYPz3^3*HYPz5^3*HYPz6^2
       + 98*HYPz1*HYPz3^3*HYPz4*HYPz5*HYPz6^3 + 196*HYPz1*HYPz3^3*HYPz4*
      HYPz5^2*HYPz6^2 + 98*HYPz1*HYPz3^3*HYPz4*HYPz5^3*HYPz6 + 47*HYPz1*
      HYPz3^3*HYPz4^2*HYPz6^3 + 141*HYPz1*HYPz3^3*HYPz4^2*HYPz5*HYPz6^2 + 141*
      HYPz1*HYPz3^3*HYPz4^2*HYPz5^2*HYPz6 + 47*HYPz1*HYPz3^3*HYPz4^2*HYPz5^3
       + 102*HYPz1*HYPz2*HYPz4^3*HYPz5*HYPz6^3 + 204*HYPz1*HYPz2*HYPz4^3*
      HYPz5^2*HYPz6^2 + 102*HYPz1*HYPz2*HYPz4^3*HYPz5^3*HYPz6 + 306*HYPz1*
      HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6^3 + 612*HYPz1*HYPz2*HYPz3*HYPz4^2*
      HYPz5^2*HYPz6^2 + 306*HYPz1*HYPz2*HYPz3*HYPz4^2*HYPz5^3*HYPz6 + 102*
      HYPz1*HYPz2*HYPz3*HYPz4^3*HYPz6^3 + 306*HYPz1*HYPz2*HYPz3*HYPz4^3*HYPz5*
      HYPz6^2 + 306*HYPz1*HYPz2*HYPz3*HYPz4^3*HYPz5^2*HYPz6 + 102*HYPz1*HYPz2*
      HYPz3*HYPz4^3*HYPz5^3 + 306*HYPz1*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6^3 + 
      612*HYPz1*HYPz2*HYPz3^2*HYPz4*HYPz5^2*HYPz6^2 + 306*HYPz1*HYPz2*HYPz3^2*
      HYPz4*HYPz5^3*HYPz6 + 204*HYPz1*HYPz2*HYPz3^2*HYPz4^2*HYPz6^3 + 612*
      HYPz1*HYPz2*HYPz3^2*HYPz4^2*HYPz5*HYPz6^2 + 612*HYPz1*HYPz2*HYPz3^2*
      HYPz4^2*HYPz5^2*HYPz6 + 204*HYPz1*HYPz2*HYPz3^2*HYPz4^2*HYPz5^3 + 102*
      HYPz1*HYPz2*HYPz3^3*HYPz5*HYPz6^3 + 204*HYPz1*HYPz2*HYPz3^3*HYPz5^2*
      HYPz6^2 + 102*HYPz1*HYPz2*HYPz3^3*HYPz5^3*HYPz6 + 102*HYPz1*HYPz2*
      HYPz3^3*HYPz4*HYPz6^3 + 306*HYPz1*HYPz2*HYPz3^3*HYPz4*HYPz5*HYPz6^2 + 
      306*HYPz1*HYPz2*HYPz3^3*HYPz4*HYPz5^2*HYPz6 + 102*HYPz1*HYPz2*HYPz3^3*
      HYPz4*HYPz5^3 + 52*HYPz1*HYPz2^2*HYPz4^3*HYPz6^3 + 156*HYPz1*HYPz2^2*
      HYPz4^3*HYPz5*HYPz6^2 + 156*HYPz1*HYPz2^2*HYPz4^3*HYPz5^2*HYPz6 + 52*
      HYPz1*HYPz2^2*HYPz4^3*HYPz5^3 + 156*HYPz1*HYPz2^2*HYPz3*HYPz4^2*HYPz6^3
       + 468*HYPz1*HYPz2^2*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 468*HYPz1*HYPz2^2*
      HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 156*HYPz1*HYPz2^2*HYPz3*HYPz4^2*HYPz5^3 + 
      156*HYPz1*HYPz2^2*HYPz3^2*HYPz4*HYPz6^3 + 468*HYPz1*HYPz2^2*HYPz3^2*
      HYPz4*HYPz5*HYPz6^2 + 468*HYPz1*HYPz2^2*HYPz3^2*HYPz4*HYPz5^2*HYPz6 + 
      156*HYPz1*HYPz2^2*HYPz3^2*HYPz4*HYPz5^3 + 52*HYPz1*HYPz2^2*HYPz3^3*
      HYPz6^3 + 156*HYPz1*HYPz2^2*HYPz3^3*HYPz5*HYPz6^2 + 156*HYPz1*HYPz2^2*
      HYPz3^3*HYPz5^2*HYPz6 + 52*HYPz1*HYPz2^2*HYPz3^3*HYPz5^3 + 16*HYPz1^2*
      HYPz4^3*HYPz5*HYPz6^3 + 32*HYPz1^2*HYPz4^3*HYPz5^2*HYPz6^2 + 16*HYPz1^2*
      HYPz4^3*HYPz5^3*HYPz6 + 48*HYPz1^2*HYPz3*HYPz4^2*HYPz5*HYPz6^3 + 96*
      HYPz1^2*HYPz3*HYPz4^2*HYPz5^2*HYPz6^2 + 48*HYPz1^2*HYPz3*HYPz4^2*HYPz5^3
      *HYPz6 + 16*HYPz1^2*HYPz3*HYPz4^3*HYPz6^3 + 48*HYPz1^2*HYPz3*HYPz4^3*
      HYPz5*HYPz6^2 + 48*HYPz1^2*HYPz3*HYPz4^3*HYPz5^2*HYPz6 + 16*HYPz1^2*
      HYPz3*HYPz4^3*HYPz5^3 + 48*HYPz1^2*HYPz3^2*HYPz4*HYPz5*HYPz6^3 + 96*
      HYPz1^2*HYPz3^2*HYPz4*HYPz5^2*HYPz6^2 + 48*HYPz1^2*HYPz3^2*HYPz4*HYPz5^3
      *HYPz6 + 32*HYPz1^2*HYPz3^2*HYPz4^2*HYPz6^3 + 96*HYPz1^2*HYPz3^2*HYPz4^2
      *HYPz5*HYPz6^2 + 96*HYPz1^2*HYPz3^2*HYPz4^2*HYPz5^2*HYPz6 + 32*HYPz1^2*
      HYPz3^2*HYPz4^2*HYPz5^3 + 16*HYPz1^2*HYPz3^3*HYPz5*HYPz6^3 + 32*HYPz1^2*
      HYPz3^3*HYPz5^2*HYPz6^2 + 16*HYPz1^2*HYPz3^3*HYPz5^3*HYPz6 + 16*HYPz1^2*
      HYPz3^3*HYPz4*HYPz6^3 + 48*HYPz1^2*HYPz3^3*HYPz4*HYPz5*HYPz6^2 + 48*
      HYPz1^2*HYPz3^3*HYPz4*HYPz5^2*HYPz6 + 16*HYPz1^2*HYPz3^3*HYPz4*HYPz5^3
       + 20*HYPz1^2*HYPz2*HYPz4^3*HYPz6^3 + 60*HYPz1^2*HYPz2*HYPz4^3*HYPz5*
      HYPz6^2 + 60*HYPz1^2*HYPz2*HYPz4^3*HYPz5^2*HYPz6 + 20*HYPz1^2*HYPz2*
      HYPz4^3*HYPz5^3 + 60*HYPz1^2*HYPz2*HYPz3*HYPz4^2*HYPz6^3 + 180*HYPz1^2*
      HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 180*HYPz1^2*HYPz2*HYPz3*HYPz4^2*
      HYPz5^2*HYPz6 + 60*HYPz1^2*HYPz2*HYPz3*HYPz4^2*HYPz5^3 + 60*HYPz1^2*
      HYPz2*HYPz3^2*HYPz4*HYPz6^3 + 180*HYPz1^2*HYPz2*HYPz3^2*HYPz4*HYPz5*
      HYPz6^2 + 180*HYPz1^2*HYPz2*HYPz3^2*HYPz4*HYPz5^2*HYPz6 + 60*HYPz1^2*
      HYPz2*HYPz3^2*HYPz4*HYPz5^3 + 20*HYPz1^2*HYPz2*HYPz3^3*HYPz6^3 + 60*
      HYPz1^2*HYPz2*HYPz3^3*HYPz5*HYPz6^2 + 60*HYPz1^2*HYPz2*HYPz3^3*HYPz5^2*
      HYPz6 + 20*HYPz1^2*HYPz2*HYPz3^3*HYPz5^3,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 48*HYPep^2 - 20*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(4*HYPz4^2*HYPz5^2*HYPz6^2 + 8*HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 
      10*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 10*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 4*
      HYPz3^2*HYPz5^2*HYPz6^2 + 10*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 10*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 4*HYPz3^2*HYPz4^2*HYPz6^2 + 8*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 4*HYPz3^2*HYPz4^2*HYPz5^2 + 9*HYPz2*HYPz4^2*HYPz5*HYPz6^2
       + 9*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 18*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6^2 + 
      18*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 9*HYPz2*HYPz3*HYPz4^2*HYPz6^2 + 18*
      HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 9*HYPz2*HYPz3*HYPz4^2*HYPz5^2 + 9*
      HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 9*HYPz2*HYPz3^2*HYPz5^2*HYPz6 + 9*HYPz2*
      HYPz3^2*HYPz4*HYPz6^2 + 18*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 9*HYPz2*
      HYPz3^2*HYPz4*HYPz5^2 + 4*HYPz2^2*HYPz4^2*HYPz6^2 + 8*HYPz2^2*HYPz4^2*
      HYPz5*HYPz6 + 4*HYPz2^2*HYPz4^2*HYPz5^2 + 8*HYPz2^2*HYPz3*HYPz4*HYPz6^2
       + 16*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz2^2*HYPz3*HYPz4*HYPz5^2 + 
      4*HYPz2^2*HYPz3^2*HYPz6^2 + 8*HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 4*HYPz2^2*
      HYPz3^2*HYPz5^2 + 3*HYPz1*HYPz4^2*HYPz5*HYPz6^2 + 3*HYPz1*HYPz4^2*
      HYPz5^2*HYPz6 + 6*HYPz1*HYPz3*HYPz4*HYPz5*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4*
      HYPz5^2*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4^2*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz5^2 + 3*HYPz1*HYPz3^2*HYPz5*
      HYPz6^2 + 3*HYPz1*HYPz3^2*HYPz5^2*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz6^2
       + 6*HYPz1*HYPz3^2*HYPz4*HYPz5*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 4
      *HYPz1*HYPz2*HYPz4^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 4*
      HYPz1*HYPz2*HYPz4^2*HYPz5^2 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 16*
      HYPz1*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2
       + 4*HYPz1*HYPz2*HYPz3^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 4
      *HYPz1*HYPz2*HYPz3^2*HYPz5^2,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 288*HYPep^2 - 168*HYPep + 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(9*HYPz4^2*HYPz5^2*HYPz6^2 + 18*HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 
      21*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 21*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 9*
      HYPz3^2*HYPz5^2*HYPz6^2 + 21*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 21*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 9*HYPz3^2*HYPz4^2*HYPz6^2 + 18*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 9*HYPz3^2*HYPz4^2*HYPz5^2 + 17*HYPz2*HYPz4^2*HYPz5*HYPz6^2
       + 17*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 34*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6^2
       + 34*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 17*HYPz2*HYPz3*HYPz4^2*HYPz6^2
       + 34*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 17*HYPz2*HYPz3*HYPz4^2*HYPz5^2
       + 17*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 17*HYPz2*HYPz3^2*HYPz5^2*HYPz6 + 17*
      HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 34*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 17*
      HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 6*HYPz2^2*HYPz4^2*HYPz6^2 + 12*HYPz2^2*
      HYPz4^2*HYPz5*HYPz6 + 6*HYPz2^2*HYPz4^2*HYPz5^2 + 12*HYPz2^2*HYPz3*HYPz4
      *HYPz6^2 + 24*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 12*HYPz2^2*HYPz3*HYPz4*
      HYPz5^2 + 6*HYPz2^2*HYPz3^2*HYPz6^2 + 12*HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 6
      *HYPz2^2*HYPz3^2*HYPz5^2 + 5*HYPz1*HYPz4^2*HYPz5*HYPz6^2 + 5*HYPz1*
      HYPz4^2*HYPz5^2*HYPz6 + 10*HYPz1*HYPz3*HYPz4*HYPz5*HYPz6^2 + 10*HYPz1*
      HYPz3*HYPz4*HYPz5^2*HYPz6 + 5*HYPz1*HYPz3*HYPz4^2*HYPz6^2 + 10*HYPz1*
      HYPz3*HYPz4^2*HYPz5*HYPz6 + 5*HYPz1*HYPz3*HYPz4^2*HYPz5^2 + 5*HYPz1*
      HYPz3^2*HYPz5*HYPz6^2 + 5*HYPz1*HYPz3^2*HYPz5^2*HYPz6 + 5*HYPz1*HYPz3^2*
      HYPz4*HYPz6^2 + 10*HYPz1*HYPz3^2*HYPz4*HYPz5*HYPz6 + 5*HYPz1*HYPz3^2*
      HYPz4*HYPz5^2 + 6*HYPz1*HYPz2*HYPz4^2*HYPz6^2 + 12*HYPz1*HYPz2*HYPz4^2*
      HYPz5*HYPz6 + 6*HYPz1*HYPz2*HYPz4^2*HYPz5^2 + 12*HYPz1*HYPz2*HYPz3*HYPz4
      *HYPz6^2 + 24*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6 + 12*HYPz1*HYPz2*HYPz3
      *HYPz4*HYPz5^2 + 6*HYPz1*HYPz2*HYPz3^2*HYPz6^2 + 12*HYPz1*HYPz2*HYPz3^2*
      HYPz5*HYPz6 + 6*HYPz1*HYPz2*HYPz3^2*HYPz5^2,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(48*HYPep + 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(18*HYPz4^2*HYPz5^2*HYPz6^2 + 36*HYPz3*HYPz4*HYPz5^2*HYPz6^2
       + 42*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 42*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 18*
      HYPz3^2*HYPz5^2*HYPz6^2 + 42*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 42*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 18*HYPz3^2*HYPz4^2*HYPz6^2 + 36*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 18*HYPz3^2*HYPz4^2*HYPz5^2 + 39*HYPz2*HYPz4^2*HYPz5*
      HYPz6^2 + 39*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 78*HYPz2*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 78*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 39*HYPz2*HYPz3*HYPz4^2*
      HYPz6^2 + 78*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 39*HYPz2*HYPz3*HYPz4^2*
      HYPz5^2 + 39*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 39*HYPz2*HYPz3^2*HYPz5^2*
      HYPz6 + 39*HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 78*HYPz2*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 39*HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 18*HYPz2^2*HYPz4^2*HYPz6^2 + 36
      *HYPz2^2*HYPz4^2*HYPz5*HYPz6 + 18*HYPz2^2*HYPz4^2*HYPz5^2 + 36*HYPz2^2*
      HYPz3*HYPz4*HYPz6^2 + 72*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 36*HYPz2^2*
      HYPz3*HYPz4*HYPz5^2 + 18*HYPz2^2*HYPz3^2*HYPz6^2 + 36*HYPz2^2*HYPz3^2*
      HYPz5*HYPz6 + 18*HYPz2^2*HYPz3^2*HYPz5^2 + 10*HYPz1*HYPz4^2*HYPz5*
      HYPz6^2 + 10*HYPz1*HYPz4^2*HYPz5^2*HYPz6 + 20*HYPz1*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 20*HYPz1*HYPz3*HYPz4*HYPz5^2*HYPz6 + 10*HYPz1*HYPz3*HYPz4^2*
      HYPz6^2 + 20*HYPz1*HYPz3*HYPz4^2*HYPz5*HYPz6 + 10*HYPz1*HYPz3*HYPz4^2*
      HYPz5^2 + 10*HYPz1*HYPz3^2*HYPz5*HYPz6^2 + 10*HYPz1*HYPz3^2*HYPz5^2*
      HYPz6 + 10*HYPz1*HYPz3^2*HYPz4*HYPz6^2 + 20*HYPz1*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 10*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 12*HYPz1*HYPz2*HYPz4^2*HYPz6^2
       + 24*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 12*HYPz1*HYPz2*HYPz4^2*HYPz5^2
       + 24*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 48*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5
      *HYPz6 + 24*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2 + 12*HYPz1*HYPz2*HYPz3^2*
      HYPz6^2 + 24*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 12*HYPz1*HYPz2*HYPz3^2*
      HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(72*HYPep^2 + 42*HYPep - 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(27*HYPz4^2*HYPz5^2*HYPz6^2 + 54*HYPz3*HYPz4*HYPz5^2*HYPz6^2
       + 63*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 63*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 27*
      HYPz3^2*HYPz5^2*HYPz6^2 + 63*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 63*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 27*HYPz3^2*HYPz4^2*HYPz6^2 + 54*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 27*HYPz3^2*HYPz4^2*HYPz5^2 + 51*HYPz2*HYPz4^2*HYPz5*
      HYPz6^2 + 51*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 102*HYPz2*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 102*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 51*HYPz2*HYPz3*HYPz4^2*
      HYPz6^2 + 102*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 51*HYPz2*HYPz3*HYPz4^2*
      HYPz5^2 + 51*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 51*HYPz2*HYPz3^2*HYPz5^2*
      HYPz6 + 51*HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 102*HYPz2*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 51*HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 18*HYPz2^2*HYPz4^2*HYPz6^2 + 36
      *HYPz2^2*HYPz4^2*HYPz5*HYPz6 + 18*HYPz2^2*HYPz4^2*HYPz5^2 + 36*HYPz2^2*
      HYPz3*HYPz4*HYPz6^2 + 72*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 36*HYPz2^2*
      HYPz3*HYPz4*HYPz5^2 + 18*HYPz2^2*HYPz3^2*HYPz6^2 + 36*HYPz2^2*HYPz3^2*
      HYPz5*HYPz6 + 18*HYPz2^2*HYPz3^2*HYPz5^2 + 10*HYPz1*HYPz4^2*HYPz5*
      HYPz6^2 + 10*HYPz1*HYPz4^2*HYPz5^2*HYPz6 + 20*HYPz1*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 20*HYPz1*HYPz3*HYPz4*HYPz5^2*HYPz6 + 10*HYPz1*HYPz3*HYPz4^2*
      HYPz6^2 + 20*HYPz1*HYPz3*HYPz4^2*HYPz5*HYPz6 + 10*HYPz1*HYPz3*HYPz4^2*
      HYPz5^2 + 10*HYPz1*HYPz3^2*HYPz5*HYPz6^2 + 10*HYPz1*HYPz3^2*HYPz5^2*
      HYPz6 + 10*HYPz1*HYPz3^2*HYPz4*HYPz6^2 + 20*HYPz1*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 10*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 12*HYPz1*HYPz2*HYPz4^2*HYPz6^2
       + 24*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 12*HYPz1*HYPz2*HYPz4^2*HYPz5^2
       + 24*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 48*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5
      *HYPz6 + 24*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2 + 12*HYPz1*HYPz2*HYPz3^2*
      HYPz6^2 + 24*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 12*HYPz1*HYPz2*HYPz3^2*
      HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 12*HYPep - 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(48*HYPep^3 - 28*HYPep^2 - 28*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 48*HYPep^2 + 64*HYPep + 64)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 144*HYPep^3 + 204*HYPep^2 + 176*HYPep - 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(12*HYPep^2 - 16*HYPep - 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(144*HYPep^3 - 204*HYPep^2 - 176*HYPep + 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(48*HYPep^3 - 28*HYPep^2 - 28*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 48*HYPep^2 + 64*HYPep + 64)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 144*HYPep^3 + 204*HYPep^2 + 176*HYPep - 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(12*HYPep^2 - 16*HYPep - 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(144*HYPep^3 - 204*HYPep^2 - 176*HYPep + 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 4 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(128*HYPep^3 - 192*HYPep^2 + 88*HYPep - 12)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 384*HYPep^3 + 320*HYPep^2 - 72*HYPep + 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 128*HYPep^2 + 96*HYPep - 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 64*HYPep^3 + 112*HYPep^2 - 56*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 64*HYPep^3 + 112*HYPep^2 - 56*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(21*HYPz4^2*HYPz5^2*HYPz6^2 + 42*HYPz3*HYPz4*HYPz5^2*HYPz6^2
       + 48*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 48*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 21*
      HYPz3^2*HYPz5^2*HYPz6^2 + 48*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 48*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 21*HYPz3^2*HYPz4^2*HYPz6^2 + 42*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 21*HYPz3^2*HYPz4^2*HYPz5^2 + 48*HYPz2*HYPz4^2*HYPz5*
      HYPz6^2 + 48*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 96*HYPz2*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 96*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 48*HYPz2*HYPz3*HYPz4^2*
      HYPz6^2 + 96*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 48*HYPz2*HYPz3*HYPz4^2*
      HYPz5^2 + 48*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 48*HYPz2*HYPz3^2*HYPz5^2*
      HYPz6 + 48*HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 96*HYPz2*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 48*HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 24*HYPz2^2*HYPz4^2*HYPz6^2 + 48
      *HYPz2^2*HYPz4^2*HYPz5*HYPz6 + 24*HYPz2^2*HYPz4^2*HYPz5^2 + 48*HYPz2^2*
      HYPz3*HYPz4*HYPz6^2 + 96*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 48*HYPz2^2*
      HYPz3*HYPz4*HYPz5^2 + 24*HYPz2^2*HYPz3^2*HYPz6^2 + 48*HYPz2^2*HYPz3^2*
      HYPz5*HYPz6 + 24*HYPz2^2*HYPz3^2*HYPz5^2 + 42*HYPz1*HYPz4^2*HYPz5*
      HYPz6^2 + 42*HYPz1*HYPz4^2*HYPz5^2*HYPz6 + 84*HYPz1*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 84*HYPz1*HYPz3*HYPz4*HYPz5^2*HYPz6 + 42*HYPz1*HYPz3*HYPz4^2*
      HYPz6^2 + 84*HYPz1*HYPz3*HYPz4^2*HYPz5*HYPz6 + 42*HYPz1*HYPz3*HYPz4^2*
      HYPz5^2 + 42*HYPz1*HYPz3^2*HYPz5*HYPz6^2 + 42*HYPz1*HYPz3^2*HYPz5^2*
      HYPz6 + 42*HYPz1*HYPz3^2*HYPz4*HYPz6^2 + 84*HYPz1*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 42*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 40*HYPz1*HYPz2*HYPz4^2*HYPz6^2
       + 80*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 40*HYPz1*HYPz2*HYPz4^2*HYPz5^2
       + 80*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 160*HYPz1*HYPz2*HYPz3*HYPz4*
      HYPz5*HYPz6 + 80*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2 + 40*HYPz1*HYPz2*
      HYPz3^2*HYPz6^2 + 80*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 40*HYPz1*HYPz2*
      HYPz3^2*HYPz5^2 + 16*HYPz1^2*HYPz4^2*HYPz6^2 + 32*HYPz1^2*HYPz4^2*HYPz5*
      HYPz6 + 16*HYPz1^2*HYPz4^2*HYPz5^2 + 32*HYPz1^2*HYPz3*HYPz4*HYPz6^2 + 64
      *HYPz1^2*HYPz3*HYPz4*HYPz5*HYPz6 + 32*HYPz1^2*HYPz3*HYPz4*HYPz5^2 + 16*
      HYPz1^2*HYPz3^2*HYPz6^2 + 32*HYPz1^2*HYPz3^2*HYPz5*HYPz6 + 16*HYPz1^2*
      HYPz3^2*HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(64*HYPep^2 - 48*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(36*HYPz4^3*HYPz5^3*HYPz6^3 + 108*HYPz3*HYPz4^2*HYPz5^3*
      HYPz6^3 + 117*HYPz3*HYPz4^3*HYPz5^2*HYPz6^3 + 117*HYPz3*HYPz4^3*HYPz5^3*
      HYPz6^2 + 108*HYPz3^2*HYPz4*HYPz5^3*HYPz6^3 + 234*HYPz3^2*HYPz4^2*
      HYPz5^2*HYPz6^3 + 234*HYPz3^2*HYPz4^2*HYPz5^3*HYPz6^2 + 117*HYPz3^2*
      HYPz4^3*HYPz5*HYPz6^3 + 234*HYPz3^2*HYPz4^3*HYPz5^2*HYPz6^2 + 117*
      HYPz3^2*HYPz4^3*HYPz5^3*HYPz6 + 36*HYPz3^3*HYPz5^3*HYPz6^3 + 117*HYPz3^3
      *HYPz4*HYPz5^2*HYPz6^3 + 117*HYPz3^3*HYPz4*HYPz5^3*HYPz6^2 + 117*HYPz3^3
      *HYPz4^2*HYPz5*HYPz6^3 + 234*HYPz3^3*HYPz4^2*HYPz5^2*HYPz6^2 + 117*
      HYPz3^3*HYPz4^2*HYPz5^3*HYPz6 + 36*HYPz3^3*HYPz4^3*HYPz6^3 + 108*HYPz3^3
      *HYPz4^3*HYPz5*HYPz6^2 + 108*HYPz3^3*HYPz4^3*HYPz5^2*HYPz6 + 36*HYPz3^3*
      HYPz4^3*HYPz5^3 + 120*HYPz2*HYPz4^3*HYPz5^2*HYPz6^3 + 120*HYPz2*HYPz4^3*
      HYPz5^3*HYPz6^2 + 360*HYPz2*HYPz3*HYPz4^2*HYPz5^2*HYPz6^3 + 360*HYPz2*
      HYPz3*HYPz4^2*HYPz5^3*HYPz6^2 + 246*HYPz2*HYPz3*HYPz4^3*HYPz5*HYPz6^3 + 
      492*HYPz2*HYPz3*HYPz4^3*HYPz5^2*HYPz6^2 + 246*HYPz2*HYPz3*HYPz4^3*
      HYPz5^3*HYPz6 + 360*HYPz2*HYPz3^2*HYPz4*HYPz5^2*HYPz6^3 + 360*HYPz2*
      HYPz3^2*HYPz4*HYPz5^3*HYPz6^2 + 492*HYPz2*HYPz3^2*HYPz4^2*HYPz5*HYPz6^3
       + 984*HYPz2*HYPz3^2*HYPz4^2*HYPz5^2*HYPz6^2 + 492*HYPz2*HYPz3^2*HYPz4^2
      *HYPz5^3*HYPz6 + 120*HYPz2*HYPz3^2*HYPz4^3*HYPz6^3 + 360*HYPz2*HYPz3^2*
      HYPz4^3*HYPz5*HYPz6^2 + 360*HYPz2*HYPz3^2*HYPz4^3*HYPz5^2*HYPz6 + 120*
      HYPz2*HYPz3^2*HYPz4^3*HYPz5^3 + 120*HYPz2*HYPz3^3*HYPz5^2*HYPz6^3 + 120*
      HYPz2*HYPz3^3*HYPz5^3*HYPz6^2 + 246*HYPz2*HYPz3^3*HYPz4*HYPz5*HYPz6^3 + 
      492*HYPz2*HYPz3^3*HYPz4*HYPz5^2*HYPz6^2 + 246*HYPz2*HYPz3^3*HYPz4*
      HYPz5^3*HYPz6 + 120*HYPz2*HYPz3^3*HYPz4^2*HYPz6^3 + 360*HYPz2*HYPz3^3*
      HYPz4^2*HYPz5*HYPz6^2 + 360*HYPz2*HYPz3^3*HYPz4^2*HYPz5^2*HYPz6 + 120*
      HYPz2*HYPz3^3*HYPz4^2*HYPz5^3 + 126*HYPz2^2*HYPz4^3*HYPz5*HYPz6^3 + 252*
      HYPz2^2*HYPz4^3*HYPz5^2*HYPz6^2 + 126*HYPz2^2*HYPz4^3*HYPz5^3*HYPz6 + 
      378*HYPz2^2*HYPz3*HYPz4^2*HYPz5*HYPz6^3 + 756*HYPz2^2*HYPz3*HYPz4^2*
      HYPz5^2*HYPz6^2 + 378*HYPz2^2*HYPz3*HYPz4^2*HYPz5^3*HYPz6 + 126*HYPz2^2*
      HYPz3*HYPz4^3*HYPz6^3 + 378*HYPz2^2*HYPz3*HYPz4^3*HYPz5*HYPz6^2 + 378*
      HYPz2^2*HYPz3*HYPz4^3*HYPz5^2*HYPz6 + 126*HYPz2^2*HYPz3*HYPz4^3*HYPz5^3
       + 378*HYPz2^2*HYPz3^2*HYPz4*HYPz5*HYPz6^3 + 756*HYPz2^2*HYPz3^2*HYPz4*
      HYPz5^2*HYPz6^2 + 378*HYPz2^2*HYPz3^2*HYPz4*HYPz5^3*HYPz6 + 252*HYPz2^2*
      HYPz3^2*HYPz4^2*HYPz6^3 + 756*HYPz2^2*HYPz3^2*HYPz4^2*HYPz5*HYPz6^2 + 
      756*HYPz2^2*HYPz3^2*HYPz4^2*HYPz5^2*HYPz6 + 252*HYPz2^2*HYPz3^2*HYPz4^2*
      HYPz5^3 + 126*HYPz2^2*HYPz3^3*HYPz5*HYPz6^3 + 252*HYPz2^2*HYPz3^3*
      HYPz5^2*HYPz6^2 + 126*HYPz2^2*HYPz3^3*HYPz5^3*HYPz6 + 126*HYPz2^2*
      HYPz3^3*HYPz4*HYPz6^3 + 378*HYPz2^2*HYPz3^3*HYPz4*HYPz5*HYPz6^2 + 378*
      HYPz2^2*HYPz3^3*HYPz4*HYPz5^2*HYPz6 + 126*HYPz2^2*HYPz3^3*HYPz4*HYPz5^3
       + 42*HYPz2^3*HYPz4^3*HYPz6^3 + 126*HYPz2^3*HYPz4^3*HYPz5*HYPz6^2 + 126*
      HYPz2^3*HYPz4^3*HYPz5^2*HYPz6 + 42*HYPz2^3*HYPz4^3*HYPz5^3 + 126*HYPz2^3
      *HYPz3*HYPz4^2*HYPz6^3 + 378*HYPz2^3*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 378*
      HYPz2^3*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 126*HYPz2^3*HYPz3*HYPz4^2*HYPz5^3
       + 126*HYPz2^3*HYPz3^2*HYPz4*HYPz6^3 + 378*HYPz2^3*HYPz3^2*HYPz4*HYPz5*
      HYPz6^2 + 378*HYPz2^3*HYPz3^2*HYPz4*HYPz5^2*HYPz6 + 126*HYPz2^3*HYPz3^2*
      HYPz4*HYPz5^3 + 42*HYPz2^3*HYPz3^3*HYPz6^3 + 126*HYPz2^3*HYPz3^3*HYPz5*
      HYPz6^2 + 126*HYPz2^3*HYPz3^3*HYPz5^2*HYPz6 + 42*HYPz2^3*HYPz3^3*HYPz5^3
       + 104*HYPz1*HYPz4^3*HYPz5^2*HYPz6^3 + 104*HYPz1*HYPz4^3*HYPz5^3*HYPz6^2
       + 312*HYPz1*HYPz3*HYPz4^2*HYPz5^2*HYPz6^3 + 312*HYPz1*HYPz3*HYPz4^2*
      HYPz5^3*HYPz6^2 + 212*HYPz1*HYPz3*HYPz4^3*HYPz5*HYPz6^3 + 424*HYPz1*
      HYPz3*HYPz4^3*HYPz5^2*HYPz6^2 + 212*HYPz1*HYPz3*HYPz4^3*HYPz5^3*HYPz6 + 
      312*HYPz1*HYPz3^2*HYPz4*HYPz5^2*HYPz6^3 + 312*HYPz1*HYPz3^2*HYPz4*
      HYPz5^3*HYPz6^2 + 424*HYPz1*HYPz3^2*HYPz4^2*HYPz5*HYPz6^3 + 848*HYPz1*
      HYPz3^2*HYPz4^2*HYPz5^2*HYPz6^2 + 424*HYPz1*HYPz3^2*HYPz4^2*HYPz5^3*
      HYPz6 + 104*HYPz1*HYPz3^2*HYPz4^3*HYPz6^3 + 312*HYPz1*HYPz3^2*HYPz4^3*
      HYPz5*HYPz6^2 + 312*HYPz1*HYPz3^2*HYPz4^3*HYPz5^2*HYPz6 + 104*HYPz1*
      HYPz3^2*HYPz4^3*HYPz5^3 + 104*HYPz1*HYPz3^3*HYPz5^2*HYPz6^3 + 104*HYPz1*
      HYPz3^3*HYPz5^3*HYPz6^2 + 212*HYPz1*HYPz3^3*HYPz4*HYPz5*HYPz6^3 + 424*
      HYPz1*HYPz3^3*HYPz4*HYPz5^2*HYPz6^2 + 212*HYPz1*HYPz3^3*HYPz4*HYPz5^3*
      HYPz6 + 104*HYPz1*HYPz3^3*HYPz4^2*HYPz6^3 + 312*HYPz1*HYPz3^3*HYPz4^2*
      HYPz5*HYPz6^2 + 312*HYPz1*HYPz3^3*HYPz4^2*HYPz5^2*HYPz6 + 104*HYPz1*
      HYPz3^3*HYPz4^2*HYPz5^3 + 216*HYPz1*HYPz2*HYPz4^3*HYPz5*HYPz6^3 + 432*
      HYPz1*HYPz2*HYPz4^3*HYPz5^2*HYPz6^2 + 216*HYPz1*HYPz2*HYPz4^3*HYPz5^3*
      HYPz6 + 648*HYPz1*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6^3 + 1296*HYPz1*HYPz2*
      HYPz3*HYPz4^2*HYPz5^2*HYPz6^2 + 648*HYPz1*HYPz2*HYPz3*HYPz4^2*HYPz5^3*
      HYPz6 + 216*HYPz1*HYPz2*HYPz3*HYPz4^3*HYPz6^3 + 648*HYPz1*HYPz2*HYPz3*
      HYPz4^3*HYPz5*HYPz6^2 + 648*HYPz1*HYPz2*HYPz3*HYPz4^3*HYPz5^2*HYPz6 + 
      216*HYPz1*HYPz2*HYPz3*HYPz4^3*HYPz5^3 + 648*HYPz1*HYPz2*HYPz3^2*HYPz4*
      HYPz5*HYPz6^3 + 1296*HYPz1*HYPz2*HYPz3^2*HYPz4*HYPz5^2*HYPz6^2 + 648*
      HYPz1*HYPz2*HYPz3^2*HYPz4*HYPz5^3*HYPz6 + 432*HYPz1*HYPz2*HYPz3^2*
      HYPz4^2*HYPz6^3 + 1296*HYPz1*HYPz2*HYPz3^2*HYPz4^2*HYPz5*HYPz6^2 + 1296*
      HYPz1*HYPz2*HYPz3^2*HYPz4^2*HYPz5^2*HYPz6 + 432*HYPz1*HYPz2*HYPz3^2*
      HYPz4^2*HYPz5^3 + 216*HYPz1*HYPz2*HYPz3^3*HYPz5*HYPz6^3 + 432*HYPz1*
      HYPz2*HYPz3^3*HYPz5^2*HYPz6^2 + 216*HYPz1*HYPz2*HYPz3^3*HYPz5^3*HYPz6 + 
      216*HYPz1*HYPz2*HYPz3^3*HYPz4*HYPz6^3 + 648*HYPz1*HYPz2*HYPz3^3*HYPz4*
      HYPz5*HYPz6^2 + 648*HYPz1*HYPz2*HYPz3^3*HYPz4*HYPz5^2*HYPz6 + 216*HYPz1*
      HYPz2*HYPz3^3*HYPz4*HYPz5^3 + 106*HYPz1*HYPz2^2*HYPz4^3*HYPz6^3 + 318*
      HYPz1*HYPz2^2*HYPz4^3*HYPz5*HYPz6^2 + 318*HYPz1*HYPz2^2*HYPz4^3*HYPz5^2*
      HYPz6 + 106*HYPz1*HYPz2^2*HYPz4^3*HYPz5^3 + 318*HYPz1*HYPz2^2*HYPz3*
      HYPz4^2*HYPz6^3 + 954*HYPz1*HYPz2^2*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 954*
      HYPz1*HYPz2^2*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 318*HYPz1*HYPz2^2*HYPz3*
      HYPz4^2*HYPz5^3 + 318*HYPz1*HYPz2^2*HYPz3^2*HYPz4*HYPz6^3 + 954*HYPz1*
      HYPz2^2*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 954*HYPz1*HYPz2^2*HYPz3^2*HYPz4*
      HYPz5^2*HYPz6 + 318*HYPz1*HYPz2^2*HYPz3^2*HYPz4*HYPz5^3 + 106*HYPz1*
      HYPz2^2*HYPz3^3*HYPz6^3 + 318*HYPz1*HYPz2^2*HYPz3^3*HYPz5*HYPz6^2 + 318*
      HYPz1*HYPz2^2*HYPz3^3*HYPz5^2*HYPz6 + 106*HYPz1*HYPz2^2*HYPz3^3*HYPz5^3
       + 92*HYPz1^2*HYPz4^3*HYPz5*HYPz6^3 + 184*HYPz1^2*HYPz4^3*HYPz5^2*
      HYPz6^2 + 92*HYPz1^2*HYPz4^3*HYPz5^3*HYPz6 + 276*HYPz1^2*HYPz3*HYPz4^2*
      HYPz5*HYPz6^3 + 552*HYPz1^2*HYPz3*HYPz4^2*HYPz5^2*HYPz6^2 + 276*HYPz1^2*
      HYPz3*HYPz4^2*HYPz5^3*HYPz6 + 92*HYPz1^2*HYPz3*HYPz4^3*HYPz6^3 + 276*
      HYPz1^2*HYPz3*HYPz4^3*HYPz5*HYPz6^2 + 276*HYPz1^2*HYPz3*HYPz4^3*HYPz5^2*
      HYPz6 + 92*HYPz1^2*HYPz3*HYPz4^3*HYPz5^3 + 276*HYPz1^2*HYPz3^2*HYPz4*
      HYPz5*HYPz6^3 + 552*HYPz1^2*HYPz3^2*HYPz4*HYPz5^2*HYPz6^2 + 276*HYPz1^2*
      HYPz3^2*HYPz4*HYPz5^3*HYPz6 + 184*HYPz1^2*HYPz3^2*HYPz4^2*HYPz6^3 + 552*
      HYPz1^2*HYPz3^2*HYPz4^2*HYPz5*HYPz6^2 + 552*HYPz1^2*HYPz3^2*HYPz4^2*
      HYPz5^2*HYPz6 + 184*HYPz1^2*HYPz3^2*HYPz4^2*HYPz5^3 + 92*HYPz1^2*HYPz3^3
      *HYPz5*HYPz6^3 + 184*HYPz1^2*HYPz3^3*HYPz5^2*HYPz6^2 + 92*HYPz1^2*
      HYPz3^3*HYPz5^3*HYPz6 + 92*HYPz1^2*HYPz3^3*HYPz4*HYPz6^3 + 276*HYPz1^2*
      HYPz3^3*HYPz4*HYPz5*HYPz6^2 + 276*HYPz1^2*HYPz3^3*HYPz4*HYPz5^2*HYPz6 + 
      92*HYPz1^2*HYPz3^3*HYPz4*HYPz5^3 + 88*HYPz1^2*HYPz2*HYPz4^3*HYPz6^3 + 
      264*HYPz1^2*HYPz2*HYPz4^3*HYPz5*HYPz6^2 + 264*HYPz1^2*HYPz2*HYPz4^3*
      HYPz5^2*HYPz6 + 88*HYPz1^2*HYPz2*HYPz4^3*HYPz5^3 + 264*HYPz1^2*HYPz2*
      HYPz3*HYPz4^2*HYPz6^3 + 792*HYPz1^2*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 
      792*HYPz1^2*HYPz2*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 264*HYPz1^2*HYPz2*HYPz3*
      HYPz4^2*HYPz5^3 + 264*HYPz1^2*HYPz2*HYPz3^2*HYPz4*HYPz6^3 + 792*HYPz1^2*
      HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 792*HYPz1^2*HYPz2*HYPz3^2*HYPz4*
      HYPz5^2*HYPz6 + 264*HYPz1^2*HYPz2*HYPz3^2*HYPz4*HYPz5^3 + 88*HYPz1^2*
      HYPz2*HYPz3^3*HYPz6^3 + 264*HYPz1^2*HYPz2*HYPz3^3*HYPz5*HYPz6^2 + 264*
      HYPz1^2*HYPz2*HYPz3^3*HYPz5^2*HYPz6 + 88*HYPz1^2*HYPz2*HYPz3^3*HYPz5^3
       + 24*HYPz1^3*HYPz4^3*HYPz6^3 + 72*HYPz1^3*HYPz4^3*HYPz5*HYPz6^2 + 72*
      HYPz1^3*HYPz4^3*HYPz5^2*HYPz6 + 24*HYPz1^3*HYPz4^3*HYPz5^3 + 72*HYPz1^3*
      HYPz3*HYPz4^2*HYPz6^3 + 216*HYPz1^3*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 216*
      HYPz1^3*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 72*HYPz1^3*HYPz3*HYPz4^2*HYPz5^3
       + 72*HYPz1^3*HYPz3^2*HYPz4*HYPz6^3 + 216*HYPz1^3*HYPz3^2*HYPz4*HYPz5*
      HYPz6^2 + 216*HYPz1^3*HYPz3^2*HYPz4*HYPz5^2*HYPz6 + 72*HYPz1^3*HYPz3^2*
      HYPz4*HYPz5^3 + 24*HYPz1^3*HYPz3^3*HYPz6^3 + 72*HYPz1^3*HYPz3^3*HYPz5*
      HYPz6^2 + 72*HYPz1^3*HYPz3^3*HYPz5^2*HYPz6 + 24*HYPz1^3*HYPz3^3*HYPz5^3,
      1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(32*HYPep^2 - 24*HYPep + 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(384*HYPep^2 - 128*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(192*HYPep^3 - 448*HYPep^2 + 132*HYPep - 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(64*HYPep^2 - 144*HYPep + 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 16*HYPep^2 + 20*HYPep - 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(64*HYPep^2 - 144*HYPep + 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(192*HYPep^3 - 448*HYPep^2 + 132*HYPep - 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 16*HYPep^2 + 36*HYPep - 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(6*HYPz4*HYPz5*HYPz6 + 6*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 32*HYPep^2 + 40*HYPep - 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 6*HYPz3*HYPz4*
      HYPz6 + 6*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 32*HYPep^2 + 40*HYPep - 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(32*HYPep^3 - 72*HYPep^2 + 48*HYPep - 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(9*HYPz4^2*HYPz5^2*HYPz6^2 + 18*HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 
      21*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 21*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 9*
      HYPz3^2*HYPz5^2*HYPz6^2 + 21*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 21*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 9*HYPz3^2*HYPz4^2*HYPz6^2 + 18*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 9*HYPz3^2*HYPz4^2*HYPz5^2 + 17*HYPz2*HYPz4^2*HYPz5*HYPz6^2
       + 17*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 34*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6^2
       + 34*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 17*HYPz2*HYPz3*HYPz4^2*HYPz6^2
       + 34*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 17*HYPz2*HYPz3*HYPz4^2*HYPz5^2
       + 17*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 17*HYPz2*HYPz3^2*HYPz5^2*HYPz6 + 17*
      HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 34*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 17*
      HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 6*HYPz2^2*HYPz4^2*HYPz6^2 + 12*HYPz2^2*
      HYPz4^2*HYPz5*HYPz6 + 6*HYPz2^2*HYPz4^2*HYPz5^2 + 12*HYPz2^2*HYPz3*HYPz4
      *HYPz6^2 + 24*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 12*HYPz2^2*HYPz3*HYPz4*
      HYPz5^2 + 6*HYPz2^2*HYPz3^2*HYPz6^2 + 12*HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 6
      *HYPz2^2*HYPz3^2*HYPz5^2 + 17*HYPz1*HYPz4^2*HYPz5*HYPz6^2 + 17*HYPz1*
      HYPz4^2*HYPz5^2*HYPz6 + 34*HYPz1*HYPz3*HYPz4*HYPz5*HYPz6^2 + 34*HYPz1*
      HYPz3*HYPz4*HYPz5^2*HYPz6 + 17*HYPz1*HYPz3*HYPz4^2*HYPz6^2 + 34*HYPz1*
      HYPz3*HYPz4^2*HYPz5*HYPz6 + 17*HYPz1*HYPz3*HYPz4^2*HYPz5^2 + 17*HYPz1*
      HYPz3^2*HYPz5*HYPz6^2 + 17*HYPz1*HYPz3^2*HYPz5^2*HYPz6 + 17*HYPz1*
      HYPz3^2*HYPz4*HYPz6^2 + 34*HYPz1*HYPz3^2*HYPz4*HYPz5*HYPz6 + 17*HYPz1*
      HYPz3^2*HYPz4*HYPz5^2 + 12*HYPz1*HYPz2*HYPz4^2*HYPz6^2 + 24*HYPz1*HYPz2*
      HYPz4^2*HYPz5*HYPz6 + 12*HYPz1*HYPz2*HYPz4^2*HYPz5^2 + 24*HYPz1*HYPz2*
      HYPz3*HYPz4*HYPz6^2 + 48*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6 + 24*HYPz1*
      HYPz2*HYPz3*HYPz4*HYPz5^2 + 12*HYPz1*HYPz2*HYPz3^2*HYPz6^2 + 24*HYPz1*
      HYPz2*HYPz3^2*HYPz5*HYPz6 + 12*HYPz1*HYPz2*HYPz3^2*HYPz5^2 + 6*HYPz1^2*
      HYPz4^2*HYPz6^2 + 12*HYPz1^2*HYPz4^2*HYPz5*HYPz6 + 6*HYPz1^2*HYPz4^2*
      HYPz5^2 + 12*HYPz1^2*HYPz3*HYPz4*HYPz6^2 + 24*HYPz1^2*HYPz3*HYPz4*HYPz5*
      HYPz6 + 12*HYPz1^2*HYPz3*HYPz4*HYPz5^2 + 6*HYPz1^2*HYPz3^2*HYPz6^2 + 12*
      HYPz1^2*HYPz3^2*HYPz5*HYPz6 + 6*HYPz1^2*HYPz3^2*HYPz5^2,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 64*HYPep + 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(18*HYPz4^2*HYPz5^2*HYPz6^2 + 36*HYPz3*HYPz4*HYPz5^2*HYPz6^2
       + 42*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 42*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 18*
      HYPz3^2*HYPz5^2*HYPz6^2 + 42*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 42*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 18*HYPz3^2*HYPz4^2*HYPz6^2 + 36*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 18*HYPz3^2*HYPz4^2*HYPz5^2 + 30*HYPz2*HYPz4^2*HYPz5*
      HYPz6^2 + 30*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 60*HYPz2*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 60*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 33*HYPz2*HYPz3*HYPz4^2*
      HYPz6^2 + 66*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 33*HYPz2*HYPz3*HYPz4^2*
      HYPz5^2 + 30*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 30*HYPz2*HYPz3^2*HYPz5^2*
      HYPz6 + 33*HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 66*HYPz2*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 33*HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 12*HYPz2^2*HYPz4^2*HYPz6^2 + 24
      *HYPz2^2*HYPz4^2*HYPz5*HYPz6 + 12*HYPz2^2*HYPz4^2*HYPz5^2 + 24*HYPz2^2*
      HYPz3*HYPz4*HYPz6^2 + 48*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 24*HYPz2^2*
      HYPz3*HYPz4*HYPz5^2 + 12*HYPz2^2*HYPz3^2*HYPz6^2 + 24*HYPz2^2*HYPz3^2*
      HYPz5*HYPz6 + 12*HYPz2^2*HYPz3^2*HYPz5^2 + 25*HYPz1*HYPz4^2*HYPz5*
      HYPz6^2 + 25*HYPz1*HYPz4^2*HYPz5^2*HYPz6 + 50*HYPz1*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 50*HYPz1*HYPz3*HYPz4*HYPz5^2*HYPz6 + 28*HYPz1*HYPz3*HYPz4^2*
      HYPz6^2 + 56*HYPz1*HYPz3*HYPz4^2*HYPz5*HYPz6 + 28*HYPz1*HYPz3*HYPz4^2*
      HYPz5^2 + 25*HYPz1*HYPz3^2*HYPz5*HYPz6^2 + 25*HYPz1*HYPz3^2*HYPz5^2*
      HYPz6 + 28*HYPz1*HYPz3^2*HYPz4*HYPz6^2 + 56*HYPz1*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 28*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 20*HYPz1*HYPz2*HYPz4^2*HYPz6^2
       + 40*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 20*HYPz1*HYPz2*HYPz4^2*HYPz5^2
       + 40*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 80*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5
      *HYPz6 + 40*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2 + 20*HYPz1*HYPz2*HYPz3^2*
      HYPz6^2 + 40*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 20*HYPz1*HYPz2*HYPz3^2*
      HYPz5^2 + 8*HYPz1^2*HYPz4^2*HYPz6^2 + 16*HYPz1^2*HYPz4^2*HYPz5*HYPz6 + 8
      *HYPz1^2*HYPz4^2*HYPz5^2 + 16*HYPz1^2*HYPz3*HYPz4*HYPz6^2 + 32*HYPz1^2*
      HYPz3*HYPz4*HYPz5*HYPz6 + 16*HYPz1^2*HYPz3*HYPz4*HYPz5^2 + 8*HYPz1^2*
      HYPz3^2*HYPz6^2 + 16*HYPz1^2*HYPz3^2*HYPz5*HYPz6 + 8*HYPz1^2*HYPz3^2*
      HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 96*HYPep^2 + 32*HYPep - 2)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(27*HYPz4^2*HYPz5^2*HYPz6^2 + 54*HYPz3*HYPz4*HYPz5^2*HYPz6^2
       + 63*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 63*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 27*
      HYPz3^2*HYPz5^2*HYPz6^2 + 63*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 63*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 27*HYPz3^2*HYPz4^2*HYPz6^2 + 54*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 27*HYPz3^2*HYPz4^2*HYPz5^2 + 51*HYPz2*HYPz4^2*HYPz5*
      HYPz6^2 + 51*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 102*HYPz2*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 102*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 51*HYPz2*HYPz3*HYPz4^2*
      HYPz6^2 + 102*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 51*HYPz2*HYPz3*HYPz4^2*
      HYPz5^2 + 51*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 51*HYPz2*HYPz3^2*HYPz5^2*
      HYPz6 + 51*HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 102*HYPz2*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 51*HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 18*HYPz2^2*HYPz4^2*HYPz6^2 + 36
      *HYPz2^2*HYPz4^2*HYPz5*HYPz6 + 18*HYPz2^2*HYPz4^2*HYPz5^2 + 36*HYPz2^2*
      HYPz3*HYPz4*HYPz6^2 + 72*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 36*HYPz2^2*
      HYPz3*HYPz4*HYPz5^2 + 18*HYPz2^2*HYPz3^2*HYPz6^2 + 36*HYPz2^2*HYPz3^2*
      HYPz5*HYPz6 + 18*HYPz2^2*HYPz3^2*HYPz5^2 + 46*HYPz1*HYPz4^2*HYPz5*
      HYPz6^2 + 46*HYPz1*HYPz4^2*HYPz5^2*HYPz6 + 92*HYPz1*HYPz3*HYPz4*HYPz5*
      HYPz6^2 + 92*HYPz1*HYPz3*HYPz4*HYPz5^2*HYPz6 + 46*HYPz1*HYPz3*HYPz4^2*
      HYPz6^2 + 92*HYPz1*HYPz3*HYPz4^2*HYPz5*HYPz6 + 46*HYPz1*HYPz3*HYPz4^2*
      HYPz5^2 + 46*HYPz1*HYPz3^2*HYPz5*HYPz6^2 + 46*HYPz1*HYPz3^2*HYPz5^2*
      HYPz6 + 46*HYPz1*HYPz3^2*HYPz4*HYPz6^2 + 92*HYPz1*HYPz3^2*HYPz4*HYPz5*
      HYPz6 + 46*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 30*HYPz1*HYPz2*HYPz4^2*HYPz6^2
       + 60*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 30*HYPz1*HYPz2*HYPz4^2*HYPz5^2
       + 60*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 120*HYPz1*HYPz2*HYPz3*HYPz4*
      HYPz5*HYPz6 + 60*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2 + 30*HYPz1*HYPz2*
      HYPz3^2*HYPz6^2 + 60*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 30*HYPz1*HYPz2*
      HYPz3^2*HYPz5^2 + 12*HYPz1^2*HYPz4^2*HYPz6^2 + 24*HYPz1^2*HYPz4^2*HYPz5*
      HYPz6 + 12*HYPz1^2*HYPz4^2*HYPz5^2 + 24*HYPz1^2*HYPz3*HYPz4*HYPz6^2 + 48
      *HYPz1^2*HYPz3*HYPz4*HYPz5*HYPz6 + 24*HYPz1^2*HYPz3*HYPz4*HYPz5^2 + 12*
      HYPz1^2*HYPz3^2*HYPz6^2 + 24*HYPz1^2*HYPz3^2*HYPz5*HYPz6 + 12*HYPz1^2*
      HYPz3^2*HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(16*HYPep - 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(81*HYPz4^2*HYPz5^2*HYPz6^2 + 162*HYPz3*HYPz4*HYPz5^2*HYPz6^2
       + 162*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 162*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 
      81*HYPz3^2*HYPz5^2*HYPz6^2 + 162*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 162*
      HYPz3^2*HYPz4*HYPz5^2*HYPz6 + 72*HYPz3^2*HYPz4^2*HYPz6^2 + 144*HYPz3^2*
      HYPz4^2*HYPz5*HYPz6 + 72*HYPz3^2*HYPz4^2*HYPz5^2 + 132*HYPz2*HYPz4^2*
      HYPz5*HYPz6^2 + 132*HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 264*HYPz2*HYPz3*HYPz4*
      HYPz5*HYPz6^2 + 264*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 120*HYPz2*HYPz3*
      HYPz4^2*HYPz6^2 + 240*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 120*HYPz2*HYPz3*
      HYPz4^2*HYPz5^2 + 132*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 132*HYPz2*HYPz3^2*
      HYPz5^2*HYPz6 + 120*HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 240*HYPz2*HYPz3^2*
      HYPz4*HYPz5*HYPz6 + 120*HYPz2*HYPz3^2*HYPz4*HYPz5^2 + 48*HYPz2^2*HYPz4^2
      *HYPz6^2 + 96*HYPz2^2*HYPz4^2*HYPz5*HYPz6 + 48*HYPz2^2*HYPz4^2*HYPz5^2
       + 96*HYPz2^2*HYPz3*HYPz4*HYPz6^2 + 192*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6
       + 96*HYPz2^2*HYPz3*HYPz4*HYPz5^2 + 48*HYPz2^2*HYPz3^2*HYPz6^2 + 96*
      HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 48*HYPz2^2*HYPz3^2*HYPz5^2 + 94*HYPz1*
      HYPz4^2*HYPz5*HYPz6^2 + 94*HYPz1*HYPz4^2*HYPz5^2*HYPz6 + 188*HYPz1*HYPz3
      *HYPz4*HYPz5*HYPz6^2 + 188*HYPz1*HYPz3*HYPz4*HYPz5^2*HYPz6 + 86*HYPz1*
      HYPz3*HYPz4^2*HYPz6^2 + 172*HYPz1*HYPz3*HYPz4^2*HYPz5*HYPz6 + 86*HYPz1*
      HYPz3*HYPz4^2*HYPz5^2 + 94*HYPz1*HYPz3^2*HYPz5*HYPz6^2 + 94*HYPz1*
      HYPz3^2*HYPz5^2*HYPz6 + 86*HYPz1*HYPz3^2*HYPz4*HYPz6^2 + 172*HYPz1*
      HYPz3^2*HYPz4*HYPz5*HYPz6 + 86*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 68*HYPz1*
      HYPz2*HYPz4^2*HYPz6^2 + 136*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 68*HYPz1*
      HYPz2*HYPz4^2*HYPz5^2 + 136*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 272*HYPz1*
      HYPz2*HYPz3*HYPz4*HYPz5*HYPz6 + 136*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2 + 68
      *HYPz1*HYPz2*HYPz3^2*HYPz6^2 + 136*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 68*
      HYPz1*HYPz2*HYPz3^2*HYPz5^2 + 24*HYPz1^2*HYPz4^2*HYPz6^2 + 48*HYPz1^2*
      HYPz4^2*HYPz5*HYPz6 + 24*HYPz1^2*HYPz4^2*HYPz5^2 + 48*HYPz1^2*HYPz3*
      HYPz4*HYPz6^2 + 96*HYPz1^2*HYPz3*HYPz4*HYPz5*HYPz6 + 48*HYPz1^2*HYPz3*
      HYPz4*HYPz5^2 + 24*HYPz1^2*HYPz3^2*HYPz6^2 + 48*HYPz1^2*HYPz3^2*HYPz5*
      HYPz6 + 24*HYPz1^2*HYPz3^2*HYPz5^2,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(16*HYPep - 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 192*HYPep^2 + 400*HYPep - 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 192*HYPep^2 + 400*HYPep - 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*
      HYPz6 + 2*HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + 
      HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(96*HYPep - 8)
       -
         16
         *HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + 
      HYPz2*HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*
      HYPz5 + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 32*HYPep^2 + 128*HYPep - 128)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 96*HYPep^3 + 392*HYPep^2 - 416*HYPep + 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 6*HYPz3*HYPz4*
      HYPz6 + 6*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(16*HYPep - 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 6*HYPz3*HYPz4*
      HYPz6 + 6*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(48*HYPep^2 - 100*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(6*HYPz4*HYPz5*HYPz6 + 6*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(16*HYPep - 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(6*HYPz4*HYPz5*HYPz6 + 6*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(48*HYPep^2 - 100*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(6*HYPz4*HYPz5*HYPz6 + 6*HYPz3*HYPz5*HYPz6 + 6*HYPz3*HYPz4*
      HYPz6 + 6*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 24*HYPep + 2)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(6*HYPz4*HYPz5*HYPz6 + 6*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(32*HYPep - 8)
       +
         4
         *HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(8*HYPep^2 - 32*HYPep + 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 18*HYPz3*HYPz4*
      HYPz6 + 18*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 4*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(18*HYPz4*HYPz5*HYPz6 + 18*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 4*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(96*HYPep^3 - 536*HYPep^2 + 332*HYPep - 24)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz2 + HYPz1,1)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 64*HYPep^3 + 176*HYPep^2 - 104*HYPep + 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz2 + HYPz1,1)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep(64*HYPep^2 - 208*HYPep + 48)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz2 + HYPz1,1)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 16*HYPep^2 + 52*HYPep - 12)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 4 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 72*HYPep^3 - 102*HYPep^2 - 18*HYPep + 12)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,2)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(48*HYPep^3 - 76*HYPep^2 - 48*HYPep + 16)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(2*HYPz4^2*HYPz5^2*HYPz6^2 + 4*HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 5
      *HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 5*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 2*HYPz3^2
      *HYPz5^2*HYPz6^2 + 5*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 5*HYPz3^2*HYPz4*
      HYPz5^2*HYPz6 + 2*HYPz3^2*HYPz4^2*HYPz6^2 + 4*HYPz3^2*HYPz4^2*HYPz5*
      HYPz6 + 2*HYPz3^2*HYPz4^2*HYPz5^2 + 6*HYPz2*HYPz4^2*HYPz5*HYPz6^2 + 6*
      HYPz2*HYPz4^2*HYPz5^2*HYPz6 + 12*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6^2 + 12*
      HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 6*HYPz2*HYPz3*HYPz4^2*HYPz6^2 + 12*
      HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 6*HYPz2*HYPz3*HYPz4^2*HYPz5^2 + 6*
      HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 6*HYPz2*HYPz3^2*HYPz5^2*HYPz6 + 6*HYPz2*
      HYPz3^2*HYPz4*HYPz6^2 + 12*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 6*HYPz2*
      HYPz3^2*HYPz4*HYPz5^2 + 4*HYPz2^2*HYPz4^2*HYPz6^2 + 8*HYPz2^2*HYPz4^2*
      HYPz5*HYPz6 + 4*HYPz2^2*HYPz4^2*HYPz5^2 + 8*HYPz2^2*HYPz3*HYPz4*HYPz6^2
       + 16*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz2^2*HYPz3*HYPz4*HYPz5^2 + 
      4*HYPz2^2*HYPz3^2*HYPz6^2 + 8*HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 4*HYPz2^2*
      HYPz3^2*HYPz5^2 + 3*HYPz1*HYPz4^2*HYPz5*HYPz6^2 + 3*HYPz1*HYPz4^2*
      HYPz5^2*HYPz6 + 6*HYPz1*HYPz3*HYPz4*HYPz5*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4*
      HYPz5^2*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz6^2 + 6*HYPz1*HYPz3*HYPz4^2*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4^2*HYPz5^2 + 3*HYPz1*HYPz3^2*HYPz5*
      HYPz6^2 + 3*HYPz1*HYPz3^2*HYPz5^2*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz6^2
       + 6*HYPz1*HYPz3^2*HYPz4*HYPz5*HYPz6 + 3*HYPz1*HYPz3^2*HYPz4*HYPz5^2 + 4
      *HYPz1*HYPz2*HYPz4^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz4^2*HYPz5*HYPz6 + 4*
      HYPz1*HYPz2*HYPz4^2*HYPz5^2 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz6^2 + 16*
      HYPz1*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6 + 8*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2
       + 4*HYPz1*HYPz2*HYPz3^2*HYPz6^2 + 8*HYPz1*HYPz2*HYPz3^2*HYPz5*HYPz6 + 4
      *HYPz1*HYPz2*HYPz3^2*HYPz5^2,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(192*HYPep^3 + 32*HYPep^2 - 52*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5
       + 2*HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^2 + HYPep)
         *HYPnumep( - 48*HYPep^2 + 112*HYPep + 96)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 144*HYPep^3 + 348*HYPep^2 + 260*HYPep - 24)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(12*HYPep^2 - 28*HYPep - 24)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(144*HYPep^3 - 348*HYPep^2 - 260*HYPep + 24)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 336*HYPep^3 + 52*HYPep^2 + 136*HYPep - 32)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 336*HYPep^3 + 76*HYPep^2 + 146*HYPep - 36)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 4*HYPz2*HYPz4*HYPz6 + 4*HYPz2*HYPz4*HYPz5
       + 4*HYPz2*HYPz3*HYPz6 + 4*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(288*HYPep^3 - 48*HYPep^2 - 118*HYPep + 28)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 4*HYPz3*HYPz4*
      HYPz6 + 4*HYPz3*HYPz4*HYPz5 + 4*HYPz2*HYPz4*HYPz6 + 4*HYPz2*HYPz4*HYPz5
       + 4*HYPz2*HYPz3*HYPz6 + 4*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(24*HYPep^2 + 10*HYPep - 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 128*HYPep^3 + 128*HYPep^2 - 40*HYPep + 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(64*HYPep^2 - 48*HYPep + 8)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 384*HYPep^3 + 512*HYPep^2 - 216*HYPep + 28)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(384*HYPep^3 - 224*HYPep^2 + 40*HYPep - 2)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(64*HYPep^3 - 256*HYPep^2 + 116*HYPep - 14)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(448*HYPep^3 - 512*HYPep^2 + 172*HYPep - 18)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(384*HYPep^3 - 1280*HYPep^2 + 808*HYPep - 128)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 4*HYPz3*HYPz4*
      HYPz6 + 4*HYPz3*HYPz4*HYPz5 + 4*HYPz2*HYPz4*HYPz6 + 4*HYPz2*HYPz4*HYPz5
       + 4*HYPz2*HYPz3*HYPz6 + 4*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 32*HYPep^2 + 16*HYPep - 2)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(6*HYPz4*HYPz5*HYPz6 + 6*HYPz3*HYPz5*HYPz6 + 9*HYPz3*HYPz4*
      HYPz6 + 9*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(16*HYPep - 4)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 6*HYPz3*HYPz4*
      HYPz6 + 6*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 96*HYPep^2 + 80*HYPep - 14)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 416*HYPep^3 + 1448*HYPep^2 - 888*HYPep + 138)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,4)
         *HYPpow(HYPz4 + HYPz3,2)
         *HYPpow(HYPz6 + HYPz5,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 336*HYPep^3 + 124*HYPep^2 + 166*HYPep - 44)
       +
         HYPpow(HYPz1, - 2 - 3*HYPep)
         *HYPpow(HYPz2,4)
         *HYPpow(HYPz4 + HYPz3,2)
         *HYPpow(HYPz6 + HYPz5,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(448*HYPep^3 - 672*HYPep^2 + 284*HYPep - 36)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(288*HYPep^3 - 98*HYPep + 20)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 288*HYPep^3 - 72*HYPep^2 + 68*HYPep - 8)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(288*HYPep^3 - 98*HYPep + 20)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 288*HYPep^3 - 72*HYPep^2 + 68*HYPep - 8)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(128*HYPep^2 - 96*HYPep + 16)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 3 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 384*HYPep^3 + 448*HYPep^2 - 168*HYPep + 20)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(1152*HYPep^3 - 576*HYPep^2 + 88*HYPep - 4)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + 2*HYPz3*HYPz4*HYPz6
       + 2*HYPz3*HYPz4*HYPz5 + 2*HYPz2*HYPz4*HYPz6 + 2*HYPz2*HYPz4*HYPz5 + 2*
      HYPz2*HYPz3*HYPz6 + 2*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*HYPz1*
      HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 192*HYPep^2 + 80*HYPep - 8)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(2*HYPz4*HYPz5*HYPz6 + 2*HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6
       + HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*
      HYPz3*HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5
       + HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep(384*HYPep^3 - 256*HYPep^2 + 56*HYPep - 4)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(3*HYPz4*HYPz5*HYPz6 + 3*HYPz3*HYPz5*HYPz6 + 3*HYPz3*HYPz4*
      HYPz6 + 3*HYPz3*HYPz4*HYPz5 + 3*HYPz2*HYPz4*HYPz6 + 3*HYPz2*HYPz4*HYPz5
       + 3*HYPz2*HYPz3*HYPz6 + 3*HYPz2*HYPz3*HYPz5 + 2*HYPz1*HYPz4*HYPz6 + 2*
      HYPz1*HYPz4*HYPz5 + 2*HYPz1*HYPz3*HYPz6 + 2*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(384*HYPep^3 - 1216*HYPep^2 + 648*HYPep - 92)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPpow(9*HYPz4*HYPz5*HYPz6 + 9*HYPz3*HYPz5*HYPz6 + 6*HYPz3*HYPz4*
      HYPz6 + 6*HYPz3*HYPz4*HYPz5 + 6*HYPz2*HYPz4*HYPz6 + 6*HYPz2*HYPz4*HYPz5
       + 6*HYPz2*HYPz3*HYPz6 + 6*HYPz2*HYPz3*HYPz5 + 4*HYPz1*HYPz4*HYPz6 + 4*
      HYPz1*HYPz4*HYPz5 + 4*HYPz1*HYPz3*HYPz6 + 4*HYPz1*HYPz3*HYPz5,1)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep( - 96*HYPep^2 + 64*HYPep - 10)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,1)
         *HYPpow(HYPz6 + HYPz5,1)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 1 + 4*HYPep)
         *HYPdenep(3*HYPep^3 + HYPep^2)
         *HYPnumep( - 384*HYPep^3 + 1216*HYPep^2 - 456*HYPep + 44)
       +
         HYPpow(HYPz1, - 1 - 3*HYPep)
         *HYPpow(HYPz2,3)
         *HYPpow(HYPz4 + HYPz3,2)
         *HYPpow(HYPz6 + HYPz5,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(2496*HYPep^3 - 2976*HYPep^2 + 1132*HYPep - 136)
       +
         HYPpow(HYPz1, - 3*HYPep)
         *HYPpow(HYPz2,2)
         *HYPpow(HYPz4 + HYPz3,2)
         *HYPpow(HYPz6 + HYPz5,2)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(HYPz4*HYPz5*HYPz6 + HYPz3*HYPz5*HYPz6 + HYPz3*HYPz4*HYPz6 + 
      HYPz3*HYPz4*HYPz5 + HYPz2*HYPz4*HYPz6 + HYPz2*HYPz4*HYPz5 + HYPz2*HYPz3*
      HYPz6 + HYPz2*HYPz3*HYPz5 + HYPz1*HYPz4*HYPz6 + HYPz1*HYPz4*HYPz5 + 
      HYPz1*HYPz3*HYPz6 + HYPz1*HYPz3*HYPz5, - 2 + 4*HYPep)
         *HYPdenep(9*HYPep^3 + 3*HYPep^2)
         *HYPnumep(1152*HYPep^3 - 960*HYPep^2 + 296*HYPep - 32)
  )
;
*
id HYPnumep(HYPn1?) = HYPratep(HYPn1,1);
id HYPdenep(HYPn1?) = HYPratep(1,HYPn1);
*
.sort
polyratfun HYPratep;
*
.sort
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypAutoRegularize_8 :
* Y5-integral:
#include- hyperform.h
*
#redefine HYPNPARAMS "6"
*
local F = 
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 +
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 3*HYPep)
;
*
.sort
*
#call HypAutoRegularize(F,)
*
.sort
*
local diff = 
  F
  -
  (
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 3 - 3*HYPep)
         *HYPpow(2*HYPz2*HYPz4*HYPz5*HYPz6 + 2*HYPz2*HYPz3*HYPz5*HYPz6 + 3*
      HYPz2*HYPz3*HYPz4*HYPz6 + 3*HYPz2*HYPz3*HYPz4*HYPz5 + 2*HYPz1*HYPz4*
      HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4*HYPz6 + 3*
      HYPz1*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz4*HYPz6 + 3*HYPz1*HYPz2*
      HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz3*HYPz6 + 3*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz2*HYPz4*HYPz5*HYPz6 + 3*HYPz2*HYPz3*HYPz5*HYPz6 + 2*
      HYPz2*HYPz3*HYPz4*HYPz6 + 2*HYPz2*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz4*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz4*HYPz6 + 2*
      HYPz1*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz4*HYPz6 + 3*HYPz1*HYPz2*
      HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz3*HYPz6 + 3*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz2*HYPz4*HYPz5*HYPz6 + 3*HYPz2*HYPz3*HYPz5*HYPz6 + 3*
      HYPz2*HYPz3*HYPz4*HYPz6 + 3*HYPz2*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz4*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4*HYPz6 + 3*
      HYPz1*HYPz3*HYPz4*HYPz5 + 2*HYPz1*HYPz2*HYPz4*HYPz6 + 2*HYPz1*HYPz2*
      HYPz4*HYPz5 + 2*HYPz1*HYPz2*HYPz3*HYPz6 + 2*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPdenep(HYPep^2)
         *HYPnumep( - 27*HYPep^2 - 27*HYPep - 6)
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(2*HYPz2*HYPz4*HYPz5*HYPz6 + 2*HYPz2*HYPz3*HYPz5*HYPz6 + 2*
      HYPz2*HYPz3*HYPz4*HYPz6 + 2*HYPz2*HYPz3*HYPz4*HYPz5 + 2*HYPz1*HYPz4*
      HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz4*HYPz6 + 2*
      HYPz1*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz4*HYPz6 + 3*HYPz1*HYPz2*
      HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz3*HYPz6 + 3*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz2*HYPz4*HYPz5*HYPz6 + 3*HYPz2*HYPz3*HYPz5*HYPz6 + 3*
      HYPz2*HYPz3*HYPz4*HYPz6 + 3*HYPz2*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz4*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4*HYPz6 + 3*
      HYPz1*HYPz3*HYPz4*HYPz5 + 2*HYPz1*HYPz2*HYPz4*HYPz6 + 2*HYPz1*HYPz2*
      HYPz4*HYPz5 + 2*HYPz1*HYPz2*HYPz3*HYPz6 + 2*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPdenep(HYPep^2)
         *HYPnumep(27*HYPep + 9)
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(2*HYPz2*HYPz4*HYPz5*HYPz6 + 2*HYPz2*HYPz3*HYPz5*HYPz6 + 3*
      HYPz2*HYPz3*HYPz4*HYPz6 + 3*HYPz2*HYPz3*HYPz4*HYPz5 + 2*HYPz1*HYPz4*
      HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4*HYPz6 + 3*
      HYPz1*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz4*HYPz6 + 3*HYPz1*HYPz2*
      HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz3*HYPz6 + 3*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(3*HYPz2*HYPz4*HYPz5*HYPz6 + 3*HYPz2*HYPz3*HYPz5*HYPz6 + 2*
      HYPz2*HYPz3*HYPz4*HYPz6 + 2*HYPz2*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz4*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz4*HYPz6 + 2*
      HYPz1*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz4*HYPz6 + 3*HYPz1*HYPz2*
      HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz3*HYPz6 + 3*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPdenep(HYPep)
         *HYPnumep(81*HYPep + 27)
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(3*HYPz2*HYPz4*HYPz5*HYPz6 + 3*HYPz2*HYPz3*HYPz5*HYPz6 + 3*
      HYPz2*HYPz3*HYPz4*HYPz6 + 3*HYPz2*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz4*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4*HYPz6 + 3*
      HYPz1*HYPz3*HYPz4*HYPz5 + 2*HYPz1*HYPz2*HYPz4*HYPz6 + 2*HYPz1*HYPz2*
      HYPz4*HYPz5 + 2*HYPz1*HYPz2*HYPz3*HYPz6 + 2*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPpow(5*HYPz2*HYPz4*HYPz5*HYPz6 + 5*HYPz2*HYPz3*HYPz5*HYPz6 + 5*
      HYPz2*HYPz3*HYPz4*HYPz6 + 5*HYPz2*HYPz3*HYPz4*HYPz5 + 5*HYPz1*HYPz4*
      HYPz5*HYPz6 + 5*HYPz1*HYPz3*HYPz5*HYPz6 + 5*HYPz1*HYPz3*HYPz4*HYPz6 + 5*
      HYPz1*HYPz3*HYPz4*HYPz5 + 6*HYPz1*HYPz2*HYPz4*HYPz6 + 6*HYPz1*HYPz2*
      HYPz4*HYPz5 + 6*HYPz1*HYPz2*HYPz3*HYPz6 + 6*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPdenep(HYPep)
         *HYPnumep(81*HYPep + 27)
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 2 - 3*HYPep)
         *HYPpow(12*HYPz2^2*HYPz4^2*HYPz5^2*HYPz6^2 + 24*HYPz2^2*HYPz3*HYPz4*
      HYPz5^2*HYPz6^2 + 26*HYPz2^2*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 26*HYPz2^2*
      HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 12*HYPz2^2*HYPz3^2*HYPz5^2*HYPz6^2 + 26*
      HYPz2^2*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 26*HYPz2^2*HYPz3^2*HYPz4*HYPz5^2*
      HYPz6 + 12*HYPz2^2*HYPz3^2*HYPz4^2*HYPz6^2 + 24*HYPz2^2*HYPz3^2*HYPz4^2*
      HYPz5*HYPz6 + 12*HYPz2^2*HYPz3^2*HYPz4^2*HYPz5^2 + 24*HYPz1*HYPz2*
      HYPz4^2*HYPz5^2*HYPz6^2 + 48*HYPz1*HYPz2*HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 
      52*HYPz1*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 52*HYPz1*HYPz2*HYPz3*
      HYPz4^2*HYPz5^2*HYPz6 + 24*HYPz1*HYPz2*HYPz3^2*HYPz5^2*HYPz6^2 + 52*
      HYPz1*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 52*HYPz1*HYPz2*HYPz3^2*HYPz4*
      HYPz5^2*HYPz6 + 24*HYPz1*HYPz2*HYPz3^2*HYPz4^2*HYPz6^2 + 48*HYPz1*HYPz2*
      HYPz3^2*HYPz4^2*HYPz5*HYPz6 + 24*HYPz1*HYPz2*HYPz3^2*HYPz4^2*HYPz5^2 + 
      25*HYPz1*HYPz2^2*HYPz4^2*HYPz5*HYPz6^2 + 25*HYPz1*HYPz2^2*HYPz4^2*
      HYPz5^2*HYPz6 + 50*HYPz1*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6^2 + 50*HYPz1*
      HYPz2^2*HYPz3*HYPz4*HYPz5^2*HYPz6 + 25*HYPz1*HYPz2^2*HYPz3*HYPz4^2*
      HYPz6^2 + 50*HYPz1*HYPz2^2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 25*HYPz1*HYPz2^2*
      HYPz3*HYPz4^2*HYPz5^2 + 25*HYPz1*HYPz2^2*HYPz3^2*HYPz5*HYPz6^2 + 25*
      HYPz1*HYPz2^2*HYPz3^2*HYPz5^2*HYPz6 + 25*HYPz1*HYPz2^2*HYPz3^2*HYPz4*
      HYPz6^2 + 50*HYPz1*HYPz2^2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 25*HYPz1*HYPz2^2*
      HYPz3^2*HYPz4*HYPz5^2 + 12*HYPz1^2*HYPz4^2*HYPz5^2*HYPz6^2 + 24*HYPz1^2*
      HYPz3*HYPz4*HYPz5^2*HYPz6^2 + 26*HYPz1^2*HYPz3*HYPz4^2*HYPz5*HYPz6^2 + 
      26*HYPz1^2*HYPz3*HYPz4^2*HYPz5^2*HYPz6 + 12*HYPz1^2*HYPz3^2*HYPz5^2*
      HYPz6^2 + 26*HYPz1^2*HYPz3^2*HYPz4*HYPz5*HYPz6^2 + 26*HYPz1^2*HYPz3^2*
      HYPz4*HYPz5^2*HYPz6 + 12*HYPz1^2*HYPz3^2*HYPz4^2*HYPz6^2 + 24*HYPz1^2*
      HYPz3^2*HYPz4^2*HYPz5*HYPz6 + 12*HYPz1^2*HYPz3^2*HYPz4^2*HYPz5^2 + 25*
      HYPz1^2*HYPz2*HYPz4^2*HYPz5*HYPz6^2 + 25*HYPz1^2*HYPz2*HYPz4^2*HYPz5^2*
      HYPz6 + 50*HYPz1^2*HYPz2*HYPz3*HYPz4*HYPz5*HYPz6^2 + 50*HYPz1^2*HYPz2*
      HYPz3*HYPz4*HYPz5^2*HYPz6 + 25*HYPz1^2*HYPz2*HYPz3*HYPz4^2*HYPz6^2 + 50*
      HYPz1^2*HYPz2*HYPz3*HYPz4^2*HYPz5*HYPz6 + 25*HYPz1^2*HYPz2*HYPz3*HYPz4^2
      *HYPz5^2 + 25*HYPz1^2*HYPz2*HYPz3^2*HYPz5*HYPz6^2 + 25*HYPz1^2*HYPz2*
      HYPz3^2*HYPz5^2*HYPz6 + 25*HYPz1^2*HYPz2*HYPz3^2*HYPz4*HYPz6^2 + 50*
      HYPz1^2*HYPz2*HYPz3^2*HYPz4*HYPz5*HYPz6 + 25*HYPz1^2*HYPz2*HYPz3^2*HYPz4
      *HYPz5^2 + 12*HYPz1^2*HYPz2^2*HYPz4^2*HYPz6^2 + 24*HYPz1^2*HYPz2^2*
      HYPz4^2*HYPz5*HYPz6 + 12*HYPz1^2*HYPz2^2*HYPz4^2*HYPz5^2 + 24*HYPz1^2*
      HYPz2^2*HYPz3*HYPz4*HYPz6^2 + 48*HYPz1^2*HYPz2^2*HYPz3*HYPz4*HYPz5*HYPz6
       + 24*HYPz1^2*HYPz2^2*HYPz3*HYPz4*HYPz5^2 + 12*HYPz1^2*HYPz2^2*HYPz3^2*
      HYPz6^2 + 24*HYPz1^2*HYPz2^2*HYPz3^2*HYPz5*HYPz6 + 12*HYPz1^2*HYPz2^2*
      HYPz3^2*HYPz5^2,1)
         *HYPdenep(HYPep^2)
         *HYPnumep(27*HYPep + 9)
       -
         81
         *HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 1 - 3*HYPep)
         *HYPpow(2*HYPz2*HYPz4*HYPz5*HYPz6 + 2*HYPz2*HYPz3*HYPz5*HYPz6 + 2*
      HYPz2*HYPz3*HYPz4*HYPz6 + 2*HYPz2*HYPz3*HYPz4*HYPz5 + 2*HYPz1*HYPz4*
      HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz5*HYPz6 + 2*HYPz1*HYPz3*HYPz4*HYPz6 + 2*
      HYPz1*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz4*HYPz6 + 3*HYPz1*HYPz2*
      HYPz4*HYPz5 + 3*HYPz1*HYPz2*HYPz3*HYPz6 + 3*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPdenep(HYPep)
       -
         243
         *HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 1 - 3*HYPep)
         *HYPpow(3*HYPz2*HYPz4*HYPz5*HYPz6 + 3*HYPz2*HYPz3*HYPz5*HYPz6 + 3*
      HYPz2*HYPz3*HYPz4*HYPz6 + 3*HYPz2*HYPz3*HYPz4*HYPz5 + 3*HYPz1*HYPz4*
      HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz5*HYPz6 + 3*HYPz1*HYPz3*HYPz4*HYPz6 + 3*
      HYPz1*HYPz3*HYPz4*HYPz5 + 2*HYPz1*HYPz2*HYPz4*HYPz6 + 2*HYPz1*HYPz2*
      HYPz4*HYPz5 + 2*HYPz1*HYPz2*HYPz3*HYPz6 + 2*HYPz1*HYPz2*HYPz3*HYPz5,1)
       -
         81
         *HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 1 - 3*HYPep)
         *HYPpow(5*HYPz2*HYPz4*HYPz5*HYPz6 + 5*HYPz2*HYPz3*HYPz5*HYPz6 + 5*
      HYPz2*HYPz3*HYPz4*HYPz6 + 5*HYPz2*HYPz3*HYPz4*HYPz5 + 5*HYPz1*HYPz4*
      HYPz5*HYPz6 + 5*HYPz1*HYPz3*HYPz5*HYPz6 + 5*HYPz1*HYPz3*HYPz4*HYPz6 + 5*
      HYPz1*HYPz3*HYPz4*HYPz5 + 4*HYPz1*HYPz2*HYPz4*HYPz6 + 4*HYPz1*HYPz2*
      HYPz4*HYPz5 + 4*HYPz1*HYPz2*HYPz3*HYPz6 + 4*HYPz1*HYPz2*HYPz3*HYPz5,1)
         *HYPdenep(HYPep)
       -
         243
         *HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 1 - 3*HYPep)
         *HYPpow(5*HYPz2*HYPz4*HYPz5*HYPz6 + 5*HYPz2*HYPz3*HYPz5*HYPz6 + 5*
      HYPz2*HYPz3*HYPz4*HYPz6 + 5*HYPz2*HYPz3*HYPz4*HYPz5 + 5*HYPz1*HYPz4*
      HYPz5*HYPz6 + 5*HYPz1*HYPz3*HYPz5*HYPz6 + 5*HYPz1*HYPz3*HYPz4*HYPz6 + 5*
      HYPz1*HYPz3*HYPz4*HYPz5 + 6*HYPz1*HYPz2*HYPz4*HYPz6 + 6*HYPz1*HYPz2*
      HYPz4*HYPz5 + 6*HYPz1*HYPz2*HYPz3*HYPz6 + 6*HYPz1*HYPz2*HYPz3*HYPz5,1)
       +
         HYPpow(HYPz2 + HYPz1, - 2 + 4*HYPep)
         *HYPpow(HYPz4 + HYPz3, - 2 + 4*HYPep)
         *HYPpow(HYPz6 + HYPz5, - 2 + 4*HYPep)
         *HYPpow(HYPz2*HYPz4*HYPz5*HYPz6 + HYPz2*HYPz3*HYPz5*HYPz6 + HYPz2*
      HYPz3*HYPz4*HYPz6 + HYPz2*HYPz3*HYPz4*HYPz5 + HYPz1*HYPz4*HYPz5*HYPz6 + 
      HYPz1*HYPz3*HYPz5*HYPz6 + HYPz1*HYPz3*HYPz4*HYPz6 + HYPz1*HYPz3*HYPz4*
      HYPz5 + HYPz1*HYPz2*HYPz4*HYPz6 + HYPz1*HYPz2*HYPz4*HYPz5 + HYPz1*HYPz2*
      HYPz3*HYPz6 + HYPz1*HYPz2*HYPz3*HYPz5, - 3*HYPep)
         *HYPdenep(HYPep^2)
         *HYPnumep(729*HYPep^2 - 54)
  )
;
*
id HYPnumep(HYPn1?) = HYPratep(HYPn1,1);
id HYPdenep(HYPn1?) = HYPratep(1,HYPn1);
*
.sort
polyratfun HYPratep;
*
.sort
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ HypAutoRegularize_9 :
* Two-mass scalar triangle:
#include- hyperform.h
*
#redefine HYPNPARAMS "3"
*
symbol [S/m^2];
*
local F = 
       +
         HYPpow(HYPz3 + HYPz2 + HYPz1, - 1 + 2*HYPep)
         *HYPpow(HYPz3^2 + 2*HYPz1*HYPz3 + HYPz1*HYPz3*[S/m^2] + HYPz1^2, - 1
       - HYPep)
;
*
.sort
*
#call HypAutoRegularize(F,[S/m^2])
*
.sort
*
local diff = 
  F
  -
  (
      +
         HYPpow(HYPz3 + HYPz1,1)
         *HYPpow(HYPz3 + HYPz2 + HYPz1, - 2 + 2*HYPep)
         *HYPpow(HYPz3^2 + 2*HYPz1*HYPz3 + HYPz1*HYPz3*[S/m^2] + HYPz1^2, - 1
       - HYPep)
         *HYPdenep(2*HYPep)
         *HYPnumep(2*HYPep - 1)
  )
;
*
id HYPnumep(HYPn1?) = HYPratep(HYPn1,1);
id HYPdenep(HYPn1?) = HYPratep(1,HYPn1);
*
.sort
polyratfun HYPratep;
*
.sort
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
