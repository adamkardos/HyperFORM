**************************
* PREPROCESSOR VARIABLES *
**************************
#define HYPNPARAMS "0"
#define HYPMAXEP "0"
#define HYPMAXMATCH "20"
#define CURRENTINTVAR "0"
#define INITMZV "1"
#define MAXMZVWORDLENGTH "10"
#define MAXREGIT "10"
#define HYPMAXZ "5"
*
#define HYPcheckForZeroCoefficients "1"
#define CheckPolysInSimplifyDiffLogDiffFuncs "1"
#define KeepLinfZeroInZeroRegularization  "0"
#define FibrationBasisZeroLimitBeforeDiff "1"
#define DoZeroLimit "1"
*
#define HYPIntegrationSequence ""
*
#define HYPDEBUG "0"
*
*************
* counters: *
*************
#define HYPtempCount "0"
#define HYPzeroedOutTotal "0"
*
#define HYPdebug "0"
**********************
* AUXILIARY SYMBOLS: *
**********************
symbols HYPn1,...,HYPn`HYPMAXMATCH';
symbol HYPzero;
symbol HYPi;
************************
* AUXILIARY FUNCTIONS: *
************************
cfunction HYPaux,HYPaux1,...,HYPaux9;
cfunction HYPtag;
cfunction HYPdrop;
cfunction HYPsep;
cfunctions HYPmatch,HYPmatch1,...,HYPmatch`HYPMAXMATCH';
cfunctions HYPdiv1,HYPdiv2,HYPdiv3,HYPdiv4,HYPgcd,HYPgcd1,HYPgcd2;
cfunction HYPauxSol;
cfunction HYPPhi;
********************
* POWER FUNCTIONS: *
********************
cfunction HYPpow;
cfunction HYPpowExpand;
*********************
* COLLECTING TERMS: *
*********************
cfunction HYPacc;
************************
* DIM. REG. PARAMETER: *
************************
symbol HYPep;
cfunction HYPe;
***********************************
* INTERNAL INTEGRATION VARIABLES: *
***********************************
symbols HYPz1,...,HYPz99;
set HYPparams:HYPz1,...,HYPz99;
*****************************
* NUMERATORS, DENOMINATORS: *
*****************************
cfunctions HYPnum,HYPden;
cfunctions HYPnumep,HYPdenep;
cfunction HYPdenx;
****************
* POLYNOMIALS: *
****************
cfunction HYPpoly;
***********************
* RATIONAL FUNCTIONS: *
***********************
cfunction HYPrat;
cfunction HYPcrat;
cfunction HYPratep;
*******************
* REGULARIZATION: *
*******************
cfunctions HYPsetJK,HYPsetJ,HYPsetK;
cfunctions HYPomega,HYPord,HYPdeg;
symbol HYPlam;
********************
* DIFFERENTIATION: *
********************
cfunctions HYPd,HYPdiff;
cfunction HYPtoDiff;
****************
* INTEGRATION: *
****************
cfunction HYPdx;
cfunctions HYPL,HYPw;
***********
* LIMITS: *
***********
cfunction HYPlim;
cfunction HYPcoeff;
cfunction HYPL0;
symbol HYPinf;
**************************
* LOGARITHMIC FUNCTIONS: *
**************************
cfunctions HYPlog,HYPlogx
cfunction HYPLx;
cfunction HYPLlimZero;
cfunction HYPLinfRegInfZero;
cfunction HYPLone;
cfunction HYPH;
cfunction HYPLconst;
cfunction HYPLinf;
cfunction HYPLzero;
cfunction HYPLconstZeroLimit;
cfunction HYPLphi;
cfunction HYPLlimInf;
***********
* TABLES: *
***********
ctable sparse,HYPsimpTbl(1);
ctable sparse,HYPsolutionTbl(1);
********************
* FIBRATION BASIS: *
********************
cfunction HYPSol,HYPsol;
*********************
* G SCHEME-RELATED: *
*********************
symbol HYPEulerGamma;
cfunction HYPGfunc;
cfunction HYPinvGfunc;
*********
* MZVs: *
*********
symbols HYPzeta2,HYPzeta3,HYPzeta5,HYPzeta7,HYPzeta9,HYPzeta11;
cfunction HYPGammaExpand, HYPinvGammaExpand;
**********
* DEBUG: *
**********
