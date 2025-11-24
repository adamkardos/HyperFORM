#include- declare-hyperform.h
#include- mzvlow.h
*
************
* PARSING: *
************
*{{{ HypParseInputExpr
#procedure HypParseInputExpr(epID,numID,denID,?params)
* This routine converts an expression into our own internal 
* notation
*****************************
* POWER FUNCTION CONVERSION *
*****************************
* Converting power functions to our internal notation:
  id exp_(HYPn1?,HYPn2?) = HYPpow(HYPn1,HYPn2);
****************
* DENOMINATORS *
****************
* Doing the same with simple denominators:
* NOTE: we directly convert denominators into power functions, this is needed
* because we usually have to start with a regularization in ep:
  id `denID'(HYPn1?) = HYPpow(HYPn1,-1);
**************
* NUMERATORS *
**************
  id `numID'(HYPn1?) = HYPpow(HYPn1,1);
********************************
* PARAMETERS TO INTEGER POWERS *
********************************
  #do par={`?params'}
    id `par' = HYPpow(`par',1);
  #enddo
***********
* EPSILON *
***********
* Converting the epsilon parameter:
  multiply replace_(`epID',HYPep);
* We also convert parameters:
  #define iPar "0"
  #do par={`?params'}
* Book-keep number of hyper parameters:
    #redefine iPar "{`iPar'+1}"
    multiply replace_(`par',HYPz`iPar');
  #enddo
* Update the number of hyper parameters if needed:
  #if (`iPar' > `HYPNPARAMS')
    #redefine HYPNPARAMS "`iPar'"
    #write "Number of hyper parameters increased to `HYPNPARAMS'"
  #endif
* We simply call our power function simplification routine:
  #call HypPowFuncSimplify
#endprocedure
*}}}
*
*{{{ HypArgsToRatFunc
#procedure HypArgsToRatFunc(ExprID,FuncID,RatFuncID,AuxFuncID,n1)
  .sort:ArgsToRatFunc start;
  skip;
  nskip `ExprID';
*
* Storing current number of extra symbols:
  #$ArgsToRatFuncEXTRASYM = `extrasymbols_';
* Converting arguments of `FuncID' to numbers:
  argtoextrasymbol,tonumber,`FuncID';
  repeat;
    id `FuncID'(?a,`n1'?number_,?b) = `FuncID'(?a,`AuxFuncID'(`n1'),?b);
  endrepeat;
  .sort:Args wrapped;
  skip;
  nskip `ExprID';
* Converting back:
  argument `FuncID';
    id `AuxFuncID'(`n1'?number_) = `AuxFuncID'(extrasymbol_(`n1'));
  endargument;
  .sort:Args subst back;
  skip;
* Deleting new extra symbols:
  #if (`$ArgsToRatFuncEXTRASYM' > 0)
    delete extrasymbols>`$ArgsToRatFuncEXTRASYM';
  #else
    delete extrasymbols;
  #endif
  .sort:Back to normal args;
  skip;
  nskip `ExprID';
* In case already have rational function wrapper remove auxiliary function 
* wrapper:
  argument `FuncID';
    id `AuxFuncID'(`RatFuncID'(?a)) = `RatFuncID'(?a);
* The rest should be directly converted:
    id `AuxFuncID'(`n1'?) = `RatFuncID'(`n1',1);
  endargument;
#endprocedure
*}}}
*
*{{{ HypCreateRatFuncArgsInVar
#procedure HypCreateRatFuncArgsInVar(ExprID,FuncID,UseFilter,FilterFuncID,ArgFuncID,PolyFuncID,Var,AuxFuncID,Sym1,Sym2)
* This is a complex routine:
* In an expression `ExprID' in all terms where `FuncID' is present (modulo using a filter function)
* the ArgFuncID functions in its argument are treated as rational functions:
* 1st argument: numerator
* 2nd argument: denominator
* these are to turn into rational functions in a single variable `Var' by breaking the arguments
* into multiple ones in each having a distinct power of `Var':
  .sort:CreateRatFuncArgsInVar start;
  skip;
* Working only on ExprID:
  nskip `ExprID';
* Making it possible to only work in special terms:
  if (
  #if (`UseFilter')
    count(`FilterFuncID',1) > 0
  #else
    1
  #endif
  );
* Trivial conversion of plain numeric arguments:
    repeat;
      id `FuncID'(?a,`Sym1'?number_,?b) = `FuncID'(?a,`ArgFuncID'(`Sym1', 1), ?b);
    endrepeat;
    argument `FuncID';
* Only carry out the splitting if the term is new and polynomials are not present already:
      if (match(`ArgFuncID'(`PolyFuncID'(?a),`PolyFuncID'(?b))) = 0);
* Wrap numerator and denominator into RatFuncID's:
        id `ArgFuncID'(`Sym1'?,`Sym2'?) = `ArgFuncID'(`PolyFuncID'(`Sym1'),`PolyFuncID'(`Sym2'));
        argument `ArgFuncID';
*          #call SplitPoly(`PolyFuncID',`AuxFuncID',`Var',`Sym1')
          #call HypGetPolyCoeffs(`PolyFuncID',`Sym1',`Var',1)
        endargument;
        #call HypSyncNumDenOrder(`ArgFuncID',`PolyFuncID',`PolyFuncID',`AuxFuncID',`Sym1',`Sym2')
      endif;
    endargument;
  endif;
#endprocedure
*}}}
*
**********
* TERMS: *
**********
*{{{ HypDropIndepTerms
#procedure HypDropIndepTerms(ExprID,FuncID,ArgFuncID,Var,FilterFuncID,CheckPolys,PolyFuncID,n1,n2)
  .sort:DropIndepTerms start;
  skip;
  nskip `ExprID';
* Only bother with terms free of `FilterFuncID':
  if (count(`FilterFuncID',1) == 0);
    $varmax = 0;
* Looking into the argument of FuncID and also into possible argument-level
* function arguments:
    argument `FuncID';
      if (count(`Var',1) > 0) $varmax = count_(`Var',1);
      argument `ArgFuncID';
        if (count(`Var',1) > 0) $varmax = count_(`Var',1);
        #if (`CheckPolys')
          if (match(`PolyFuncID'(`n1'?,?a,`n2'?!{0,},?b)) > 0) $varmax = 1;
        #endif
      endargument;
    endargument;
    if ($varmax == 0) discard;
  endif;
  ModuleOption,local $varmax;
  .sort:DropIndepTerms fin;
#endprocedure
*}}}
*
*{{{ HypIncludeTagInExprsWhenFunctionPresent
#procedure HypIncludeTagInExprsWhenFunctionPresent(TagFuncID,FuncID,?Exprs)
  .sort:IncludeTagInExprsWhenFunctionPresent start;
  #define ActivesIncludeTagInExprs "`ActiveExprNames_'"
  hide;
  .sort:Hidden everything;
  unhide `?Exprs';
  .sort:Unhidden `?Exprs';
  if (count(`FuncID',1) > 0) multiply `TagFuncID';
  .sort:`?Exprs' tagged;
  hide;
  .sort:Everything got hidden;
  unhide `ActivesIncludeTagInExprs';
  .sort:Restored original actives, fin;
#endprocedure
*}}}
*
*************
* COUNTERS: *
*************
*{{{ HypIncrementZeroedOutCounter
#procedure HypIncrementZeroedOutCounter(NewZerosVar)
  #redefine HYPzeroedOutTotal "{`HYPzeroedOutTotal'+``NewZerosVar''}"
#endprocedure
*}}}
*
*************************************
* EXTRA SYMBOL-BASED MANIPULATIONS: *
*************************************
*{{{ HypExtraSymbolsToExpression
#procedure HypExtraSymbolsToExpression(ExprID, FirstExtraSymbol, LastExtraSymbol, ToWrap, WrapFuncID, ToTag, TagFuncID, OnlyIfNewExtras)
  #if ((`OnlyIfNewExtras' == 0) || (`LastExtraSymbol' > `FirstExtraSymbol'))
    .sort:ExtraSymbolsToExpression starts;
    skip;
    local `ExprID' =
      #do itrm={`FirstExtraSymbol'+1}, `LastExtraSymbol'
        + 
        #if (`ToWrap')
          + `WrapFuncID'(`itrm', Z`itrm'_)
        #elseif (`ToTag')
          + `TagFuncID'(`itrm') * Z`itrm'_
        #else
          + Z`itrm'_
        #endif
      #enddo
    ;
    .sort:ExtraSymbolsToExpression fin;
  #endif
#endprocedure
*}}}
*
*{{{ HypEncodeNumberofArgsInFunctionHead
#procedure HypEncodeNumberofArgsInFunctionHead(FuncID,NewFuncID,Sym,MinNumArg,MaxNumArg,?Exprs)
  .sort:EncodeNumberofArgsInFunctionHead start;
  skip;
  nskip `?Exprs';
  #do inarg=`MinNumArg',`MaxNumArg'
    id `FuncID'(<`Sym'1?>,...,<`Sym'`inarg'?>) = `NewFuncID'`inarg'(<`Sym'1>,...,<`Sym'`inarg'>);
  #enddo
  .sort:EncodeNumberofArgsInFunctionHead fin;
#endprocedure
*}}}
*
*{{{ HypDetermineMinAndMaxFunctionIndices
#procedure HypDetermineMinAndMaxFunctionIndices(FuncID,StartIndex,FinishIndex,FoundMinIndex,FoundMaxIndex,?Exprs)
  .sort:DetermineMinAndMaxFunctionIndices start;
*
  skip;
  nskip `?Exprs';
*
  #redefine `FoundMinIndex' "99"
  #redefine `FoundMaxIndex' "0"
*
  #$MinIndex = 99;
  #$MaxIndex = 0;
*
  #do iindx=`StartIndex', `FinishIndex'
    if (count(`FuncID'`iindx', 1) > 0);
      $MinIndex = min_($MinIndex, `iindx');
      $MaxIndex = max_($MaxIndex, `iindx');
    endif;
  #enddo
  ModuleOption,Minimum,$MinIndex;
  ModuleOption,Maximum,$MaxIndex;
  .sort:Min/Max determined;
*
  #if (`$MaxIndex' > 0)
    #redefine `FoundMinIndex' "`$MinIndex'";
    #redefine `FoundMaxIndex' "`$MaxIndex'";
  #endif
*
  .sort:DetermineMinAndMaxFunctionIndices fin;
#endprocedure
*}}}
*
*{{{ HypExtractFunctionsToExtraSymbols
#procedure HypExtractFunctionsToExtraSymbols(FuncID,OldExtraSymbolVar,NewExtraSymbolVar,?Exprs)
  .sort:ExtractFunctionsToExtraSymbols start;
  skip;
  nskip `?Exprs';
  #redefine `OldExtraSymbolVar' "`ExtraSymbols_'"
* Bracketing to ease the conversion:
  bracket `FuncID';
  .sort:`?Exprs' bracketed for extras;
  keep brackets;
  skip;
  nskip `?Exprs';
  ToPolynomial,OnlyFunctions,`FuncID';
  .sort:Extras identified;
  skip;
  #redefine `NewExtraSymbolVar' "{`ExtraSymbols_' - ``OldExtraSymbolVar''}"
  .sort:ExtractFunctionsToExtraSymbols fin;
#endprocedure
*}}}
*
*{{{ HypCreateFunctionExpressionWithExtras
#procedure HypCreateFunctionExpressionWithExtras(NewExprID,FuncID,OnlyWhenFunctionsFound,?Exprs)
  #define OldExtraSymbolsForExtract ""
  #define NewExtraSymbolsForExtract ""
  #call HypExtractFunctionsToExtraSymbols(`FuncID',OldExtraSymbolsForExtract,NewExtraSymbolsForExtract,`?Exprs')
  skip;
  #call HypExtraSymbolsToExpression(`NewExprID',{`OldExtraSymbolsForExtract'},{`OldExtraSymbolsForExtract'+`NewExtraSymbolsForExtract'},0,,0,,`OnlyWhenFunctionsFound')
  #if (`NewExtraSymbolsForExtract' > 0)
    #do expr={`?Exprs',`NewExprID'}
      skip;
      nskip `expr';
      #if (`HYPdebug')
        #message FromPoly with {`OldExtraSymbolsForExtract'+`NewExtraSymbolsForExtract'} extras;
      #endif
      FromPolynomial;
      .sort:FromPoly for `expr';
    #enddo
  #else
    #if (`HYPDEBUG')
      #message No new extra symbol got created;
    #endif
  #endif
  .sort:Extras are back to functs in `?Exprs',`NewExprID';
  skip;
  #if (`OldExtraSymbolsForExtract' > 0)
    delete extrasymbols>`OldExtraSymbolsForExtract';
  #else
    delete extrasymbols;
  #endif
  .sort:CreateFunctionExpressionWithExtras fin;
#endprocedure
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctionsThruExtra
#procedure HypIsolateAndDissectVarDepFunctionsThruExtra(ExprID,FuncID,AuxFuncID,RatFuncID,PolyFuncID,Var,Sym,MinFuncArg,MaxFuncArg,MinArgLength,MaxArgLength,?Exprs)
  .sort:IsolateAndDissectVarDepFunctionsThruExtra start;
  skip;
  nskip `?Exprs';
* To define extra symbols we change functionheads in original expressions:
  #call HypEncodeNumberofArgsInFunctionHead(`FuncID',`AuxFuncID',`Sym',`MinFuncArg',`MaxFuncArg',`?Exprs')
* Determine maximum and minimum function indices:
  #redefine `MinArgLength' "99"
  #redefine `MaxArgLength' "0"
* This is to restrict the created expressions:
  #call HypDetermineMinAndMaxFunctionIndices(`AuxFuncID',`MinFuncArg',`MaxFuncArg',`MinArgLength',`MaxArgLength',`?Exprs')
  #if (`HYPdebug')
    #message Minimum and maximum args: ``MinArgLength'',``MaxArgLength'';
  #endif
* Loop over different argument lengths to separately extract those via extra symbols:
  #do iArgLength=``MinArgLength'',``MaxArgLength''
    #call HypCreateFunctionExpressionWithExtras(`ExprID'`iArgLength',`AuxFuncID'`iArgLength',0,`?Exprs')
* Wrap non-wrapped arguments to standard ratfunc:
    #call HypArgsToRatFunc(`ExprID'`iArgLength', `AuxFuncID'`iArgLength', `RatFuncID', `AuxFuncID', `Sym'1)
* Dropping new terms independent of `Var':
    #call HypDropIndepTerms(`ExprID'`iArgLength', `AuxFuncID'`iArgLength', `RatFuncID', `Var', HYPSol, 1, `PolyFuncID', `Sym'1, `Sym'2)
  #enddo
  .sort:`FuncID' isolated;
* This is to restrict what actually depends on the variable:
  #define MinDepArgLength "99"
  #define MaxDepArgLength "0"
  #call HypDetermineMinAndMaxFunctionIndices(`AuxFuncID',``MinArgLength'',``MaxArgLength'',MinDepArgLength,MaxDepArgLength,<`ExprID'``MinArgLength''>,...,<`ExprID'``MaxArgLength''>)
  #if (`HYPdebug')
    #message Minimum and maximum dependent args: `MinDepArgLength',`MaxDepArgLength';
  #endif
* Drop not needed expressions:
  #if (`MinDepArgLength' > ``MinArgLength'')
    drop <`ExprID'``MinArgLength''>,...,<`ExprID'{`MinDepArgLength'-1}>;
  #endif
  #if (`MaxDepArgLength' < ``MaxArgLength'')
    drop <`ExprID'{`MaxDepArgLength'+1}>,...,<`ExprID'``MaxArgLength''>;
  #endif
  .sort:Non-deps dropped;
  #redefine `MaxArgLength' "`MaxDepArgLength'"
  #if (``MaxArgLength'' == 0)
    #redefine `MinArgLength' "99"
  #else
* Needed to be compatible with original implementation:
    #redefine `MinArgLength' "`MinDepArgLength'"
  #endif
  skip;
  nskip <`ExprID'``MinArgLength''>,...,<`ExprID'``MaxArgLength''>;
* It can happen that the same function appeared with rational function argument and also without that
* To avoid additional numeric coefficients we drop all of those:
  dropcoefficient;
  .sort:Num coeffs dropped;
  skip;
  nskip `?Exprs',<`ExprID'``MinArgLength''>,...,<`ExprID'``MaxArgLength''>;
  #do iArgLength=`MinFuncArg',`MaxFuncArg'
    multiply replace_(`AuxFuncID'`iArgLength',`FuncID');
  #enddo
  .sort:Isolated and dissected;
#endprocedure
*}}}
*
*{{{ HypSubstituteToExprsWithExtrasAndTable
#procedure HypSubstituteToExprsWithExtrasAndTable(SolutionExprID,LHSfuncID,RHSfuncID,AuxFuncID,SolutionTableID,?Exprs)
  .sort:SubstituteToExprsWithExtrasAndTable start;
  #define OldExtrasSubstituteToExprsWithExtrasAndTable "`ExtraSymbols_'"
  skip;
  nskip `SolutionExprID';
  multiply replace_(`RHSfuncID',`AuxFuncID');
  ToPolynomial,OnlyFunctions,`AuxFuncID';
  .sort:`AuxFuncID' to extras `SolutionExprID';
  skip;
  nskip `SolutionExprID';
  #define NewExtrasSubstituteToExprsWithExtrasAndTable "`ExtraSymbols_'"
  #do iextra={`OldExtrasSubstituteToExprsWithExtrasAndTable'+1},`ExtraSymbols_'
    id Z`iextra'_ = `AuxFuncID'(`iextra');
  #enddo
  .sort:Extras to `AuxFuncID';
  skip;
  nskip `SolutionExprID';
  bracket `AuxFuncID';
  .sort:`SolutionExprID' bracketed;
  FillExpression `SolutionTableID' = `SolutionExprID'(`AuxFuncID');
  #do iextra={`OldExtrasSubstituteToExprsWithExtrasAndTable'+1},`ExtraSymbols_'
    id `AuxFuncID'(`iextra') = ExtraSymbol_(`iextra');
  #enddo
  multiply replace_(`AuxFuncID',`RHSfuncID');
  .sort:Sols put into `SolutionTableID';
  skip;
  nskip `?Exprs';
  multiply replace_(`LHSfuncID',`AuxFuncID');
  ToPolynomial,OnlyFunctions,`AuxFuncID';
  .sort:`AuxFuncID' to extras in `?Exprs';
  skip;
  nskip `?Exprs';
* Convert back those extras outside of the stored range:
  #do iextra={`NewExtrasSubstituteToExprsWithExtrasAndTable'+1},`ExtraSymbols_'
    id Z`iextra'_ = ExtraSymbol_(`iextra');
  #enddo
  multiply replace_(`AuxFuncID',`LHSfuncID');
  .sort
  skip;
  nskip `?Exprs';
* Moving the rest to auxiliary functions:
  #do iextra={`OldExtrasSubstituteToExprsWithExtrasAndTable'+1},`NewExtrasSubstituteToExprsWithExtrasAndTable'
    id Z`iextra'_ = `AuxFuncID'(`iextra');
  #enddo
  .sort:Extras to `AuxFuncID';
  #if (`OldExtrasSubstituteToExprsWithExtrasAndTable' > 0)
    delete ExtraSymbols>`OldExtrasSubstituteToExprsWithExtrasAndTable';
  #else
    delete ExtraSymbols;
  #endif
  .sort:Extrasymbols purged;
  skip;
  nskip `?Exprs';
  multiply replace_(`AuxFuncID',`SolutionTableID');
*
  .sort:Substed `?Exprs';
  ClearTable `SolutionTableID';
  skip;
  nskip `SolutionExprID';
  multiply replace_(`AuxFuncID',`RHSfuncID');
  .sort:Cleared table;
  #if 0
  #endif
*
* Reseting back:
  .sort:SubstituteToExprsWithExtrasAndTable fin;
#endprocedure
*}}}
*
*****************************
* POLYNOMIAL MANIPULATIONS: *
*****************************
*{{{ HypGetPolyCoeffs
#procedure HypGetPolyCoeffs(FuncID,Sym,Var,ChopLastZero)
  repeat;
    id `FuncID'(?a,`Sym'?!{0,}) = `FuncID'(?a,rem_(`Sym',`Var'),div_(`Sym',`Var'));
  endrepeat;
  #if (`ChopLastZero')
    id `FuncID'(?a, 0) = `FuncID'(?a);
  #endif
#endprocedure
*}}}
*
************************************
* RATIONAL FUNCTION MANIPULATIONS: *
************************************
*{{{ HypSyncNumDenOrder
#procedure HypSyncNumDenOrder(RatFuncID,NumFuncID,DenFuncID,AuxFuncID,Sym1,Sym2)
* Working in the arguments of the rational function:
  argument `RatFuncID';
* Counting arguments both in numerator and denominator:
    id `AuxFuncID'?{`NumFuncID',`DenFuncID'}(?a) = `AuxFuncID'(nargs_(?a),?a);
  endargument;
* Making the difference between number of args:
  id `RatFuncID'(`NumFuncID'(`Sym1'?,?a),`DenFuncID'(`Sym2'?,?b)) = 
    `RatFuncID'(`NumFuncID'(`Sym1'-`Sym2',?a),`DenFuncID'(`Sym2'-`Sym1',?b));
  argument `RatFuncID';
* First, we have to deal with shorter argument lists because
* otherwise the first argument can be negative due to the 
* constant term as well!
    repeat;
      id `AuxFuncID'?{`NumFuncID',`DenFuncID'}(`Sym1'?neg_,?a) = `AuxFuncID'(`Sym1'+1,?a,0);
    endrepeat;
* When the iterations are over we have the same number of
* arguments:
    transform,`NumFuncID',dropargs(1,1);
    #if ("`NumFuncID'" != "`DenFuncID'")
      transform,`DenFuncID',dropargs(1,1);
    #endif
  endargument;
#endprocedure
*}}}
*
*{{{ HypConvertDetailedRatFuncs
#procedure HypConvertDetailedRatFuncs(FuncID,RatFuncID,PolyFuncID,Var,Sym1,Sym2,Sym3,?Exprs)
  .sort:Cast back detailed ratfuncs;
  skip;
  nskip `?Exprs';
* Trivial conversions:
  argument `FuncID';
    id `RatFuncID'(`Sym1'?, `Sym2'?number_) = `Sym1'/`Sym2';
    id `RatFuncID'(`PolyFuncID'(`Sym1'?), `PolyFuncID'(`Sym2'?)) = `RatFuncID'(`Sym1', `Sym2');
* For the rest we go a recursive way:
    argument `RatFuncID';
* Introduce a power of the variable as the first argument:
* We do not have to do anything with the first argument because that's the constant term,
* we start with the second argument which should be linear in `Var' hence the 1:
      id `PolyFuncID'(?a) = `PolyFuncID'(1, ?a);
      repeat;
* We start to eat the arguments of the polynomial function weighted with `Var' on the proper power:
        id `PolyFuncID'(`Sym1'?,`Sym2'?,`Sym3'?,?a) = 
          `PolyFuncID'(`Sym1'+1,`Sym2' + `Sym3'*`Var'^`Sym1',?a);
* If there is no further argument we are done:
        id `PolyFuncID'(`Sym1'?,`Sym2'?) = `Sym2';
      endrepeat;
    endargument;
* Whenever the denominator is a number we drop the ratfunc environment:
    id `RatFuncID'(`Sym1'?, `Sym2'?number_) = `Sym1'/`Sym2';
  endargument;
#endprocedure
*}}}
*
*{{{ HypDropTrailingZeroRatFuncCoeffs
#procedure HypDropTrailingZeroRatFuncCoeffs(FuncID,RatFuncID,PolyFuncID,Sym1,...,Sym2)
  Argument `FuncID';
    Repeat;
      id `RatFuncID'(`PolyFuncID'(`Sym1'?,?a,0),`PolyFuncID'(`Sym2'?,?b,0)) =
        `RatFuncID'(`PolyFuncID'(`Sym1',?a),`PolyFuncID'(`Sym2',?b))
      ;
    EndRepeat;
  EndArgument;
#endprocedure
*}}}
*
*{{{ HypNormalizeToIntegrate
#procedure HypNormalizeToIntegrate(ExprID,DenFuncID,HlogFuncID,RatFuncID,Sym1,...,Sym4)
  .sort:NormalizeToIntegrate start;
  skip;
  nskip `ExprID';
*
  bracket `HlogFuncID',`DenFuncID';
  .sort:`ExprID' bracketed;
  keep brackets;
  FactArg,(-1),`DenFuncID',2;
  id `DenFuncID'(`Sym1'?,`Sym2'?,`Sym3'?number_) = `DenFuncID'(`Sym1'/`Sym3',`Sym2');
  Argument `HlogFuncID';
    FactArg,(-1),`RatFuncID',2;
    id `RatFuncID'(`Sym1'?,`Sym2'?,`Sym3'?number_) = `RatFuncID'(`Sym1'/`Sym3',`Sym2');
  EndArgument;
*
#endprocedure
*}}}
*
*{{{ HypArgRatFunManip
#procedure HypArgRatFunManip(FuncID,Manip)
* This routine performs rational function manipulations in function
* arguments. This can involve addition and subtraction.
*
* Working out the trivial cases:
  #if ((`Manip' == +) || (`Manip' == -))
    id `FuncID'(HYPrat(HYPn1?,HYPn2?),0) = `FuncID'(HYPrat(HYPn1,HYPn2));
    id `FuncID'(0,HYPrat(HYPn1?,HYPn2?)) = `FuncID'(HYPrat((`Manip'1)*HYPn1,HYPn2));
    id `FuncID'(HYPn1?number_,HYPrat(HYPn2?,HYPn3?)) = 
      `FuncID'(HYPrat(HYPn1*HYPn3+(`Manip'1)*HYPn2,HYPn3));
    id `FuncID'(HYPrat(HYPn1?,HYPn2?),HYPn3?number_) = 
      `FuncID'(HYPrat(HYPn1+(`Manip'1)*HYPn3*HYPn2,HYPn2));
    id `FuncID'(HYPrat(HYPn1?,HYPn2?!{HYPn4?}),HYPrat(HYPn1?,HYPn4?!{HYPn2?})) =
      `FuncID'(HYPn1)*`FuncID'(HYPrat(HYPn4 + (`Manip'1)*HYPn2,mul_(HYPn2,HYPn4)));
    id `FuncID'(HYPrat(HYPn1?!{HYPn3?},HYPn2?),HYPrat(HYPn3?!{HYPn1?},HYPn2?)) =
      `FuncID'(HYPrat(HYPn1 + (`Manip'1)*HYPn3,HYPn2));
    id `FuncID'(HYPrat(HYPn1?,HYPn2?),HYPrat(HYPn3?,HYPn4?)) =
      `FuncID'(gcd_(HYPn2,HYPn4),HYPrat(HYPn1,HYPn2),HYPrat(HYPn3,HYPn4));
    id `FuncID'(HYPn5?,HYPrat(HYPn1?,HYPn2?),HYPrat(HYPn3?,HYPn4?)) =
      `FuncID'(div_(HYPn2,HYPn5),div_(HYPn4,HYPn5),HYPrat(HYPn1,HYPn2),HYPrat(HYPn3,HYPn4));
    id `FuncID'(HYPn5?,HYPn6?,HYPrat(HYPn1?,HYPn2?),HYPrat(HYPn3?,HYPn4?)) =
      `FuncID'(HYPrat(HYPn1*HYPn6 + (`Manip'1)*HYPn3*HYPn5,HYPn5*HYPn4));
    id `FuncID'(HYPn1?,HYPrat(HYPn2?,HYPn3?)) =
      `FuncID'(HYPrat(HYPn1*HYPn3 + (`Manip'1)*HYPn2,HYPn3));
    id `FuncID'(HYPrat(HYPn1?,HYPn2?),HYPn3?) =
      `FuncID'(HYPrat(HYPn1 + (`Manip'1)*HYPn3*HYPn2,HYPn2));
  #else
    if (count(`FuncID',1) > 0);
      print "case is not covered yet...";
      print "%t";
      print "ArgRatFunManip";
      exit;
    endif;
  #endif
#endprocedure
*}}}
*
********************
* SIMPLIFICATIONS: *
********************
****************************
* numeric simplifications: *
****************************
*{{{ HypSimplifyNumericPowFuncs
#procedure HypSimplifyNumericPowFuncs(PowFuncID,Sym1,...,Sym2)
  id `PowFuncID'(0,`Sym1'?) = 0;
  id `PowFuncID'(`Sym1'?,0) = 1;
  id `PowFuncID'(`Sym1'?number_,`Sym2'?number_) = `Sym1'^`Sym2';
#endprocedure
*}}}
*
*{{{ HypSimplifyNumericDenFuncs
#procedure HypSimplifyNumericDenFuncs(DenFuncID,Sym1)
  id `DenFuncID'(`Sym1'?number_) = 1/`Sym1';
#endprocedure
*}}}
*
*{{{ HypSimplifyNumericNumFuncs
#procedure HypSimplifyNumericNumFuncs(NumFuncID,Sym1)
  id `NumFuncID'(`Sym1'?number_) = `Sym1';
#endprocedure
*}}}
*
*{{{ HypSimplifyNumericRatFuncs
#procedure HypSimplifyNumericRatFuncs(RatFuncID, Sym1, Sym2)
  id `RatFuncID'(`Sym1'?, `Sym2'?number_) = `Sym1'/`Sym2';
  id `RatFuncID'(0, `Sym1'?) = 0;
#endprocedure
*}}}
*
*{{{ HypSimplifyNumericLogFuncs
#procedure HypSimplifyNumericLogFuncs(LogFuncID)
  id `LogFuncID'(1) = 0;
#endprocedure
*}}}
*
*{{{ HypSimplifyNumericVarDepLogFuncs
#procedure HypSimplifyNumericVarDepLogFuncs(LogFuncID,Sym1,Sym2)
* In this we assume the following dependence:
* `LogFuncID'(a,b) = log(1 - z/(a/b))
* `LogFuncID'(0) = log(z)
  id `LogFuncID'(`Sym1'?,`Sym2'?number_) = `LogFuncID'(`Sym1'/`Sym2');
#endprocedure
*}}}
*
*{{{ HypSimplifyNumericHyperlogWithEmptyArg
#procedure HypSimplifyNumericHyperlogWithEmptyArg(AuxFuncID,?HlogFuncIDs)
  id `AuxFuncID'?{`?HlogFuncIDs',} = 1;
#endprocedure
*}}}
*
**************************
* limit simplifications: *
**************************
*{{{ HypSimplifyHyperlogZeroLimit
#procedure HypSimplifyHyperlogZeroLimit(HyperlogFuncID,Sym1)
  id `HyperlogFuncID'(?a,`Sym1'?!{0,}) = 0;
#endprocedure
*}}}
*
*{{{ HypVarSimplify
#procedure HypVarSimplify(Var)
* This routine performs trivial simplifications when we have a variable active:
*
* Cancellation of towers:
  id `Var'*HYPdenx(0) = 1;
*******************
* LIMITS AT ZERO: *
*******************
* Simplifications in presence of limit functions:
  repeat id HYPlim(`Var',0)*HYPdenx(HYPn1?,HYPn2?) = HYPlim(`Var',0)*HYPnum(HYPn2)*HYPden(-HYPn1);
  repeat id HYPlim(`Var',0)*HYPdenx(HYPn1?!{0,}) = HYPlim(`Var',0)*HYPden(-HYPn1);
* In our case the worst singularity is log-like, hence whenever we have an exposed
* variable we can safely knock-off the term:
  id HYPlim(`Var',0)*`Var' = 0;
***********************
* LIMITS AT INFINITY: *
***********************
  if (match(HYPlim(`Var',HYPinf)) > 0);
* Since the divergence of hyperlogs is at most logarithmic whenever the term
* contains a limit variable in a denominator the term must vanish if there
* is no limit variable in the numerator:
    if (count(`Var',1) == 0);
      id HYPdenx(?a) = 0;
    endif;
  endif;
#endprocedure
*}}}
*
*******************************
* structural simplifications: *
*******************************
*{{{ HypSimplifyCompositeDenFuncs
#procedure HypSimplifyCompositeDenFuncs(DenFuncID,NumFuncID,RatFuncID,ArgNumFuncID,ArgDenFuncID,Sym1,Sym2)
  id `DenFuncID'(`RatFuncID'(`Sym1'?,`Sym2'?)) = `NumFuncID'(`Sym2')*`DenFuncID'(`Sym1');
  id `DenFuncID'(`ArgNumFuncID'(`Sym1'?)*`ArgDenFuncID'(`Sym2'?)) = `NumFuncID'(`Sym2')*`DenFuncID'(`Sym1');
#endprocedure
*}}}
*
*{{{ HypRecastDenominators
#procedure HypRecastDenominators()
* This routine helps to get rid of composite denominators. These
* can arise when a letter is inverted and HYPden and HYPnum functions
* start to appear in the argument of yet another HYPden function
*
  id HYPden(HYPden(HYPn1?)) = HYPn1;
  id HYPnum(HYPden(HYPn1?)) = HYPden(HYPn1);
  id HYPnum(HYPnum(HYPn1?)) = HYPnum(HYPn1);
  id HYPnum(HYPnum(HYPn1?)*HYPden(HYPn2?)) = HYPnum(HYPn1)*HYPden(HYPn2);
  id HYPden(HYPnum(HYPn1?)) = HYPden(HYPn1);
* Splitting denominator in terms of the denominator function,
* we assume that we only have one denominator function present:
  splitarg((HYPden)),HYPden;
  id HYPden(HYPn1?,0) = HYPden(HYPn1);
  id HYPden(HYPn1?,HYPden(HYPn2?)) = HYPnum(HYPn2)*HYPden(HYPn1*HYPn2+1);
  id HYPden(HYPn1?,HYPden(HYPn2?)*HYPnum(HYPn3?)) = HYPnum(HYPn2)*HYPden(HYPn1*HYPn2+HYPn3);
  id HYPden(HYPn1?)*HYPnum(HYPn1?) = 1;
#endprocedure
*}}}
*
**************************
* mixed simplifications: *
**************************
*
*{{{ HypPowFuncSimplify
#procedure HypPowFuncSimplify()
* This routine contains instructions to simplify the power functions.
*
* Combine denominators and power functions:
  id HYPden(HYPn1?)*HYPpow(HYPn1?,HYPn2?) = HYPpow(HYPn1,HYPn2-1);
* Combine numerators and power functions:
  id HYPnum(HYPn1?)*HYPpow(HYPn1?,HYPn2?) = HYPpow(HYPn1,HYPn2+1);
* Invoke the specialized routine:
  #call HypSimplifyPowerFuncs(HYPpow,HYPn1,...,HYPn3)
#endprocedure
*}}}
*
*{{{ HypDenSimplify
#procedure HypDenSimplify(NumFuncID,DenFuncID,RatFuncID,IntVarID,Sym1,Sym2)
* This routine can be used to massage the denominator functions
*
* If we have a rational function inside a denominator it can be converted
* into a denominator and a numerator:
  #call HypSimplifyCompositeDenFuncs(`DenFuncID',`NumFuncID',`RatFuncID',`NumFuncID',`DenFuncID',`Sym1',`Sym2')
*
  id `DenFuncID'(`RatFuncID'(`Sym1'?,`Sym2'?)) = `NumFuncID'(`Sym2')*`DenFuncID'(`Sym1');
* We include the cancellation of numerators with denominators:
  id `NumFuncID'(`Sym1'?)*`DenFuncID'(`Sym1'?) = 1;
* Trivial cancellation of hyper parameters:
  #do i=1,`HYPNPARAMS'
    id `IntVarID'`i'*`DenFuncID'(`IntVarID'`i') = 1;
  #enddo
* Numerics do not need function encapsulation:
  #call HypSimplifyNumericDenFuncs(`DenFuncID',`Sym1')
#endprocedure
*}}}
*
*{{{ HypNumSimplify
#procedure HypNumSimplify(NumeratorFuncID,Sym1)
* Specialty routine to simplify numerator functions:
  id `NumeratorFuncID'(`Sym1'?number_) = `Sym1';
#endprocedure
*}}}
*
*{{{ HypSimplify
#procedure HypSimplify()
* This is our main simplification routine 
*
*******************
* POWER FUNCTIONS *
*******************
  id HYPpow(HYPn1?number_,HYPn2?number_) = HYPn1^HYPn2;
* Factorization:
  factarg HYPpow,1;
* Chaining out:
  repeat id HYPpow(HYPn1?,HYPn2?,?a,HYPn3?) = 
    HYPpow(HYPn1,HYPn3)*HYPpow(HYPn2,?a,HYPn3);
* When chained out we have to test again for totally numerical power functions:
  id HYPpow(HYPn1?number_,HYPn2?number_) = HYPn1^HYPn2;
* Converting bare parameters:
* Only do this if already we have some power functions:
  if (count(HYPpow,1) > 0);
    repeat id HYPn1?HYPparams = HYPpow(HYPn1,1);
  endif;
* Collecting parameters:
  repeat id HYPpow(HYPn1?HYPparams,HYPn2?)*HYPpow(HYPn1?HYPparams,HYPn3?) =
    HYPpow(HYPn1,HYPn2+HYPn3);
* Joining power functions with the same arguments:
  repeat id HYPpow(HYPn1?,HYPn2?)*HYPpow(HYPn1?,HYPn3?) = HYPpow(HYPn1,HYPn2+HYPn3);
* Cancelling trivial power functions;
  id HYPpow(HYPn1?,0) = 1;
* Only keep the HYPpow environment for parameters and expressions:
  id HYPpow(HYPn1?symbol_,HYPn2?) = HYPaux(HYPn1,HYPn2);
  id HYPaux(HYPn1?HYPparams,HYPn2?) = HYPpow(HYPn1,HYPn2);
  id HYPaux(HYPn1?,HYPn2?number_) = HYPn1^HYPn2;
* And only if the exponent is not a pure number:
  multiply replace_(HYPaux,HYPpow);
****************
* DENOMINATORS *
****************
* Decompose:
  #call HypDenSimplify(HYPnum,HYPden,HYPrat,HYPz,HYPn1,HYPn2)
* Factorization:
  factarg HYPden;
* Chaining out:
  chainout HYPden;
  #call HypSimplifyNumericDenFuncs(HYPden,HYPn1)
* Cancelling towers of epsilon:
  id HYPep*HYPden(HYPep) = 1;
* Denominators can be rolled into power functions if their arguments match:
  repeat id HYPden(HYPn1?)*HYPpow(HYPn1?,HYPn2?) = HYPpow(HYPn1,HYPn2-1);
* Denominators can cancel with numerators:
  repeat id HYPnum(HYPn1?)*HYPden(HYPn1?) = 1;
**************
* NUMERATORS *
**************
* Factorization of numerators:
  factarg HYPnum;
* Chaining them out:
  chainout HYPnum;
* Getting rid of functionhead for trivial ones:
  #call HypSimplifyNumericNumFuncs(HYPnum,HYPn1)
* Numerators can be rolled into power functions in case their arguments match:
  repeat id HYPnum(HYPn1?)*HYPpow(HYPn1?,HYPn2?) = HYPpow(HYPn1,HYPn2+1);
****************
* DENS & NUMS: *
****************
* Trivial tower cancellation between numerators and denominators:
  id HYPnum(HYPn1?)*HYPden(HYPn1?) = 1;
*********
* LOGS: *
*********
  id HYPlog(1) = 0;
*************
* HYPERLOGS *
*************
  argument HYPLlimZero,HYPLx;
    argument HYPden;
      factarg,(-1),HYPrat,1;
      repeat;
        id HYPrat(?a,HYPn1?number_,?b,HYPn2?) = HYPrat(?a,?b,HYPn2/HYPn1);
      endrepeat;
      transform,HYPrat,mulargs(1,last-1);
    endargument;
    id HYPden(HYPrat(HYPn1?,HYPn2?)) = HYPrat(HYPn2,HYPn1);
    id HYPrat(HYPn1?, HYPn2?number_) = HYPn1/HYPn2;
  endargument;
#endprocedure
*}}}
*
*{{{ HypSimplifyPowerFuncs
#procedure HypSimplifyPowerFuncs(PowerFuncID,Sym1,...,Sym3)
* Subset of power function simplification rules excluding merging
* power functions with appropriate denominators and/or numerators:
*****************
* ZEROTH POWER: *
*****************
  id `PowerFuncID'(`Sym1'?, 0) = 1;
********************************
* FACTORIZING POWER FUNCTIONS: *
********************************
  factarg `PowerFuncID',1;
  repeat id `PowerFuncID'(`Sym1'?,`Sym2'?,?a,`Sym3'?) = 
    `PowerFuncID'(`Sym1',`Sym3')*`PowerFuncID'(`Sym2',?a,`Sym3')
  ;
****************************
* COMBINE POWER FUNCTIONS: *
****************************
  repeat;
    id `PowerFuncID'(`Sym1'?,`Sym2'?)*`PowerFuncID'(`Sym1'?,`Sym3'?) =
      `PowerFuncID'(`Sym1',`Sym2' + `Sym3')
    ;
  endrepeat;
******************************
* NUMBERS ON NUMERIC POWERS: *
******************************
  id `PowerFuncID'(`Sym1'?number_,`Sym2'?number_) = `Sym1'^`Sym2';
#endprocedure
*}}}
*
*{{{ HypSimplifyRatFuncsGCD
#procedure HypSimplifyRatFuncsGCD(RatFuncID, DivFunc1ID, DivFunc2ID, GCDFuncID, Sym1, Sym2, Sym3)
  id `RatFuncID'(`Sym1'?, `Sym2'?!number_) = 
    `RatFuncID'(
      `DivFunc1ID'(`Sym1'), 
      `DivFunc2ID'(`Sym2'), 
      `GCDFuncID'(gcd_(`Sym1', `Sym2'))
    )
  ;
  id `RatFuncID'(`DivFunc1ID'(`Sym1'?), `DivFunc2ID'(`Sym2'?), `GCDFuncID'(1)) = 
    `RatFuncID'(`Sym1', `Sym2')
  ;
  id `RatFuncID'(`DivFunc1ID'(`Sym1'?), `DivFunc2ID'(`Sym2'?), `GCDFuncID'(`Sym3'?)) = 
    `RatFuncID'(div_(`Sym1', `Sym3'), div_(`Sym2', `Sym3'))
  ;

#endprocedure
*}}}
*
*{{{ HypSimplifyRatFuncArguments
#procedure HypSimplifyRatFuncArguments(ExprID, FuncID, RatFuncID, SimpFuncID, DivFunc1ID, DivFunc2ID, GCDFuncID, SimpTableID, Sym1, Sym2, Sym3)
  .sort:SimplifyRatFuncArguments starts;
  skip;
  nskip `ExprID';
* Storing previously used extra symbols:
  #define PreviousExtraSymbols "`ExtraSymbols_'"
* Turning rational function arguments into extra symbols:
  argument `FuncID';
    ToPolynomial, OnlyFunctions, `RatFuncID';
  endargument;
  .sort:`RatFuncID' converted to extras;
  skip;
  #$NewSymbols = `EXTRASYMBOLS_' - `PreviousExtraSymbols';
* Create new expression with extra symbols:
  #call HypExtraSymbolsToExpression(`ExprID'simp, `PreviousExtraSymbols', `ExtraSymbols_', 1, `SimpFuncID',0,,0)
  skip;
  nskip `ExprID'simp;
* Turning back extra symbols:
  id `SimpFuncID'(`Sym1'?, `Sym2'?) = `SimpFuncID'(`Sym1', extrasymbol_(`Sym1'));
* Doing rational function simplifications in the second argument:
  argument `SimpFuncID', 2;
    #call HypSimplifyRatFuncsGCD(`RatFuncID', `DivFunc1ID', `DivFunc2ID', `GCDFuncID', <`Sym1'>,...,<`Sym3'>)
    #call HypSimplifyNumericRatFuncs(`RatFuncID', <`Sym1'>,...,<`Sym2'>)
  endargument;
* Move second argument outside of function:
  id `SimpFuncID'(`Sym1'?, `Sym2'?) = `SimpFuncID'(`Sym1')*`Sym2';
  .sort:Bracketing `ExprID'simp;
  skip;
  nskip `ExprID'simp;
* Bracketing:
  bracket `SimpFuncID';
  .sort:Bracketed `ExprID'simp;
  fillexpression `SimpTableID' = `ExprID'simp(`SimpFuncID');
  skip;
  .sort:Filled `SimpTableID';
  skip;
  drop `ExprID'simp;
  .sort:Dropped `ExprID'simp;
  skip;
  nskip `ExprID';
* Replace extra symbols with functions:
  #do i={`PreviousExtraSymbols'+1}, `EXTRASYMBOLS_'
    argument `FuncID';
      id Z`i'_ = `SimpFuncID'(`i');
    endargument;
  #enddo
  .sort:Extras to functions;
  multiply replace_(`SimpFuncID', `SimpTableID');
  .sort:Simplified ratfuns substed;
  ClearTable `SimpTableID';
  delete ExtraSymbols>`PreviousExtraSymbols';
  skip;
  .sort:Purged simplification table and extra symbols;
  skip;
  .sort:SimplifyRatFuncArguments fin;
#endprocedure
*}}}
*
*{{{ HypSimplifyRatFuncsTrivial
#procedure HypSimplifyRatFuncsTrivial(FuncID, OldRatFuncID, NewRatFuncID, PolyFuncID, Sym1, Sym2)
  .sort:SimplifyRatFuncsTrivial start;
*
* Only working in one kind of function arguments:
  argument `FuncID';
* Trivial simplifications:
* Getting rid of remnant polynomial function heads:
    id `OldRatFuncID'(`PolyFuncID'(`Sym1'?), `PolyFuncID'(`Sym2'?)) = `OldRatFuncID'(`Sym1', `Sym2');
    #call HypSimplifyNumericRatFuncs(`OldRatFuncID',`Sym1',`Sym2')
* For the rest we replace:
    multiply replace_(`OldRatFuncID', `NewRatFuncID');
  endargument;
*
  .sort:SimplifyRatFuncsTrivial fin;
#endprocedure
*}}}
*
*{{{ HypToNumbers
#procedure HypToNumbers
* In all active expressions all numeric arguments get converted:
  id HYPnum(HYPn1?number_) = HYPn1;
  id HYPden(HYPn1?number_) = 1/HYPn1;
*  id HYPden(HYPn1?number_) = HYPdebug(HYPn1);
  id HYPrat?{HYPrat,HYPcrat}(HYPn1?,HYPn2?number_) = HYPn1/HYPn2;
  id HYPdenx(HYPn1?,HYPn2?number_) = HYPdenx(HYPn1/HYPn2);
* It is not advised to get rid of the rational arguments in
* the log because that can prevent from correct cancellation!
*  id HYPlogx(HYPn1?number_,HYPn2?number_) = HYPlogx(HYPn1/HYPn2);
  argument;
    id HYPrat?{HYPrat,HYPcrat}(HYPn1?,HYPn2?number_) = HYPn1/HYPn2;
    argument;
      id HYPrat?{HYPrat,HYPcrat}(HYPn1?,HYPn2?number_) = HYPn1/HYPn2;
    endargument;
  endargument;
*
  id HYPLinfRegInfZero(HYPn1?{0,-1}) = 0;
  id HYPlog(1) = 0;
#endprocedure
*}}}
*
*{{{ HypPolySimplify
#procedure HypPolySimplify(ExprID,PolyFuncID,FinFuncID,<AuxFunc1ID>,...,<AuxFunc4ID>,Var,n1,...,n10)
  .sort:PolySimplify start;
*
  #do iSimp=1,1
* Doing one poly at a time:
    id,once `PolyFuncID'(?a) = `AuxFunc1ID'(?a);
* Stripping off leading zero coeffs:
    repeat id `AuxFunc1ID'(?a,0) = `AuxFunc1ID'(?a);
* Leaving linear polys intact:
    id `AuxFunc1ID'(`n1'?,`n2'?) = `AuxFunc4ID'(`n1',`n2');
* Otherwise we form the polynom:
    if (count(`AuxFunc1ID',1) > 0);
      id `AuxFunc1ID'(?a) = `AuxFunc1ID'(nargs_(?a),?a);
      repeat;
        id `AuxFunc1ID'(`n1'?,`n2'?,?a,`n3'?) =
          `AuxFunc1ID'(`n1'-1,`n2' + `n3'*`Var'^(`n1'-1),?a);
      endrepeat;
      transform,`AuxFunc1ID',dropargs(1,1);
* Factorization:      
      factarg `AuxFunc1ID';
      chainout `AuxFunc1ID';
      multiply replace_(`AuxFunc1ID',`AuxFunc4ID');
    endif;
* Final check:
    if (count(`PolyFuncID',1) > 0) redefine iSimp "0";
    .sort:PolySimp loop over;
  #enddo
* Finally we getting the polynomial coefficients:
  #call HypGetPolyCoeffs(`AuxFunc4ID',`n1',`Var',1)
  id `AuxFunc4ID'(`n1'?) = `AuxFunc4ID'(`n1',0);
  multiply replace_(`AuxFunc4ID',`FinFuncID');
*
* Needed because of the local dollars used in GetPolyCoeffs:
*  ModuleOption,local,$i,$pwr;
  .sort:PolySimplify fin;
#endprocedure
*}}}
*
*{{{ HypSimplifyVarDepDens
#procedure HypSimplifyVarDepDens(ExprID,OldDenFuncID,NewDenFunc,Sym1,...,Sym3)
  inexpression `ExprID';
    id `OldDenFuncID'(0,`Sym1'?!{0,}) = `NewDenFunc'(0);
**
    id `OldDenFuncID'(`Sym1'?,`Sym2'?) = `OldDenFuncID'(gcd_(`Sym1',`Sym2'),`Sym1',`Sym2');
    id `OldDenFuncID'(1,`Sym1'?,`Sym2'?) = `NewDenFunc'(`Sym1',`Sym2');
    id `OldDenFuncID'(<`Sym1'?>,...,<`Sym3'?>) = `NewDenFunc'(div_(`Sym2',`Sym1'),div_(`Sym3',`Sym1'));
  endinexpression;
#endprocedure
*}}}
*
*{{{ HypSimplifyDiffLogDiffFuncs
#procedure HypSimplifyDiffLogDiffFuncs(ExprID,DiffFuncID,RatFuncID,PolyFuncID,<AuxFunc1ID>,...,<AuxFunc4ID>,Var,al1,al2,be1,be2,ga1,ga2,de1,de2,Sym9,Sym10)
  .sort:SimplifyDiffLogDiffFuncs start;
  skip;
  nskip `ExprID';
*
* Mapping input differences to our internal notation:
* `DiffFuncID'(al1,al2,be1,be2,ga1,ga2,de1,de2) = (al1 + be1*z)/(ga1 + de1*z) - (al2 + be2*z)/(ga2 + de2*z)
*
******************
* SPECIAL CASES: *
******************
*{{{
* Special case of constant polynomials:
  argument `DiffFuncID';
    argument `RatFuncID';
      id `PolyFuncID'(`al1'?) = `PolyFuncID'(`al1', 0);
    endargument;
  endargument;
  id `DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1'?,`be1'?),`PolyFuncID'(`ga1'?,`de1'?)),
                  `RatFuncID'(`PolyFuncID'(`al2'?),`PolyFuncID'(`ga2'?))) 
    = `DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1',`be1'),`PolyFuncID'(`ga1',`de1')),
                   `RatFuncID'(`PolyFuncID'(`al2', 0),`PolyFuncID'(`ga2', 0)));
  id `DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1'?),`PolyFuncID'(`ga1'?)),
                  `RatFuncID'(`PolyFuncID'(`al2'?,`be2'?),`PolyFuncID'(`ga2'?,`de2'?)))
    = `DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1', 0),`PolyFuncID'(`ga1', 0)),
                   `RatFuncID'(`PolyFuncID'(`al2',`be2'),`PolyFuncID'(`ga2',`de2')));
  id `DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1'?),`PolyFuncID'(`ga1'?))) 
    = `DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1',0),`PolyFuncID'(`ga1',0)));
*}}}
*
*********************
* SIMPLIFICATION 1: *
*********************
*{{{
* If any letter is zero we arrive at the final form of the differential function
* modulo a gcd:
  id `DiffFuncID'(0,`RatFuncID'(`PolyFuncID'(?a),`PolyFuncID'(?b))) = `DiffFuncID'(`RatFuncID'(`PolyFuncID'(?a), `PolyFuncID'(?b)));
  id `DiffFuncID'(`RatFuncID'(`PolyFuncID'(?a),`PolyFuncID'(?b)),0) = `DiffFuncID'(`RatFuncID'(`PolyFuncID'(?a), `PolyFuncID'(?b)));
*  print "`DiffFuncID'(`RatFuncID'(`PolyFuncID'(?a),`PolyFuncID'(?b)),0) %t";
*}}}
***************************
* INTRODUCE GENERAL FORM: *
***************************
*{{{
  id `DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1'?,`be1'?),`PolyFuncID'(`ga1'?,`de1'?)),
                  `RatFuncID'(`PolyFuncID'(`al2'?,`be2'?),`PolyFuncID'(`ga2'?,`de2'?)))
    = `DiffFuncID'(`al1',`al2',`be1',`be2',`ga1',`ga2',`de1',`de2');
*
  id `DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1'?,`be1'?),`PolyFuncID'(`ga1'?,`de1'?)))
    = `DiffFuncID'(`al1',`be1') - `DiffFuncID'(`ga1',`de1');
*  print "`DiffFuncID'(`RatFuncID'(`PolyFuncID'(`al1'?,`be1'?),`PolyFuncID'(`ga1'?,`de1'?))) %t";
*}}}
*********************
* SIMPLIFICATION 2: *
*********************
*{{{
  id `DiffFuncID'(`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,0,0) = 0;
*}}}
*********************
* SIMPLIFICATION 3: *
*********************
*{{{
* First, we apply the symmetry property:
  id `DiffFuncID'(`al1'?,`al2'?,0,`be2'?,`ga1'?,`ga2'?,0,0) = 
    `DiffFuncID'(`al2',`al1',`be2',0,`ga2',`ga1',0,0);
* GCDs in numerator and denominator:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,0) = 
    `DiffFuncID'(gcd_(`al1',`al2',`be1'),
                 gcd_(`ga1',`ga2'),
                 `al1',`al2',`be1',0,`ga1',`ga2',0,0);
  id `DiffFuncID'(1,1,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`al1',`al2',`be1',0,`ga1',`ga2',0,0);
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),div_(`be1',`Sym9'),0,`ga1',`ga2',0,0);
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`Sym10',`al1',`al2',`be1',0,`ga1',`ga2',0,0);
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`al1',`al2',`be1',0,div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),0,0);
  id `DiffFuncID'(1,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`al1',`al2',`be1',0,`ga1',`ga2',0,0);
* Final simplification converting the argument to a simple polynom:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`al1'*`ga2' - `al2'*`ga1', `be1'*`ga2');
*}}}
*********************
* SIMPLIFICATION 4: *
*********************
*{{{
* First, we apply the symmetry property:
  id `DiffFuncID'(`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,0,`de2'?) = 
    `DiffFuncID'(`al2',`al1',0,0,`ga2',`ga1',`de2',0);
* Calculating GCDs:
  id `DiffFuncID'(`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,0) = 
    `DiffFuncID'(gcd_(`al1',`al2'),
                 gcd_(`ga1',`ga2',`de1'),
                 `al1',`al2',0,0,`ga1',`ga2',`de1',0);
  id `DiffFuncID'(1,1,`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',0,0,`ga1',`ga2',`de1',0);
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),0,0,`ga1',`ga2',`de1',0);
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`Sym10',`al1',`al2',0,0,`ga1',`ga2',`de1',0);
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',0,0,div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),div_(`de1',`Sym10'),0);
  id `DiffFuncID'(1,`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',0,0,`ga1',`ga2',`de1',0);
* Final simplification: turning into difference:
  id `DiffFuncID'(`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al2'*`ga1'-`al1'*`ga2', `al2'*`de1') -
    `DiffFuncID'(`ga1', `de1');
*}}}
*********************
* SIMPLIFICATION 5: *
*********************
*{{{
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,0,0) = 
    `DiffFuncID'(gcd_(`al1',`al2',`be1',`be2'),
                 gcd_(`ga1',`ga2'),
                 `al1',`al2',`be1',`be2',`ga1',`ga2',0,0);
  id `DiffFuncID'(1,1,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',`ga1',`ga2',0,0);
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),div_(`be1',`Sym9'),div_(`be2',`Sym9'),`ga1',`ga2',0,0);
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`Sym10',`al1',`al2',`be1',`be2',`ga1',`ga2',0,0);
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),0,0);
  id `DiffFuncID'(1,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',`ga1',`ga2',0,0);
* Final simplification:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,0,0) =
    `DiffFuncID'(`al1'*`ga2'-`al2'*`ga1', `be1'*`ga2'-`be2'*`ga1');
*}}}
*********************
* SIMPLIFICATION 6: *
*********************
*{{{
* First, we apply the symmetry property:
  id `DiffFuncID'(`al1'?,`al2'?,0,`be2'?,`ga1'?,`ga2'?,0,`de2'?) = 
    `DiffFuncID'(`al2',`al1',`be2',0,`ga2',`ga1',`de2',0);
* Simplification through possible GCDs:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,0) = 
    `DiffFuncID'(gcd_(`al1',`al2',`be1'),
                 gcd_(`ga1',`ga2',`de1'),
                 `al1',`al2',`be1',0,`ga1',`ga2',`de1',0);
  id `DiffFuncID'(1,1,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',`be1',0,`ga1',`ga2',`de1',0);
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),div_(`be1',`Sym9'),0,`ga1',`ga2',`de1',0);
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`Sym10',`al1',`al2',`be1',0,`ga1',`ga2',`de1',0);
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',`be1',0,div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),div_(`de1',`Sym10'),0);
  id `DiffFuncID'(1,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',`be1',0,`ga1',`ga2',`de1',0);
* Final simplification:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1'*`ga2'-`al2'*`ga1', `be1'*`ga2'-`al2'*`de1') -
    `DiffFuncID'(`ga1', `de1');
*}}}
*********************
* SIMPLIFICATION 7: *
*********************
*{{{
* First, we apply the symmetry property:
  id `DiffFuncID'(`al1'?,`al2'?,0,`be2'?,`ga1'?,`ga2'?,`de1'?,0) = 
    `DiffFuncID'(`al2',`al1',`be2',0,`ga2',`ga1',0,`de1');
* Simplification through possible GCDs:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,`de2'?) = 
    `DiffFuncID'(gcd_(`al1',`al2',`be1'),
                 gcd_(`ga1',`ga2',`de2'),
                 `al1',`al2',`be1',0,`ga1',`ga2',0,`de2');
  id `DiffFuncID'(1,1,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',0,`ga1',`ga2',0,`de2');
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,`de2'?) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),div_(`be1',`Sym9'),0,`ga1',`ga2',0,`de2');
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,`de2'?) =
    `DiffFuncID'(`Sym10',`al1',`al2',`be1',0,`ga1',`ga2',0,`de2');
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',0,div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),0,div_(`de2',`Sym10'));
  id `DiffFuncID'(1,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',0,`ga1',`ga2',0,`de2');
* Final reduction to polynomial arguments:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,0,`de2'?) =
    `DiffFuncID'(`PolyFuncID'(`al1'*`ga2'-`al2'*`ga1', `be1'*`ga2'+`al1'*`de2', `be1'*`de2')) - 
    `DiffFuncID'(`ga2', `de2');
*}}}
*********************
* SIMPLIFICATION 8: *
*********************
*{{{
* Simplification through possible GCDs:
  id `DiffFuncID'(`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,`de2'?) = 
    `DiffFuncID'(gcd_(`al1',`al2'),
                 gcd_(`ga1',`ga2',`de1',`de2'),
                 `al1',`al2',0,0,`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(1,1,`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',0,0,`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),0,0,`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`Sym10',`al1',`al2',0,0,`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',0,0,div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),div_(`de1',`Sym10'),div_(`de2',`Sym10'));
  id `DiffFuncID'(1,`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',0,0,`ga1',`ga2',`de1',`de2');
* Final simplification:
  id `DiffFuncID'(`al1'?,`al2'?,0,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1'*`ga2'-`al2'*`ga1', `al1'*`de2'-`al2'*`de1') -
    `DiffFuncID'(`ga1', `de1') -
    `DiffFuncID'(`ga2', `de2');
*}}}
*********************
* SIMPLIFICATION 9: *
*********************
*{{{
* First, we apply the symmetry property:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,0,`de2'?) = 
    `DiffFuncID'(`al2',`al1',`be2',`be1',`ga2',`ga1',`de2',0);
* Simplification through possible GCDs:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,0) = 
    `DiffFuncID'(gcd_(`al1',`al2',`be1',`be2'),
                 gcd_(`ga1',`ga2',`de1'),
                 `al1',`al2',`be1',`be2',`ga1',`ga2',`de1',0);
  id `DiffFuncID'(1,1,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',`ga1',`ga2',`de1',0);
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),div_(`be1',`Sym9'),div_(`be2',`Sym9'),`ga1',`ga2',`de1',0);
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`Sym10',`al1',`al2',`be1',`be2',`ga1',`ga2',`de1',0);
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),div_(`de1',`Sym10'),0);
  id `DiffFuncID'(1,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',`ga1',`ga2',`de1',0);
* Final simplification:
* NOTE: An overall minus sign is dropped!
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,0) =
    `DiffFuncID'(`PolyFuncID'(`al2'*`ga1'-`al1'*`ga2', `be2'*`ga1'+`al2'*`de1'-`be1'*`ga2', `be2'*`de1')) -
    `DiffFuncID'(`ga1', `de1');
*}}}
**********************
* SIMPLIFICATION 10: *
**********************
*{{{
* First, we apply the symmetry property:
  id `DiffFuncID'(`al1'?,`al2'?,0,`be2'?,`ga1'?,`ga2'?,`de1'?,`de2'?) = 
    `DiffFuncID'(`al2',`al1',`be2',0,`ga2',`ga1',`de2',`de1');
* Simplification through possible GCDs:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,`de2'?) = 
    `DiffFuncID'(gcd_(`al1',`al2',`be1'),
                 gcd_(`ga1',`ga2',`de1',`de2'),
                 `al1',`al2',`be1',0,`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(1,1,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',0,`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),div_(`be1',`Sym9'),0,`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`Sym10',`al1',`al2',`be1',0,`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',0,div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),div_(`de1',`Sym10'),div_(`de2',`Sym10'));
  id `DiffFuncID'(1,`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',0,`ga1',`ga2',`de1',`de2');
* Final simplification:
* NOTE: An overall minus sign is dropped!
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,0,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`PolyFuncID'(`al1'*`ga2'-`al2'*`ga1', `be1'*`ga2'+`al1'*`de2'-`al2'*`de1', `be1'*`de2')) -
    `DiffFuncID'(`ga1', `de1') - `DiffFuncID'(`ga2', `de2');
*}}}
**********************
* SIMPLIFICATION 11: *
**********************
*{{{
* Simplification through possible GCDs:
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,`de2'?) = 
    `DiffFuncID'(gcd_(`al1',`al2',`be1',`be2'),
                 gcd_(`ga1',`ga2',`de1',`de2'),
                 `al1',`al2',`be1',`be2',`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(1,1,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(`Sym9'?!{1,},`Sym10'?,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`Sym10',div_(`al1',`Sym9'),div_(`al2',`Sym9'),div_(`be1',`Sym9'),div_(`be2',`Sym9'),
                         `ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(1,`Sym10'?,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`Sym10',`al1',`al2',`be1',`be2',`ga1',`ga2',`de1',`de2');
  id `DiffFuncID'(`Sym10'?!{1,},`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',
                 div_(`ga1',`Sym10'),div_(`ga2',`Sym10'),div_(`de1',`Sym10'),div_(`de2',`Sym10'));
  id `DiffFuncID'(1,`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`al1',`al2',`be1',`be2',`ga1',`ga2',`de1',`de2');
* Final simplification:
* NOTE: An overall minus sign is dropped!
  id `DiffFuncID'(`al1'?,`al2'?,`be1'?,`be2'?,`ga1'?,`ga2'?,`de1'?,`de2'?) =
    `DiffFuncID'(`PolyFuncID'(`al1'*`ga2'-`al2'*`ga1',
                              `be1'*`ga2'-`be2'*`ga1'+`al1'*`de2'-`al2'*`de1', 
                              `be1'*`de2'-`be2'*`de1')) -
    `DiffFuncID'(`ga1', `de1') - `DiffFuncID'(`ga2', `de2');
*}}}
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
**************************
* FINAL SIMPLIFICATIONS: *
**************************
* Starting with second order and higher polynomials:
* Trivial simplification if a constant poly is created:
  id `DiffFuncID'(`PolyFuncID'(`al1'?,0,0)) = 0;
  id `DiffFuncID'(`PolyFuncID'(`al1'?,`be1'?,`ga1'?)) =
    `DiffFuncID'(gcd_(`al1',`be1',`ga1'),
                 `PolyFuncID'(`al1',`be1',`ga1'));
  id `DiffFuncID'(1,`PolyFuncID'(`al1'?,`be1'?,`ga1'?)) =
    `DiffFuncID'(`PolyFuncID'(`al1',`be1',`ga1'));
  id `DiffFuncID'(`Sym9'?!{1,},`PolyFuncID'(`al1'?,`be1'?,`ga1'?)) =
    `DiffFuncID'(`PolyFuncID'(div_(`al1',`Sym9'),
                              div_(`be1',`Sym9'),
                              div_(`ga1',`Sym9')));
*
* Before calling the general polynomial simplification routine
* we change the header by getting rid of the DiffFuncID:
  id `DiffFuncID'(`PolyFuncID'(?a)) = `PolyFuncID'(?a);
*
  #call HypPolySimplify(`ExprID',`PolyFuncID',`PolyFuncID',`AuxFunc1ID',`AuxFunc2ID',`AuxFunc3ID',`AuxFunc4ID',`Var',`al1',`al2',`be1',`be2',`ga1',`ga2',`de1',`de2',`Sym9',`Sym10')
  #do iSplit=1,1
    id,once `PolyFuncID'(?a)*`PolyFuncID'(?b) = 
      `PolyFuncID'(?a) + `PolyFuncID'(?b);
    if (count(`PolyFuncID',1) > 1) redefine iSplit "0";
    .sort:Split polyproducts;
    skip;
    nskip `ExprID';
  #enddo
  id `PolyFuncID'(`al1'?,`be1'?) = `DiffFuncID'(`al1',`be1');
  id `PolyFuncID'(`al1'?,`be1'?,`ga1'?) = `DiffFuncID'(`PolyFuncID'(`al1',`be1',`ga1'));
  #if (`CheckPolysInSimplifyDiffLogDiffFuncs')
    if (match(`DiffFuncID'(`PolyFuncID'(`al1'?,`be1'?,`ga1'?))) > 0);
      print "Polynomial factor not being treated at the moment...";
      print "term: %t";
      print "Variable: `Var'";
      exit "SimplifyDiffLogDiffFuncs";
    endif;
  #endif
*
  id `DiffFuncID'(0,`be1'?!{0,}) = `DiffFuncID'(0,1);
  id `DiffFuncID'(`al1'?,0) = 0;
*
* Final GCD for polynomial terms:
  id `DiffFuncID'(`al1'?!{0,},`be1'?!{0,}) = 
    `DiffFuncID'(gcd_(`al1',`be1'),`al1',`be1');
  id `DiffFuncID'(1,`al1'?,`be1'?) = `DiffFuncID'(`al1',`be1');
  id `DiffFuncID'(`Sym9'?,`al1'?,`be1'?) = 
    `DiffFuncID'(div_(`al1',`Sym9'),div_(`be1',`Sym9'));
#endprocedure
*}}}
*
*{{{ HypSimplifyGeneralDiffLogDiffFuncs
#procedure HypSimplifyGeneralDiffLogDiffFuncs(ExprID,DiffFuncID,RatFuncID,PolyFuncID,Sym1,...,Sym8)
* General simplifications when the log-derivative is needed for fibration basis:
* NOTE: we assume that polynomial degrees are synched between numerator and denominator!
*****************
* ZERO LETTERS: *
*****************
* When the first rational function is zero, the second should acquire a minus sign:
  If ((match(`DiffFuncID'(`RatFuncID'(`PolyFuncID'(0,0),`PolyFuncID'(1,0)),?a)) ||
    match(`DiffFuncID'(`RatFuncID'(`PolyFuncID'(0),`PolyFuncID'(1)),?a))) > 0);
    Argument `DiffFuncID',2;
      Argument `RatFuncID',1;
        Argument `PolyFuncID';
          multiply -1;
        EndArgument;
      EndArgument;
    EndArgument;
  EndIf;
* Getting rid of zero rational functions (minus signs already adjusted):
  id `DiffFuncID'(?a,`RatFuncID'(`PolyFuncID'(0,0),`PolyFuncID'(1,0)),?b) =
    `DiffFuncID'(?a,?b);
  also `DiffFuncID'(?a,`RatFuncID'(`PolyFuncID'(0),`PolyFuncID'(1)),?b) =
    `DiffFuncID'(?a,?b);
  Repeat;
**********************************
* NO CONSTANT TERM IN NUMERATOR: *
**********************************
* rational function with numerator starting with z^n:
    id `DiffFuncID'(
      `RatFuncID'(
        `PolyFuncID'(0,?a,`Sym1'?!{0,}), 
        `PolyFuncID'(?b, 0)
      )
      ) =
      `DiffFuncID'(0, 1)
      +
      `DiffFuncID'(`RatFuncID'(`PolyFuncID'(?a,`Sym1'),`PolyFuncID'(?b)))
    ;
* rational function with denominator starting with z^n:
    id `DiffFuncID'(
      `RatFuncID'(
        `PolyFuncID'(?a, 0),
        `PolyFuncID'(0,?b,`Sym1'?!{0,})
      )
      ) =
      -
      `DiffFuncID'(0, 1)
      +
      `DiffFuncID'(`RatFuncID'(`PolyFuncID'(?a),`PolyFuncID'(?b,`Sym1')))
    ;
* Difference of rational functions:
* (z^n + ...)/(...) - (a + ...)/(...) = (z^(n-1) + ...)/(...) - (a + ...)/(1/z*...)
    id `DiffFuncID'(
      `RatFuncID'(
        `PolyFuncID'(0,?a,`Sym1'?!{0,}), 
        `PolyFuncID'(?b, 0)
      ),
      `RatFuncID'(
        `PolyFuncID'(`Sym2'?!{0,},?c), 
        `PolyFuncID'(?d,0)
      )
      ) =
      `DiffFuncID'(0, 1)
      +
      `DiffFuncID'(
        `RatFuncID'(`PolyFuncID'(?a,`Sym1'),`PolyFuncID'(?b)),
        `RatFuncID'(`PolyFuncID'(`Sym2',?c),`PolyFuncID'(0,?d))
      )
    ;
  EndRepeat;
******************************
* QUADRATIC SIMPLIFICATIONS: *
******************************
  If (
    match(
      `DiffFuncID'(
        `RatFuncID'(
          `PolyFuncID'(`Sym1'?$a,`Sym2'?$b,`Sym3'?!{0,}$c), 
          `PolyFuncID'(`Sym4'?,`Sym5'?,0)
        )
      )
    ) > 0
  );
    $CoeffRelation = $b - $a - $c;
    If ($CoeffRelation == 0);
      id `DiffFuncID'(
          `RatFuncID'(
            `PolyFuncID'($a,$b,$c), 
            `PolyFuncID'(`Sym1'?,`Sym2'?,0)
          )
        )
        =
        `DiffFuncID'(1,1)
        +
        `DiffFuncID'(
          `RatFuncID'(
            `PolyFuncID'($a,$c),
            `PolyFuncID'(1,0)
          )
        )
        -
        `DiffFuncID'(
          `RatFuncID'(
            `PolyFuncID'(`Sym1',`Sym2'),
            `PolyFuncID'(1,0)
          )
        )
      ;
    EndIf;
  EndIf;
  id `DiffFuncID'(
    `RatFuncID'(
      `PolyFuncID'(`Sym1'?!{0,},`Sym2'?,`Sym3'?!{0,}), 
      `PolyFuncID'(`Sym4'?!{0,},`Sym5'?!{0,},0)
    ),
    `RatFuncID'(
      `PolyFuncID'(`Sym6'?!{0,},`Sym7'?!{0,}), 
      `PolyFuncID'(1,0)
    )
    ) =
    `DiffFuncID'(
      `RatFuncID'(
        `PolyFuncID'(
          `Sym1' - `Sym4'*`Sym6',
          `Sym2' - `Sym4'*`Sym7' - `Sym5'*`Sym6',
          `Sym3' - `Sym5'*`Sym7'
        ), 
        `PolyFuncID'(`Sym4',`Sym5',0)
      )
    )
  ;
  #call HypDropTrailingZeroRatFuncCoeffs(`DiffFuncID',`RatFuncID',`PolyFuncID',`Sym1',...,`Sym2')
  #If (`CheckPolysInSimplifyDiffLogDiffFuncs')
    If (match(`DiffFuncID'(?a,`RatFuncID'(?b,`PolyFuncID'(`Sym1'?,`Sym2'?,`Sym3'?,?c),?d),?e)) > 0);
      print "At least quadratic polynom survives general simplification...";
      print "Affected term: %t";
      exit "HypSimplifyGeneralDiffLogDiffFuncs";
    EndIf;
  #EndIf
  ModuleOption,local,$a,$b,$c,$CoeffRelation;
  .sort:SimplifyGeneralDiffLogDiffFuncs;
#endprocedure
*}}}
*
*{{{ HypCheckForZeroCoeffs
* Prime number-based coefficient checker. Can be used to drop hyperlogs
* with non-trivially vanishing coefficients
#procedure HypCheckForZeroCoeffs(ExprID,LinfFuncID,TempExprCountVar,CurrentVar,?Vars)
  .sort:Checking for zero coeffs;
  skip;
  nskip `ExprID';
  #call HypShuffleNonNumericHlogs(`LinfFuncID',HYPaux,HYPn1,0)
  #redefine `TempExprCountVar' "{``TempExprCountVar''+1}"
  #define TempExpr "Temp``TempExprCountVar''"
  #call HypCreateFunctionExpressionWithExtras(`TempExpr',HYPaux,1,`ExprID')
  #if (exists(`TempExpr') > 0) 
    skip;
    nskip `ExprID';
    bracket HYPaux;
    .sort:`ExprID' bracketed;
    keep brackets;
    hide;
    .sort
    #redefine `TempExprCountVar' "{``TempExprCountVar''+1}"
    #define ZeroFuncExpr "Temp``TempExprCountVar''"
    local `ZeroFuncExpr' = 0;
    #do func=`TempExpr'
      #redefine `TempExprCountVar' "{``TempExprCountVar''+1}"
      #define TempFuncExpr "Temp``TempExprCountVar''"
      local `TempFuncExpr' = `ExprID'[`func'];
*      print `TempFuncExpr';
      .sort:Created `TempFuncExpr';
      #if (termsin(`TempFuncExpr') == 0)
        #write "`TempFuncExpr' should not be empty..."
        #write "Tried to collect coeffs for `func'"
        #terminate
      #endif
      PolyRatFun HYPratep;
      #define iprime "0"
      InExpression `TempFuncExpr';
      #do var={`?Vars'}
        #redefine iprime "{`iprime'+1}"
        id `var' = prime_(`iprime');
        argument;
          id `var' = prime_(`iprime');
          argument;
            id `var' = prime_(`iprime');
            argument;
              id `var' = prime_(`iprime');
            endargument;
          endargument;
        endargument;
        id HYPnum(HYPn1?number_) = HYPn1;
        id HYPden(HYPn1?number_) = 1/HYPn1;
        argument;
          id HYPrat(HYPn1?number_,HYPn2?number_) = HYPn1/HYPn2;
        endargument;
      #enddo
      id HYPdenx(HYPn1?) = HYPden(prime_(`iprime')-HYPn1);
      id HYPdenx(HYPn1?,HYPn2?) = HYPden(prime_(`iprime')-HYPn1/HYPn2);
      id HYPden(HYPn1?number_) = 1/HYPn1;
      shuffle HYPLinfRegInfZero;
      EndInExpression;
*      print `TempFuncExpr';
      .sort
      #if (termsin(`TempFuncExpr') == 0)
        local `ZeroFuncExpr' = `ZeroFuncExpr' + `func';
        .sort:`func' added to zeros;
      #endif
      drop `TempFuncExpr';
      .sort:`TempFuncExpr' dropped;
    #enddo
    PolyRatFun;
    InExpression `ZeroFuncExpr';
      id HYPratep(?a) = 1;
    EndInExpression;
    .sort
    unhide;
    drop `TempExpr';
*    print `ZeroFuncExpr';
    .sort:Unhidden originals;
    skip;
    nskip `ExprID';
    #define ZeroOut "0"
    #do zerofunc=`ZeroFuncExpr'
      #redefine ZeroOut "{`ZeroOut'+1}"
      id `zerofunc' = 0;
    #enddo
    multiply replace_(HYPaux,`LinfFuncID');
    #message Zeroed out `ZeroOut' hyperlogs;
    #call HypIncrementZeroedOutCounter(ZeroOut)
    .sort:`LinfFuncID's with zero coeff dropped;
    drop `ZeroFuncExpr';
    .sort Dropped `TempExpr';
  #endif
#endprocedure
*}}}
*
*{{{ HypSimplifyNumsDens
#procedure HypSimplifyNumsDens(NumFuncID,DenFuncID,Sym)
  #do func={`NumFuncID',`DenFuncID'}
    factarg `func';
  #enddo
*
  #do func={`NumFuncID',`DenFuncID'}
    chainout `func';
  #enddo
* Wrapper function not needed for numerical argument:
  id `NumFuncID'(`Sym'?number_) = `Sym';
  #call HypSimplifyNumericDenFuncs(`DenFuncID',`Sym')
* These constructs can cancel between each other:
  id `NumFuncID'(`Sym'?)*`DenFuncID'(`Sym'?) = 1;
#endprocedure
*}}}
*
*{{{ HypSimplifyNumerics
#procedure HypSimplifyNumerics()
********************
* POWER FUNCTIONS: *
********************
  #call HypSimplifyNumericPowFuncs(HYPpow,HYPn1,...,HYPn2)
*****************
* DENOMINATORS: *
*****************
  #call HypSimplifyNumericDenFuncs(HYPden,HYPn1)
  #call HypSimplifyNumericDenFuncs(HYPdenep,HYPn1)
***************
* NUMERATORS: *
***************
  #call HypSimplifyNumericNumFuncs(HYPnum,HYPn1)
  #call HypSimplifyNumericNumFuncs(HYPnumep,HYPn1)
***************
* LOGARITHMS: *
***************
  #call HypSimplifyNumericLogFuncs(HYPlog)
  #call HypSimplifyNumericVarDepLogFuncs(HYPlogx,HYPn1,HYPn2)
**************
* HYPERLOGS: *
**************
  #call HypSimplifyNumericHyperlogWithEmptyArg(HYPaux,HYPLx,HYPLphi,HYPLinfRegInfZero)
  Argument HYPLinfRegInfZero;
    #call HypSimplifyNumericRatFuncs(HYPrat,HYPn1,HYPn2)
  EndArgument;
  #call HypSimplifyHyperlogZeroLimit(HYPLlimZero,HYPn1)
***************************
* COMPOSITE DENOMINATORS: *
***************************
  #call HypSimplifyCompositeDenFuncs(HYPden,HYPnum,HYPrat,HYPnum,HYPden,HYPn1,HYPn2)
#endprocedure
*}}}
*******************
* REGULARIZATION: *
*******************
*{{{ HypGenerateJKsubsets
#procedure HypGenerateJKsubsets()
* Generates all J and K subsets for a given number of hyper
* parameters, this function can be used as the first step to 
* determine the degree of divergence for each parameter selection
*
* First we have to generate all possible subsets of the parameters:
  multiply distrib_(0,,HYPsetJK,HYPaux,<HYPz1>,...,<HYPz`HYPNPARAMS'>);
* Dropping those cases where all parameters were selected or none at all:
  id HYPaux?{HYPaux,HYPsetJK} = 0;
* Drop the auxiliary functions:
  id HYPaux(?a) = 1;
* Generating all possible J and K sets:
  id HYPsetJK(?a) = distrib_(0,,HYPsetJ,HYPsetK,?a);
#endprocedure
*}}}
*
*{{{ HypGenerateDegreeOfDivergenceExpr
#procedure HypGenerateDegreeOfDivergenceExpr(ExprID)
* Generates all possible J and K subsets:
*
  .sort:Deg of Div exprs;
  #if (exists(Degrees) == 0)
    local Degrees = 1;
    .sort
    hide;
    nhide Degrees;
    #call HypGenerateJKsubsets
    .sort:JKs done;
  #else
    hide;
    unhide Degrees;
    .sort:Degrees restored;
  #endif
  .sort:Degrees gen;
#endprocedure
*}}}
*
*{{{ HypFromPowFunc
#procedure HypFromPowFunc()
* Strips off power functions integer powers, if this power is 
* positive a numerator function, if negative a denominator function
* is created
*
* Without epsilon part in the exponent we directly change to numerators and
* denominators:
  id HYPpow(HYPn1?,HYPn2?{>0}) = HYPnum(HYPn1)^HYPn2;
  id HYPpow(HYPn1?,HYPn2?{<0}) = HYPden(HYPn1)^(-HYPn2);
  splitarg((HYPep)),HYPpow,2;
  id HYPpow(HYPn1?,0,HYPn2?) = HYPpow(HYPn1,HYPn2);
  id HYPpow(HYPn1?,HYPn2?{>0},HYPn3?) = HYPpow(HYPn1,HYPn3)*HYPnum(HYPn1)^HYPn2;
  id HYPpow(HYPn1?,HYPn2?{<0},HYPn3?) = HYPpow(HYPn1,HYPn3)*HYPden(HYPn1)^(-HYPn2);
#endprocedure
*}}}
*
*{{{ HypStripPowerFunctions
#procedure HypStripPowerFunctions(ExprID)
* This routine takes an expression assumed to be a single term
* and decomposes the power functions to numerator, denominator
* functions and remnant power functions.
*
  .sort:Strip powfuncts;
  hide;
  local TMP = `ExprID';
  #call HypFromPowFunc
  .sort:Separate num,den,pow;
* Creating two separate expressions one for numerator and denominator functions
* and one for power functions:
  local `ExprID'numden = TMP*replace_(HYPpow,HYPdrop);
  local `ExprID'powfunc = TMP*replace_(HYPden,HYPdrop,HYPnum,HYPdrop,HYPdenep,HYPdrop,HYPnumep,HYPdrop);
  .sort
  drop TMP;
  id HYPdrop(?a) = 1;
  .sort:Strippowfuncs done;
#endprocedure
*}}}
*
*{{{ HypDropTrivialJKsets
#procedure HypDropTrivialJKsets(ExprID,?ExtraVars)
* Taking a look at the power function remnant part of `ExprID'
* (`ExprID'powfunc) this function determines which J and K sets
* can potentially reveal singularities by applying lambda scaling
* and investigating the exponent of the resulting lambda factor
* if it is free from epsilon parts the J,K config will never
* give rise to non-integrable singularities!
*
  .sort:DropTrivialJKsets;
  hide;
  unhide Degrees;
* Working on the clearly powerfunction part that is where the exponent
* is epsilon dependent!
  multiply `ExprID'powfunc;
  bracket HYPsetJ,HYPpow;
  .sort:bracketed for J;
  keep brackets;
  #do zi=1,`HYPNPARAMS'
    if (match(HYPsetJ(?a,HYPz`zi',?b)) > 0);
      argument HYPpow,1;
        id HYPz`zi' = prime_(`zi')*HYPlam;
      endargument;
    endif;
  #enddo
  .sort:J sub over;
  bracket HYPsetK,HYPpow;
  .sort:bracketed for K;
  keep brackets;
  #do zi=1,`HYPNPARAMS'
    if (match(HYPsetK(?a,HYPz`zi',?b)) > 0);
      argument HYPpow,1;
        id HYPz`zi' = prime_(`zi')/HYPlam;
      endargument;
    endif;
  #enddo
  .sort:K sub over;
* Doing the remnants:
  #do zi=1,`HYPNPARAMS'
    argument HYPpow,1;
      id HYPz`zi' = prime_(`zi');
    endargument;
  #enddo
* If having extra variables also taking care of those:
  #if ("`?ExtraVars'" != "")
    #define zi "`HYPNPARAMS'"
    #do var={`?ExtraVars'}
      #redefine zi "{`zi'+1}"
      id `var' = prime_(`zi');
      Argument HYPpow,1;
        id `var' = prime_(`zi');
      EndArgument;
    #enddo
  #endif
  .sort:FF subs over;
* Factorizing the arguments:
  factarg HYPpow,1;
* Collecting lambdas:
  repeat;
    id HYPpow(?a,HYPlam,?b,HYPn1?) = HYPpow(?a,?b,HYPn1)*HYPomega(HYPn1);
    id HYPpow(?a,1/HYPlam,?b,HYPn1?) = HYPpow(?a,?b,HYPn1)*HYPomega(-HYPn1);
  endrepeat;
* Dropping power functions and collecting the omegas:
  id HYPpow(?a) = 1;
  chainin HYPomega;
  transform,HYPomega,addargs(1,last);
  .sort:Omegas collected;
* Drop all degrees where the omega argument is integer, i.e. can only
* contain integrable singularities:
  id HYPomega(HYPn1?number_) = 0;
* Also if there is no omega part it indicates that divergences are
* not possible:
  if (count(HYPomega,1) == 0) discard;
  .sort:DropTrivialJKsets done;
#endprocedure
*}}}
*
*{{{ HypGetDivs
#procedure HypGetDivs(ExprID,DegreesExprID,?ExtraVars)
* Using the degree expression and the stripped original expression
* which only contains the numerator and denominator functions
* determines those J and K sets and corresponding configs which
* can give rise to singular configurations.
*
  .sort GetDivs started;
  hide;
  nhide `DegreesExprID';
* Counting extra variables:
  #if ("`?ExtraVars'" != "")
    #$cnt = nargs_(`?ExtraVars');
    #define NumExtraVars "`$cnt'"
  #else
    #define NumExtraVars "0"
  #endif
* Knocking off the integer part from the omega:
  splitarg((HYPep)),HYPomega;
  id HYPomega(?a,HYPn1?number_,?b) = HYPomega(?a,?b);
  transform,HYPomega,addargs(1,last);
* Multiplying with the denominator/numerator part of `ExprID':
  multiply `ExprID'numden;
  .sort:Multiplied with `ExprID'numden;
* Substituting epsilons:
  bracket HYPnumep,HYPdenep;
  .sort:Bracketed eps;
  keep brackets;
  argument HYPnumep;
    id HYPep = prime_({`HYPNPARAMS'+`NumExtraVars'+1});
  endargument;
  id HYPnumep(HYPn1?number_) = HYPn1;
* Sanity:
  if (count(HYPnumep,1) > 0);
    print "Having non-pure epsilon numerators...";
    print "%t";
    exit "GetDivs";
  endif;
  argument HYPdenep;
    id HYPep = prime_({`HYPNPARAMS'+`NumExtraVars'+1});
  endargument;
  id HYPdenep(HYPn1?number_) = 1/HYPn1;
* Sanity:
  if (count(HYPdenep,1) > 0);
    print "Having non-pure epsilon denominators...";
    print "%t";
    exit "GetDivs";
  endif;
  .sort:ep substituted;
  #do zi=1,`HYPNPARAMS'
    if (match(HYPsetJ(?a,HYPz`zi',?b)) > 0);
      argument HYPnum;
        id HYPz`zi' = prime_(`zi')*HYPlam;
      endargument;
      argument HYPden;
        id HYPz`zi' = prime_(`zi')*HYPlam;
      endargument;
    elseif (match(HYPsetK(?a,HYPz`zi',?b)) > 0);
      argument HYPnum;
        id HYPz`zi' = prime_(`zi')/HYPlam;
      endargument;
      argument HYPden;
        id HYPz`zi' = prime_(`zi')/HYPlam;
      endargument;
    endif;
    id HYPnum(HYPn1?number_) = HYPn1;
    id HYPden(HYPn1?number_) = 1/HYPn1;
    factarg,HYPnum;
    chainout HYPnum;
    id HYPnum(HYPlam) = HYPlam;
    id HYPnum(1/HYPlam) = 1/HYPlam;
    factarg,HYPden;
    chainout HYPden;
    id HYPden(HYPlam) = 1/HYPlam;
    id HYPden(1/HYPlam) = HYPlam;
    .sort:z`zi' done;
  #enddo
* If having extra variables also taking care of those:
  #if ("`?ExtraVars'" != "")
    #define zi "`HYPNPARAMS'"
    #do var={`?ExtraVars'}
      #redefine zi "{`zi'+1}"
      id `var' = prime_(`zi');
      Argument HYPnum,HYPden;
        id `var' = prime_(`zi');
      EndArgument;
      id HYPnum(HYPn1?number_) = HYPn1;
      id HYPden(HYPn1?number_) = 1/HYPn1;
      factarg,HYPnum;
      chainout HYPnum;
      id HYPnum(HYPlam) = HYPlam;
      id HYPnum(1/HYPlam) = 1/HYPlam;
      factarg,HYPden;
      chainout HYPden;
      id HYPden(HYPlam) = 1/HYPlam;
      id HYPden(1/HYPlam) = HYPlam;
      .sort:`var' done;
    #enddo
  #endif
* Substituting all the other parameters:
  #do zi=1,`HYPNPARAMS'
    id HYPz`zi' = prime_(`zi');
    argument HYPnum;
      id HYPz`zi' = prime_(`zi');
    endargument;
    argument HYPden;
      id HYPz`zi' = prime_(`zi');
    endargument;
    id HYPnum(HYPn1?number_) = HYPn1;
    id HYPden(HYPn1?number_) = 1/HYPn1;
    .sort:z`zi' done;
  #enddo
  id HYPsetJ(?a)*HYPsetK(?b) = 
    HYPsetJ(?a)*HYPsetK(?b)*
    HYPlam^(nargs_(?a) - nargs_(?b))*HYPord(0)
  ;
  #call HypLambdaExpand(HYPlam,HYPord,HYPden,HYPnum,HYPn1)
  .sort:Expanded in lambda;
  dropcoefficient;
  .sort:Coeffs gone;
  bracket HYPsetJ,HYPsetK,HYPomega;
  .sort:Bracketed;
  collect HYPacc;
  .sort:Collected;
* When the argument of HYPacc is a simple number we can
* get rid of the function because scaling is clear:
  id HYPacc(HYPn1?number_) = 1;
* We factorize the argument:
  factarg HYPacc;
  repeat;
    id HYPacc(?a,1/HYPlam,?b) = HYPacc(?a,?b)/HYPlam;
    id HYPacc(?a,HYPlam,?b) = HYPacc(?a,?b)*HYPlam;
    id HYPacc(?a,HYPn1?number_,?b) = HYPacc(?a,?b);
    id HYPacc = 1;
  endrepeat;
  .sort
* If a lambda is left inside HYPacc it is subleading:
  argument HYPacc;
    multiply replace_(HYPlam,0);
  endargument;
  repeat;
    id HYPacc(?a,HYPn1?number_,?b) = HYPacc(?a,?b);
    id HYPacc = 1;
  endrepeat;
  .sort:HYPacc simplified;
* Adjusting the associated degree of divergence:
  $cnt = count_(HYPlam,1);
  id HYPsetJ(?a)*HYPsetK(?b)*HYPomega(HYPn1?) = 
    HYPsetJ(?a)*HYPsetK(?b)*HYPomega(HYPn1+$cnt)
  ;
  multiply HYPlam^(-$cnt);
* Dropping those J,K configs where regularization is not needed:
  splitarg,((HYPep)),HYPomega;
  id HYPomega(HYPn1?{>0,},?a) = 0;
  transform,HYPomega,addargs(first,last);
  ModuleOption,local,$cnt;
  .sort GetDivs done;
  #if 0
  #endif
#endprocedure
*}}}
*
*{{{ HypSelectDiv
#procedure HypSelectDiv(ExprID,DegreesExprID)
  .sort:SelectDiv;
  hide;
  local Divs = `DegreesExprID';
* Calculating the tag function to select the optimal regularization parameters;
  id HYPsetJ(?a)*HYPsetK(?b) = HYPsetJ(?a)*HYPsetK(?b)*
                               HYPtag(abs_(nargs_(?a) - nargs_(?b)));
  .sort:Bracket for tags;
  bracket HYPtag;
  .sort:Bracketed tags;
  hide Divs;
  #do i=`HYPNPARAMS',1,-1
    local SelDiv = Divs[HYPtag(`i')];
    .sort;
    #if (termsin(SelDiv) > 0)
      #breakdo
    #endif
  #enddo
  #$trm = firstterm_(SelDiv);
  #write "Config to regularize: %$",$trm;
  .sort
  local `ExprID' = `ExprID'*$trm;
  .sort:Div selected;
  if (expression(`ExprID'));
    id HYPsetJ(?a)*HYPsetK(?b)*HYPomega(HYPn1?) = 
      HYPsetJ(?a)*
      HYPsetK(?b)*
      HYPomega(HYPn1)*
      HYPdeg(HYPn1 - nargs_(?a) + nargs_(?b));
  endif;
  .sort:Degree added;
  unhide;
  drop Divs,SelDiv;
  .sort:End SelectDiv;
#endprocedure
*}}}
*
*{{{ HypDifferentiatePowerFuncs
#procedure HypDifferentiatePowerFuncs(PowerFuncID,DiffFuncID,ToDiffFuncID,DiffedFuncID,ExpFuncID,AuxFuncID,Sym1,...,Sym3,dVar,WithExtras)
  repeat;
    if (count(`DiffFuncID',1) > 0);
      id `DiffFuncID'(`Sym1'?$`dVar')*`PowerFuncID'(`Sym2'?,`Sym3'?) = 
        `ExpFuncID'(`Sym3')*`PowerFuncID'(`Sym2',`Sym3'-1)*`ToDiffFuncID'(`Sym2',1) +
        `DiffFuncID'(`Sym1')*`AuxFuncID'(`Sym2',`Sym3')
      ;
      Argument `ToDiffFuncID',1;
        #if (`WithExtras')
          FromPolynomial;
        #endif
        multiply count_($`dVar',1)/$`dVar';
      EndArgument;
      id `ToDiffFuncID'(`Sym1'?,`Sym2'?) = `DiffedFuncID'(`Sym1',`Sym2');
      if (count(`PowerFuncID',1) == 0) id `DiffFuncID'(`Sym1'?) = 0;
      #call HypSimplifyPowerFuncs(`PowerFuncID',`Sym1',`Sym2',`Sym3')
      #call HypNumSimplify(`ExpFuncID',`Sym1')
      #if ("`PowerFuncID'" != "`DiffedFuncID'")
        #call HypSimplifyPowerFuncs(`DiffedFuncID',`Sym1',`Sym2',`Sym3')
        #call HypNumSimplify(`ExpFuncID',`Sym1')
      #endif
    endif;
  endrepeat;
  multiply replace_(`AuxFuncID',`PowerFuncID');
  #if ("`PowerFuncID'" == "`DiffedFuncID'")
    #call HypSimplifyPowerFuncs(`PowerFuncID',`Sym1',`Sym2',`Sym3')
    #call HypNumSimplify(`ExpFuncID',`Sym1')
  #endif
#endprocedure
*}}}
*
*{{{ HypDifferentiateToRegularize
#procedure HypDifferentiateToRegularize()
  #do i=1,1
    #$it = 1;
*
    id HYPdeg(?a)*HYPsetJ*HYPsetK = 0;
    if (match(HYPsetJ(HYPn1?,?a)) > 0);
      id HYPdeg(?a)*HYPsetJ(HYPn1?,?b)*HYPsetK(?c) = 
        HYPdeg(?a)*HYPsetJ(?b)*HYPsetK(?c) - 
        HYPaux2(HYPn1,1)*HYPdiff(HYPn1)
      ;
    elseif (match(HYPsetK(HYPn1?,?a)) > 0);
      id HYPdeg(?a)*HYPsetJ(?b)*HYPsetK(HYPn1?,?c) = 
        HYPdeg(?a)*HYPsetJ(?b)*HYPsetK(?c) + 
        HYPaux2(HYPn1,1)*HYPdiff(HYPn1)
      ;
    endif;
*
    #call HypDifferentiatePowerFuncs(HYPpow,HYPdiff,HYPd,HYPaux2,HYPnumep,HYPaux,HYPn1,...,HYPn3,diffvar,1)
    repeat;
      id HYPaux2(HYPn1?, HYPn2?)*HYPaux2(HYPn3?, HYPn2?) = 
        HYPaux2(HYPn1*HYPn3, HYPn2)
      ;
    endrepeat;
    multiply replace_(HYPaux2,HYPpow);
*
    if (count(HYPdeg,1,HYPsetJ,1,HYPsetK,1) > 0) $it = 0;
*
    ModuleOption,local,$diffvar;
    ModuleOption,minimum,$it;
    .sort
    #redefine i "`$it'"
  #enddo
#endprocedure
*}}}
*
*{{{ HypRegularize
#procedure HypRegularize(ExprID)
  .sort:Regularize;
  hide;
  nhide `ExprID';
* Convert arguments to extra symbols to shrink term size:
  argtoextrasymbol HYPpow,1;
  .sort:Args to extrasymbols;
* When applying the diff. operator we rescale the function by the omega
* factor:
  id HYPomega(HYPn1?) = HYPdenep(HYPn1);
* Have to include the original term multiplied by the degree:
  id HYPdeg(HYPn1?)*HYPsetJ(?a)*HYPsetK(?b) = 
    HYPnumep(HYPn1) + HYPdeg(HYPn1)*HYPsetJ(?a)*HYPsetK(?b)
  ;
  if (count(HYPden,1,HYPnum,1) > 0);
    print "den or num found: %t";
    exit;
  endif;
  #call HypDifferentiateToRegularize()
  Argument HYPpow,1;
    FromPolynomial;
  EndArgument;
  id HYPnumep(HYPn1?) = HYPratep(HYPn1, 1);
  id HYPdenep(HYPn1?) = HYPratep(1, HYPn1);
  .sort:Before PolyRatFun;
  PolyRatFun HYPratep;
  .sort;After PolyRatFun;
  PolyRatFun;
  id HYPpow(HYPn1?, HYPn2?number_) = HYPaux(HYPn1, HYPn2);
  .sort
  abracket HYPpow,HYPrat;
  .sort
  keep brackets;
  id HYPaux(HYPn1?, HYPn2?) = HYPn1^HYPn2;
  .sort
  bracket HYPpow,HYPratep;
  .sort
  collect HYPacc;
  factarg HYPacc;
  repeat;
    id HYPacc(?a,HYPn1?number_,?b) = HYPn1*HYPacc(?a,?b);
    id HYPacc = 1;
  endrepeat;
  chainout HYPacc;
  id HYPacc(HYPn1?) = HYPpow(HYPn1, 1);
  #call HypSimplifyPowerFuncs(HYPpow,HYPn1,HYPn2,HYPn3)
  .sort
  PolyRatFun HYPratep;
  .sort
  PolyRatFun;
  .sort
  id HYPratep(HYPn1?, HYPn2?) = HYPnumep(HYPn1)*HYPdenep(HYPn2);
  id HYPnumep(HYPn1?number_) = HYPn1;
  id HYPdenep(HYPn1?number_) = 1/HYPn1;
  #if 0
  #endif
#endprocedure
*}}}
*
*{{{ HypAutoRegularize
#procedure HypAutoRegularize(ExprID,?ExtraVars)
* The trailing arguments are kept for variables used for scales and non-integrated
* variables!
* Selects an optimal J and K set configuration to perform a 
* analytical regularization
*
  .sort:Reg. starts;
  #define ItCount "0"
  #do RegIt=1,1
    #if (`ItCount' == `MAXREGIT')
      #write "AutoRegularize reached the `ItCount'th iteration..."
      #write "Regularization reached maximal number of iterations..."
      #write "This can be a bug or a very deeply singular integrand..."
      #write "Change MAXREGIT or file an issue..."
      #terminate 1;
    #endif
    #redefine ItCount "{`ItCount'+1}"
* First we have to generate all possible J and K subsets and multiply the
* expression with our parametric integral:
* NOTE that this is the improved version, if there was a previous step, i.e.
* the Degrees expression is available the routine will use that one:
    #call HypGenerateDegreeOfDivergenceExpr(`ExprID')
* The part of power functions with fractional powers are not needed to
* determine the divergence if they are consider once and encoded into the
* omega function, hence we decompose our power functions:
    #call HypStripPowerFunctions(`ExprID')
* In the first iteration step we can simply drop trivial J and K sets,
* that is those one where the omega function is free from dim. reg. epsilon
* parts:
    #if (`ItCount' == 1)
      #call HypDropTrivialJKsets(`ExprID',`?ExtraVars')
    #else
      unhide Degrees;
      .sort:Degrees revealed;
    #endif
* Multiplying the degrees expression with our integrand
* we perform lambda scaling and only keep those J and K configs which
* result in non-integrable scalings:
    #call HypGetDivs(`ExprID',Degrees,`?ExtraVars')
    #if (termsin(Degrees) > 0) 
      #redefine RegIt "0"
      #call HypSelectDiv(`ExprID',Degrees)
      hide `ExprID'numden,`ExprID'powfunc,Degrees;
      #call HypRegularize(`ExprID')
      #call HypSimplify
    #else
      drop Degrees,`ExprID'numden,`ExprID'powfunc;
    #endif
    .sort:`ItCount'th it. finished;
  #enddo
  unhide `ExprID';
  .sort:AutoRegularize done;
#endprocedure
*}}}
*
*{{{ HypShuffleRegularizeAtZero
#procedure HypShuffleRegularizeAtZero(ExprID,FuncID,RatFuncID,PolyFuncID,UseFilter,FilterFuncID,Sym1,Sym2,<AuxFunc1ID>,...,<AuxFunc3ID>)
  .sort:ShuffleRegularizeAtZero start;
* Main loop for regularization:
  #do iReg=1,1
    skip;
    nskip `ExprID';
* Making it possible to only work in special terms:
    if (
    #if (`UseFilter')
      count(`FilterFuncID',1) > 0
    #else
      1
    #endif
    );
* Whenever the last letter is zero we move the functionhead to the one
* which needs attention otherwise just change it to the final one:
      id `FuncID'(?a,`RatFuncID'(0, 1)) = `AuxFunc1ID'(?a,`RatFuncID'(0, 1));
      id `FuncID'(?a,0) = `AuxFunc1ID'(?a,0);
      id `FuncID'(?a,`RatFuncID'(`PolyFuncID'(0), `PolyFuncID'(1))) = `AuxFunc1ID'(?a,`RatFuncID'(`PolyFuncID'(0), `PolyFuncID'(1)));
* Whatever remains can be moved to the final form being regular:
      multiply replace_(`FuncID', `AuxFunc3ID');
* All the others should receive the original functionhead and should
* be started to process:
      multiply replace_(`AuxFunc1ID', `FuncID');
* From the surviving ones select one and change header:
* We also include an empty auxiliary function to move last elements of set A:
      id,once `FuncID'(?a) = `AuxFunc1ID'(?a)*`AuxFunc2ID';
    endif;
* Collect all those letters which are zero and there is no other
* element interposed between them:
    repeat;
      id `AuxFunc1ID'(?a,`RatFuncID'(0, 1))*`AuxFunc2ID'(?b) = `AuxFunc1ID'(?a)*`AuxFunc2ID'(?b,`RatFuncID'(0, 1));
      id `AuxFunc1ID'(?a, 0)*`AuxFunc2ID'(?b) = `AuxFunc1ID'(?a)*`AuxFunc2ID'(?b, 0);
      id `AuxFunc1ID'(?a,`RatFuncID'(`PolyFuncID'(0), `PolyFuncID'(1)))*`AuxFunc2ID'(?b) = `AuxFunc1ID'(?a)*`AuxFunc2ID'(?b,`RatFuncID'(`PolyFuncID'(0), `PolyFuncID'(1)));
    endrepeat;
    id `AuxFunc1ID'(?a)*`AuxFunc2ID'(?b) = 
      #if (`KeepLinfZeroInZeroRegularization')
      `AuxFunc3ID'(?a)*`AuxFunc3ID'(?b) 
      #endif
      - `AuxFunc2ID'(?b)*`AuxFunc2ID'(?a) + `AuxFunc2ID'(?a,?b);
* Special case when the remnant is empty:
    id `AuxFunc2ID' = 1;
    id `AuxFunc3ID' = 1;
    shuffle `AuxFunc2ID';
* Moving back the shuffled pieces:
    multiply replace_(`AuxFunc2ID', `FuncID');
* In case we have more such functions we rerun the loop:
    if (
    #if (`UseFilter')
      count(`FilterFuncID',1) > 0
    #else
      1
    #endif
    );
      if (count(`FuncID',1) > 0) redefine iReg "0";
    endif;
    .sort:iReg loop at end;
  #enddo
  skip;
  nskip `ExprID';
* Moving back functionheads:
  multiply replace_(`AuxFunc3ID',`FuncID');
#endprocedure
*}}}
*
*{{{ HypShuffleRegularizeAtInfinity
#procedure HypShuffleRegularizeAtInfinity(ExprID,FuncID,UseFilter,FilterFuncID,Sym1,Sym2,<Aux1FuncID>,...,<Aux4FuncID>)
  .sort:ShuffleRegularizeAtInfinity start;
* Main loop for regularization:
  #do iReg=1,1
    #$iReg = 1;
    skip;
    nskip `ExprID';
* Making it possible to only work in special terms:
    if (
    #if (`UseFilter')
      count(`FilterFuncID',1) > 0
    #else
      1
    #endif
    );
* Only move one instance at a time:
      id,once `FuncID'(?a) = `Aux1FuncID'(nargs_(?a),?a);
    endif;
    id `Aux1FuncID'(`Sym1'?number_,?a) = 
      sum_(
        `Sym2',
        1,
        `Sym1',
        (-1)^(`Sym2'-1)*
          (`Aux1FuncID'(`Sym2',?a) - `Aux1FuncID'(-1))*
          `Aux2FuncID'(-1)^(`Sym2'-1)*`Aux3FuncID'(`Sym2',?a)
      )
    ;
    chainin `Aux2FuncID';
* Drop arguments if length greater than one (needed for the first term:
* WORKAROUND until putfirst_ gets corrected:
    if (match(`Aux1FuncID'(`Sym1'?$n,`Sym2'?,?a)) > 0);
      transform,`Aux1FuncID',dropargs(1,$n);
      if (match(`Aux1FuncID'(`Sym1'?,`Sym2'?,?a)) > 0);
        transform,`Aux1FuncID',dropargs(2,last);
      endif;
    endif;
    if (count(`Aux3FuncID',1) > 0);
      id `Aux3FuncID'(`Sym1'?$n,?a) = `Aux3FuncID'(?a);
      transform,`Aux3FuncID',dropargs(1,$n);
    endif;
    multiply replace_(`Aux2FuncID',`Aux3FuncID');
* Needed to perform the shuffle even with zero argument:
    id `Aux3FuncID' = 1;
    shuffle `Aux3FuncID';
    id `Aux1FuncID'(?a)*`Aux3FuncID'(?b) = `Aux4FuncID'(?a,?b);
* This statement is needed for the special case when there is nothing to shuffle
* (word length of one):
    multiply replace_(`Aux1FuncID',`Aux4FuncID');
* In case we have more such functions we rerun the loop:
    if (
    #if (`UseFilter')
      count(`FilterFuncID',1) > 0
    #else
      1
    #endif
    );
      if (count(`FuncID',1) > 0) $iReg = 0;
    endif;
    ModuleOption,local,$n;
    ModuleOption,minimum,$iReg;
    .sort:iReg loop at end;
    #redefine iReg "`$iReg'"
  #enddo
  skip;
  nskip `ExprID';
  multiply replace_(`Aux4FuncID',`FuncID');
#endprocedure
*}}}
*
***************
* EXPANSIONS: *
***************
*{{{ HypLambdaExpand
#procedure HypLambdaExpand(LambdaSymbol,OrdoFuncID,DenFuncID,NumFuncID,Sym1)
  .sort:LambdaExpand starts;
  id `OrdoFuncID'(`Sym1'?$ord) = `OrdoFuncID'($ord);
  if (count(`LambdaSymbol',1) > $ord) discard;
  factarg `DenFuncID';
  factarg `NumFuncID';
  chainout `DenFuncID';
  chainout `NumFuncID';
  id `DenFuncID'(`LambdaSymbol'^-1) = `LambdaSymbol';
  id `DenFuncID'(`LambdaSymbol') = 1/`LambdaSymbol';
  id `DenFuncID'(`Sym1'?number_) = 1/`Sym1';
  id `NumFuncID'(`Sym1'?) = `Sym1';
  normalize,^-1,`DenFuncID';
  splitarg,((`LambdaSymbol')),`DenFuncID';
  transform,`DenFuncID',addargs(2,last);
  Argument `DenFuncID',2;
    multiply 1/`LambdaSymbol';
  EndArgument;
  repeat;
    if (count(`LambdaSymbol',1) > $ord);
      discard;
    elseif (count(`LambdaSymbol',1) == $ord);
      id `DenFuncID'(?a) = 1;
    else;
      id,once `DenFuncID'(1,`Sym1'?) = 1 - `LambdaSymbol'*`Sym1'*`DenFuncID'(1,`Sym1');
    endif;
  endrepeat;
  id `OrdoFuncID'($ord) = 1;
  #if 0
  #endif
  ModuleOption,local,$ord;
  .sort:LambdaExpand fins;
#endprocedure
*}}}
*
*{{{ HypEpExpand
#procedure HypEpExpand
* We have already present epsilon polys we factorize them to reveal linear dependence:
  #do EpFunc={num,den}
    factarg HYP`EpFunc'ep;
    chainout HYP`EpFunc'ep;
  #enddo
  #call HypDenSimplify(HYPnumep,HYPdenep,HYPratep,HYPz,HYPn1,HYPn2)
* Conversion into numerators and denominators:
  id HYPpow(HYPn1?,HYPn2?pos_) = HYPnum(HYPn1)^HYPn2;
  id HYPpow(HYPn1?,HYPn2?neg_) = HYPden(HYPn1)^(-HYPn2);
* Splitting the exponent into an epsilon independent and dependent part:
  splitarg((HYPep)),HYPpow,2;
* We can also have some higher powers of epsilons, we simply sum up these:
  transform,HYPpow,addargs(3,last);
* Handling the trivial case first:
  id HYPpow(HYPn1?,0,HYPn2?) = HYPpow(HYPn1,HYPn2);
* Isolating denominators and numerators:
  id HYPpow(HYPn1?,HYPn2?pos_,HYPn3?) = HYPnum(HYPn1)^HYPn2*HYPpow(HYPn1,HYPn3);
  id HYPpow(HYPn1?,HYPn2?neg_,HYPn3?) = HYPden(HYPn1)^(-HYPn2)*HYPpow(HYPn1,HYPn3);
* Exposing possible epsilon poles:
  id HYPdenep(HYPep) = 1/HYPep;
* At this point we only have power functions with non-zero epsilon-dependent
* exponents
* We factor out an overall epsilon in the exponent:
  argument HYPpow,2;
    multiply 1/HYPep;
  endargument;
* Doing the same with dedicated numerators as well:
  splitarg((HYPep)),HYPnumep;
  splitarg((HYPep)),HYPdenep;
* Everything should be summed up from the second to the last argument because all of
* those are epsilon dependent:
  transform HYPnumep,addargs(2,last);
  transform HYPdenep,addargs(2,last);
* Getting rid of trivial stuff:
  id HYPdenep(0,HYPn1?) = 1/HYPn1;
  id HYPdenep(HYPep) = 1/HYPep;
  id HYPdenep(HYPn1?,HYPn2?) = HYPdenep(1,HYPn2/HYPn1)/HYPn1;
  id HYPdenep(1,HYPn1?) = HYPe(HYPn1/HYPep);
  id HYPnumep(HYPep) = HYPep;
* Exposing epsilon part:
  #do i=1,1
    id,once HYPnumep(HYPn1?,HYPn2?) = HYPnum(HYPn1) + HYPn2;
    if (match(HYPnumep(HYPn1?,HYPn2?)) > 0) redefine i "0";
    #call HypNumSimplify(HYPnum,HYPn1)
    .sort:Expose ep;
  #enddo
* Replace the power function functionhead with the one used in the expansion process:
  id HYPpow(HYPn1?,HYPn2?) = HYPpowExpand(0,HYPn1,HYPn2);
  #do i=1,1
    id,once HYPpowExpand(HYPn1?,HYPn2?,HYPn3?) = invfac_(HYPn1)*HYPn3^HYPn1*HYPlog(HYPn2)^HYPn1 +
      HYPep*HYPpowExpand(HYPn1+1,HYPn2,HYPn3);
    if (count(HYPep,1) > `HYPMAXEP') discard;
    if (count(HYPpowExpand,1) > 0) redefine i "0";
    .sort:HYPpowExpand;
  #enddo
  #do i=1,1
    id,once HYPe(HYPn1?) = 1 - HYPn1*HYPep*HYPe(HYPn1);
    if (count(HYPep,1) > `HYPMAXEP') discard;
    if (count(HYPe,1) > 0) redefine i "0";
    .sort:e func expand;
  #enddo
* By default we collect all epsilons into epsilon rational functions;
  id HYPep = HYPratep(HYPep,1);
  id 1/HYPep = HYPratep(1,HYPep);
  .sort:Forming ep ratfuns;
  PolyRatFun HYPratep;
  .sort:HYPratep created;
  #if 0
  #endif
#endprocedure
*}}}
*
*{{{ HypHyperExpand
#procedure HypHyperExpand(Var,FuncID,PowCountFuncID,Count)
* Expands regularized hyperlogs:
  .sort
* Change functionhead for affected functions to be able to perform the iterated
* procedure:
  id `FuncID'(?a) = HYPcoeff(0,?a);
  #do i=1,1
* From term to term we determine the maximal power:
    #if (`Count')
      $pow = count_(`PowCountFuncID',1);
    #else
      #$pow = `HYPMAXZ';
    #endif
* We can have two possibilities: having a non-zero or a zero last letter:
    id HYPcoeff(HYPn1?,?a,HYPn2?!{0,}) = 
      -HYPden(HYPn2)*
       sum_(HYPn3,0,$pow-HYPn1-1,HYPden(HYPn2)^HYPn3/(HYPn1+HYPn3+1)*HYPcoeff(HYPn1+HYPn3+1,?a));
    also HYPcoeff(HYPn1?,?a,0) = 1/HYPn1*HYPcoeff(HYPn1,?a);
* The iterations end when the coefficient function becomes free of letters:
    id HYPcoeff(HYPn1?) = `Var'^HYPn1;
    if (count(HYPcoeff,1) > 0) redefine i "0";
    ModuleOption,local,$pow;
    .sort
  #enddo
#endprocedure
*}}}
*
****************
* INTEGRATION: *
****************
*****************************************************
* various integration routines for different cases: *
*****************************************************
*{{{ HypIntHlogDenZeroLetterRatFun
#procedure HypIntHlogDenZeroLetterRatFun(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (match(HYPdenx(0)) > 1) && 
         (match(HYPLx(HYPrat(HYPn1?,HYPn2?),?a)) > 0)
       );
* Getting the exponent of the denominator:
*      print "IntHlogDenZeroLetterRatFun -> %t";
      term;
        $pow = count_(HYPdenx,1);
        id HYPdenx(0)^$pow*HYPLx(HYPrat(HYPn1?,HYPn2?),?a)*HYPdx(`IntVar') =
          -1/($pow-1)*HYPdenx(0)^($pow-1)*HYPLx(HYPrat(HYPn1,HYPn2),?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) +
          1/($pow-1)*
          (
           sum_(HYPi,1,$pow-1,-HYPnum(HYPn2)^HYPi*HYPden(HYPn1)^HYPi*HYPdenx(0)^($pow-1-HYPi+1)) +
           HYPnum(HYPn2)^($pow-1)*HYPden(HYPn1)^($pow-1)*HYPdenx(HYPn1,HYPn2)
          )*
          HYPLx(?a)*HYPdx(`IntVar')
        ;
      endterm;
      #call HypSimplifyNumerics
*      print "IntHlogDenZeroLetterRatFun -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogDenLetterSamePoly
#procedure HypIntHlogDenLetterSamePoly(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) > 1) && 
         (count(HYPLx,1) == 1) &&
         (match(HYPdenx(HYPn1?)*HYPLx(HYPn1?,?a)) > 0)
       );
*      print "IntHlogIntHlogDenLetterSamePoly -> %t";
* Getting the exponent of the denominator:
      term;
        $pow = count_(HYPdenx,1);
        id HYPdenx(HYPn1?)^$pow*HYPLx(HYPn1?,?a)*HYPdx(`IntVar') =
          -1/($pow-1)*HYPdenx(HYPn1)^($pow-1)*HYPLx(HYPn1,?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) +
          1/($pow-1)*HYPdenx(HYPn1)^$pow*HYPLx(?a)*HYPdx(`IntVar')
        ;
      endterm;
      #call HypSimplifyNumerics
*      print "IntHlogIntHlogDenLetterSamePoly -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogDenLetterSameRatFun
#procedure HypIntHlogDenLetterSameRatFun(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) > 1) && 
         (match(HYPdenx(HYPn1?,HYPn2?)*HYPLx(HYPrat(HYPn1?,HYPn2?),?a)) > 0) &&
         (count(HYPLx,1) == 1)
       );
*      print "IntHlogDenLetterSameRatFun -> %t";
      term;
* Getting the exponent of the denominator:
        $pow = count_(HYPdenx,1);
        id HYPdenx(HYPn1?,HYPn2?)^$pow*HYPLx(HYPrat(HYPn1?,HYPn2?),?a)*HYPdx(`IntVar') =
          -1/($pow-1)*HYPdenx(HYPn1,HYPn2)^($pow-1)*HYPLx(HYPrat(HYPn1,HYPn2),?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) +
          1/($pow-1)*HYPdenx(HYPn1,HYPn2)^$pow*HYPLx(?a)*HYPdx(`IntVar')
        ;
      endterm;
      #call HypSimplifyNumerics
*      print "IntHlogDenLetterSameRatFun -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogDenRatFunLetterPoly
#procedure HypIntHlogDenRatFunLetterPoly(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) > 1) && 
         (count(HYPLx,1) == 1) && 
         (match(HYPdenx(HYPn1?,HYPn2?)) != 0) &&
         (match(HYPLx(HYPn1?!{0,},?a)) != 0) &&
         (match(HYPLx(HYPrat(?a),?b)) == 0)
       );
*      print "IntHlogDenRatFunLetterPoly -> %t";
* Getting the exponent of the denominator:
      term;
        $pow = count_(HYPdenx,1);
        id HYPdenx(HYPn1?,HYPn2?)^$pow*HYPLx(HYPn3?,?a)*HYPdx(`IntVar') =
          -1/($pow-1)*HYPdenx(HYPn1,HYPn2)^($pow-1)*HYPLx(HYPn3,?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) +
          1/($pow-1)*
          (
           sum_(HYPi,1,$pow-1,(-1)^(HYPi+1)*HYPden(HYPrat(HYPn1,HYPn2),HYPn3)^HYPi*HYPdenx(HYPn1,HYPn2)^($pow-1-HYPi+1)) +
           (-1)^($pow-1)*HYPden(HYPrat(HYPn1,HYPn2),HYPn3)^($pow-1)*HYPdenx(HYPn3)
          )*HYPLx(?a)*HYPdx(`IntVar')
          ;
      endterm;
      id HYPLx = 1;
      #call HypArgRatFunManip(HYPden,-)
      #call HypDenSimplify(HYPnum,HYPden,HYPrat,HYPz,HYPn1,HYPn2)
      #call HypSimplifyNumerics
*      print "IntHlogDenRatFunLetterPoly -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogDenPolyLetterRatFun
#procedure HypIntHlogDenPolyLetterRatFun(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) > 1) && 
         (count(HYPLx,1) == 1) && 
         (match(HYPdenx(HYPn1?!{0,})) != 0) &&
         (match(HYPdenx(HYPn1?,HYPn2?)) == 0) &&
         (match(HYPLx(HYPrat(?a),?b)) == 1)
       );
*      print "IntHlogDenPolyLetterRatFun -> %t";
* Getting the exponent of the denominator:
      term;
        $pow = count_(HYPdenx,1);
        id HYPdenx(HYPn1?)^$pow*HYPLx(HYPrat(HYPn2?,HYPn3?),?a)*HYPdx(`IntVar') =
          -1/($pow-1)*HYPdenx(HYPn1)^($pow-1)*HYPLx(HYPrat(HYPn2,HYPn3),?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) +
          1/($pow-1)*
          (
           sum_(HYPi,1,$pow-1,(-1)^(HYPi+1)*HYPden(HYPn1,HYPrat(HYPn2,HYPn3))^HYPi*HYPdenx(HYPn1)^($pow-1-HYPi+1)) +
           (-1)^($pow-1)*HYPden(HYPn1,HYPrat(HYPn2,HYPn3))^($pow-1)*HYPdenx(HYPn2,HYPn3)
          )*HYPLx(?a)*HYPdx(`IntVar')
          ;
      endterm;
      id HYPLx = 1;
      #call HypArgRatFunManip(HYPden,-)
      #call HypDenSimplify(HYPnum,HYPden,HYPrat,HYPz,HYPn1,HYPn2)
      #call HypSimplifyNumerics
*      print "IntHlogDenPolyLetterRatFun -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogDenRatFunLetterRatFun
#procedure HypIntHlogDenRatFunLetterRatFun(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) > 1) && 
         (
           (match(HYPdenx(HYPn1?!{HYPn3?},HYPn2?)*HYPLx(HYPrat(HYPn3?!{HYPn1?},HYPn4?),?a)) > 0) ||
           (match(HYPdenx(HYPn1?,HYPn2?!{HYPn4?})*HYPLx(HYPrat(HYPn3?,HYPn4?!{HYPn2?}),?a)) > 0)
         )
       );
*      print "IntHlogDenRatFunLetterRatFun -> %t";
* Getting the exponent of the denominator:
      term;
        $pow = count_(HYPdenx,1);
        id HYPdenx(HYPn1?,HYPn2?)^$pow*
          HYPLx(HYPrat(HYPn3?,HYPn4?),?a)*HYPdx(`IntVar') =
          -1/($pow-1)*HYPdenx(HYPn1,HYPn2)^($pow-1)*HYPLx(HYPrat(HYPn3,HYPn4),?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) +
          1/($pow-1)*
          (
           sum_(HYPi,1,$pow-1,(-1)^(HYPi+1)*HYPden(HYPrat(HYPn1,HYPn2),HYPrat(HYPn3,HYPn4))^HYPi*HYPdenx(HYPn1,HYPn2)^($pow-1-HYPi+1)) +
           (-1)^($pow-1)*HYPden(HYPrat(HYPn1,HYPn2),HYPrat(HYPn3,HYPn4))^($pow-1)*HYPdenx(HYPn3,HYPn4)
          )*HYPLx(?a)*HYPdx(`IntVar')
          ;
      endterm;
      id HYPLx = 1;
      #call HypArgRatFunManip(HYPden,-)
      #call HypDenSimplify(HYPnum,HYPden,HYPrat,HYPz,HYPn1,HYPn2)
      #call HypSimplifyNumerics
*      print "IntHlogDenRatFunLetterRatFun -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogDenPolyLetterPoly
#procedure HypIntHlogDenPolyLetterPoly(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) > 1) && 
         (count(HYPLx,1) > 0) && 
         (match(HYPdenx(HYPn1?,HYPn2?)) == 0) &&
         (match(HYPdenx(HYPn1?!{HYPn2?})*HYPLx(HYPn2?!{HYPn1?},?a)) != 0) &&
         (match(HYPLx(HYPrat(?a),?b)) == 0)
       );
*      print "IntHlogDenPolyLetterPoly -> %t";
* Getting the exponent of the denominator:
      term;
        $pow = count_(HYPdenx,1);
        id HYPdenx(HYPn1?!{HYPn2?})^$pow*HYPLx(HYPn2?!{HYPn1?},?a)*HYPdx(`IntVar') =
          -1/($pow-1)*HYPdenx(HYPn1)^($pow-1)*HYPLx(HYPn2,?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) +
          1/($pow-1)*
          (
           sum_(HYPi,1,$pow-1,(-1)^(HYPi+1)*HYPden(HYPn1-HYPn2)^HYPi*HYPdenx(HYPn1)^($pow-1-HYPi+1)) +
           (-1)^($pow-1)*HYPden(HYPn1-HYPn2)^($pow-1)*HYPdenx(HYPn2)
          )*HYPLx(?a)*HYPdx(`IntVar')
          ;
      endterm;
      id HYPLx = 1;
      #call HypSimplifyNumerics
*      print "IntHlogDenPolyLetterPoly -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogDenRatFunLetterZero
#procedure HypIntHlogDenRatFunLetterZero(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) > 1) &&
         (match(HYPdenx(HYPn1?,HYPn2?)) != 0) && 
         (match(HYPLx(0,?a)) != 0)
       );
*      print "IntHlogDenRatFunLetterZero -> %t";
* Getting the exponent of the denominator:
      term;
        $pow = count_(HYPdenx,1);
        id HYPdenx(HYPn1?,HYPn2?)^$pow*HYPLx(0,?a)*HYPdx(`IntVar') =
          -1/($pow-1)*HYPdenx(HYPn1,HYPn2)^($pow-1)*HYPLx(0,?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) +
          1/($pow-1)*
          (
           sum_(HYPi,1,$pow-1,(-1)^(HYPi+1)*HYPnum(HYPn2)^HYPi*HYPden(HYPn1)^HYPi*HYPdenx(HYPn1,HYPn2)^($pow-1-HYPi+1)) +
           (-1)^($pow-1)*HYPnum(HYPn2)^($pow-1)*HYPden(HYPn1)^($pow-1)*HYPdenx(0)
          )*
          HYPLx(?a)*HYPdx(`IntVar')
        ;
      endterm;
      #call HypSimplifyNumerics
*      print "IntHlogDenRatFunLetterZero -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogNoDenNoVarLetterZero
#procedure HypIntHlogNoDenNoVarLetterZero(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) == 0) && 
         (count(`IntVar',1) == 0) && 
         (count(HYPLx,1) > 0) &&
         (match(HYPLx(0,?a)) > 0)
       );
*      print "IntHlogNoDenNoVarLetterZero -> %t";
      term;
        id HYPLx(0,?a)*HYPdx(`IntVar') = `IntVar'*HYPLx(0,?a)*
          (
            HYPlim(`IntVar',HYPinf) 
            #if (`DoZeroLimit')
              - 
              HYPlim(`IntVar',0)
            #endif
          ) -
          HYPLx(?a)*HYPdx(`IntVar')
        ;
      endterm;
      #call HypSimplifyNumerics
*      print "IntHlogNoDenNoVarLetterZero -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogNoDenNoVarLetterPoly
#procedure HypIntHlogNoDenNoVarLetterPoly(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) == 0) && 
         (count(`IntVar',1) == 0) && 
         (match(HYPLx(HYPrat(?a),?b)) == 0) &&
         (match(HYPLx(0,?a)) == 0) &&
         (count(HYPLx,1) > 0)
       );
*      print "IntHlogNoDenNoVarLetterPoly -> %t";
      id HYPLx(HYPn1?!{0,},?a)*HYPdx(`IntVar') = (`IntVar' - HYPnum(HYPn1))*HYPLx(HYPn1,?a)*
        (
          HYPlim(`IntVar',HYPinf) 
          #if (`DoZeroLimit')
            - 
            HYPlim(`IntVar',0)
          #endif
        ) -
        HYPLx(?a)*HYPdx(`IntVar')
      ;
      id HYPLx = 1;
      #call HypSimplifyNumerics
*      print "IntHlogNoDenNoVarLetterPoly -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogNoDenNoVarLetterRatFun
#procedure HypIntHlogNoDenNoVarLetterRatFun(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1,`IntVar',1) == 0) && 
         (match(HYPLx(HYPrat(?a),?b)) != 0) &&
         (count(HYPLx,1) != 0)
       );
*      print "IntHlogNoDenNoVarLetterRatFun -> %t";
      id HYPLx(HYPrat(HYPn1?,HYPn2?),?a)*HYPdx(`IntVar') = 
        (`IntVar' - HYPnum(HYPn1)*HYPden(HYPn2))*
        HYPLx(HYPrat(HYPn1,HYPn2),?a)*
        (
          HYPlim(`IntVar',HYPinf) 
          #if (`DoZeroLimit')
            - 
            HYPlim(`IntVar',0)
          #endif
        ) -
        HYPLx(?a)*HYPdx(`IntVar')
      ;
      id HYPLx = 1;
      #call HypSimplifyNumerics
*      print "IntHlogNoDenNoVarLetterRatFun -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogVarLetterZero
#procedure HypIntHlogVarLetterZero(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) == 0) && 
         (count(`IntVar',1) > 0) && 
         (count(HYPLx,1) > 0) &&
         (match(HYPLx(0,?a)) > 0)
       );
*      print "IntHlogVarLetterZero -> %t";
      term;
        $pow = count_(`IntVar',1);
        id `IntVar'^$pow*HYPLx(0,?a)*HYPdx(`IntVar') = 
          1/($pow+1)*`IntVar'^($pow+1)*
            HYPLx(0,?a)*
            (
              HYPlim(`IntVar',HYPinf) 
              #if (`DoZeroLimit')
                - 
                HYPlim(`IntVar',0)
              #endif
            ) 
          -
          1/($pow+1)*`IntVar'^$pow*HYPLx(?a)*HYPdx(`IntVar')
          ;
      endterm;
      #call HypSimplifyNumerics
*      print "IntHlogVarLetterZero -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogVarLetterPoly
#procedure HypIntHlogVarLetterPoly(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) == 0) && 
         (count(`IntVar',1) > 0) && 
         (match(HYPLx(HYPrat(?a),?b)) == 0) &&
         (count(HYPLx,1) > 0)
       );
*      print "IntHlogVarLetterPoly -> %t";
      term;
        $pow = count_(`IntVar',1);
        id `IntVar'^$pow*HYPLx(HYPn1?!{0,},?a)*HYPdx(`IntVar') = 
          1/($pow+1)*(`IntVar'^($pow+1) - HYPnum(HYPn1)^($pow+1))*
            HYPLx(HYPn1,?a)*
            (
              HYPlim(`IntVar',HYPinf) 
              #if (`DoZeroLimit')
                - 
                HYPlim(`IntVar',0)
              #endif
            ) 
          -
          1/($pow+1)*sum_(HYPi,0,$pow,HYPnum(HYPn1)^(HYPi)*`IntVar'^($pow-HYPi))*HYPLx(?a)*HYPdx(`IntVar')
          ;
      endterm;
      id HYPLx = 1;
      #call HypSimplifyNumerics
*      print "IntHlogVarLetterPoly -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogVarLetterRatFun
#procedure HypIntHlogVarLetterRatFun(IntVar)
  if (count(HYPdx,1) > 0);
    if (
         (count(HYPdenx,1) == 0) && 
         (count(`IntVar',1) > 0) && 
         (match(HYPLx(HYPrat(?a),?b)) > 0)
       );
*      print "IntHlogVarLetterRatFun -> %t";
      term;
        $pow = count_(`IntVar',1);
        id `IntVar'^$pow*HYPLx(HYPrat(HYPn1?,HYPn2?),?a)*HYPdx(`IntVar') = 
          1/($pow+1)*
            (
              `IntVar'^($pow+1) 
              - 
              HYPnum(HYPn1)^($pow+1)*HYPden(HYPn2)^($pow+1)
            )*
            HYPLx(HYPrat(HYPn1,HYPn2),?a)*
            (
              HYPlim(`IntVar',HYPinf) 
              #if (`DoZeroLimit')
                - 
                HYPlim(`IntVar',0)
              #endif
            ) 
          -
          1/($pow+1)*sum_(HYPi,0,$pow,HYPnum(HYPn1)^(HYPi)*HYPden(HYPn2)^(HYPi)*`IntVar'^($pow-HYPi))*HYPLx(?a)*HYPdx(`IntVar')
          ;
      endterm;
      id HYPLx = 1;
      #call HypSimplifyNumerics
*      print "IntHlogVarLetterRatFun -> %t";
    endif;
  endif;
#endprocedure
*}}}
*
*{{{ HypIntHlogs
#procedure HypIntHlogs(IntVar)
  .sort:IntHlogs start;
* Sanity check on partial fractioning:
  if ((count(`IntVar',1) > 0) && (count(HYPdenx,1) > 0));
    print "Tower cancellation did not happen...";
    print "%t";
    print "IntHlogs";
    exit;
  endif;
* Extra loop is introduced to cover those cases when we have a mixed set of weights and
* we have to go back to the special case:
  #do i=1,1
    bracket HYPdx,HYPdenx,`IntVar',HYPLx;
    .sort:Bracketed in IntHlogs;
    keep brackets;
***********************************
* SPECIAL CASE WITH 0 AND RATFUN: *
***********************************
*    #message SPECIAL CASE WITH 0 AND RATFUN:
    #call HypIntHlogDenZeroLetterRatFun(`IntVar')
***************************************************
* LAST WEIGHT EQUALS DENOMINATOR LETTER FUNCTION: *
***************************************************
*    #message LAST WEIGHT EQUALS DENOMINATOR LETTER FUNCTION:
    #call HypIntHlogDenLetterSamePoly(`IntVar')
**********************************************************************
* LAST WEIGHT SAME AS DENOMINATOR LETTER, RATIONAL FUNCTION VARIANT: *
**********************************************************************
*    #message LAST WEIGHT SAME AS DENOMINATOR LETTER, RATIONAL FUNCTION VARIANT:
* This is the previous special case but this time we allow rational functions to appear as letters:
    #call HypIntHlogDenLetterSameRatFun(`IntVar')
***************************************************
* DENOMINATOR LETTER: RAT. FUN. LAST WEIGHT POLY: *
***************************************************
*    #message DENOMINATOR LETTER: RAT. FUN. LAST WEIGHT POLY:
    #call HypIntHlogDenRatFunLetterPoly(`IntVar')
***************************************************
* DENOMINATOR LETTER POLY LAST WEIGHT RAT. FUN.: *
***************************************************
*    #message DENOMINATOR LETTER POLY LAST WEIGHT RAT. FUN.:
    #call HypIntHlogDenPolyLetterRatFun(`IntVar')
*******************************************************
* DENOMINATOR LETTER RAT. FUN. LAST WEIGHT RAT. FUN.: *
*******************************************************
*    #message DENOMINATOR LETTER RAT. FUN. LAST WEIGHT RAT. FUN.:
    #call HypIntHlogDenRatFunLetterRatFun(`IntVar')
*************************************************
* DENOMINATOR LETTER POLY AND LAST WEIGHT POLY: *
*************************************************
*    #message DENOMINATOR LETTER POLY AND LAST WEIGHT POLY:
* Case when the denominator contains a different weight from the last weight
* of the hyperlog:
    #call HypIntHlogDenPolyLetterPoly(`IntVar')
**************************************************
* DENOMINATOR LETTER RAT. FUN. LAST WEIGHT ZERO: *
**************************************************
*    #message DENOMINATOR LETTER RAT. FUN. LAST WEIGHT ZERO:
* Case for a rational function letter in denominator but zero letter as the last in the hyperlog word:
    #call HypIntHlogDenRatFunLetterZero(`IntVar')
**********************************************************************
* NO DENOMINATOR, NO TOWERS OF VAR AND ZERO AS LAST LETTER IN WORD: *
*********************************************************************
*    #message NO DENOMINATOR, NO TOWERS OF VAR AND ZERO AS LAST LETTER IN WORD:
    #call HypIntHlogNoDenNoVarLetterZero(`IntVar')
**********************************************************************
* NO DENOMINATOR, NO TOWERS OF VAR AND NON-ZERO LAST LETTER IN WORD: *
**********************************************************************
*    #message NO DENOMINATOR, NO TOWERS OF VAR AND NON-ZERO LAST LETTER IN WORD:
    #call HypIntHlogNoDenNoVarLetterPoly(`IntVar')
*********************************************************************
* NO DENOMINATOR, NO TOWERS OF VAR AND RAT FUN LAST LETTER IN WORD: *
*********************************************************************
*    #message NO DENOMINATOR, NO TOWERS OF VAR AND RAT FUN LAST LETTER IN WORD:
    #call HypIntHlogNoDenNoVarLetterRatFun(`IntVar')
*************************************************
* TOWER OF VAR AND ZERO AS LAST LETTER IN WORD: *
*************************************************
*    #message TOWER OF VAR AND ZERO AS LAST LETTER IN WORD:
    #call HypIntHlogVarLetterZero(`IntVar')
**************************************************
* TOWER OF VAR AND NON-ZERO LAST LETTER IN WORD: *
**************************************************
*    #message TOWER OF VAR AND NON-ZERO LAST LETTER IN WORD:
    #call HypIntHlogVarLetterPoly(`IntVar')
***************************************************
* TOWER OF VAR AND RAT. FUN. LAST LETTER IN WORD: *
***************************************************
*    #message TOWER OF VAR AND RAT. FUN. LAST LETTER IN WORD:
    #call HypIntHlogVarLetterRatFun(`IntVar')
    #if 0
    #endif
***********************************
********** FINAL CHECKS: **********
***********************************
***********************************
* SPECIAL CASE WITH 0 AND RATFUN: *
***********************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) > 1) && 
        (match(HYPdenx(0)*HYPLx(HYPrat(HYPn1?,HYPn2?),?a)) > 0));
      redefine i "0";
    endif;
***************************************************
* LAST WEIGHT EQUALS DENOMINATOR LETTER FUNCTION: *
***************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) > 1) && 
        (match(HYPdenx(HYPn1?)*HYPLx(HYPn1?,?a)) > 0)) redefine i "0";
**********************************************************************
* LAST WEIGHT SAME AS DENOMINATOR LETTER, RATIONAL FUNCTION VARIANT: *
**********************************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) > 1) && 
        (match(HYPdenx(HYPn1?,HYPn2?)*HYPLx(HYPrat(HYPn1?,HYPn2?),?a)) > 0)) redefine i "0";
***************************************************
* DENOMINATOR LETTER: RAT. FUN. LAST WEIGHT POLY: *
***************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) > 1) && 
        (count(HYPLx,1) > 0) && 
        (match(HYPdenx(HYPn1?,HYPn2?)) > 0) && 
        (match(HYPLx(HYPrat(?a),?b)) == 0)) redefine i "0";
***************************************************
* DENOMINATOR LETTER POLY LAST WEIGHT RAT. FUN.: *
***************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) > 1) && 
        (count(HYPLx,1) > 0) && 
        (match(HYPdenx(HYPn1?,HYPn2?)) == 0) && 
        (match(HYPLx(HYPrat(?a),?b)) > 0)) redefine i "0";
*******************************************************
* DENOMINATOR LETTER RAT. FUN. LAST WEIGHT RAT. FUN.: *
*******************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) > 1) && 
        (
          (match(HYPdenx(HYPn1?!{HYPn3?},HYPn2?)*HYPLx(HYPrat(HYPn3?!{HYPn1?},HYPn4?),?a)) > 0) ||
          (match(HYPdenx(HYPn1?,HYPn2?!{HYPn4?})*HYPLx(HYPrat(HYPn3?,HYPn4?!{HYPn2?}),?a)) > 0)
        )
       ) redefine i "0";
*************************************************
* DENOMINATOR LETTER POLY AND LAST WEIGHT POLY: *
*************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) > 1) && 
        (match(HYPdenx(HYPn1?,HYPn2?)) == 0) &&
        (match(HYPLx(HYPrat(?a),?b)) == 0) &&
        (match(HYPdenx(HYPn1?!{HYPn2?})*HYPLx(HYPn2?!{HYPn1?},?a)) > 0)) redefine i "0";
**************************************************
* DENOMINATOR LETTER RAT. FUN. LAST WEIGHT ZERO: *
**************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) > 1) && 
        (match(HYPdenx(HYPn1?,HYPn2?)) > 0) &&
        (match(HYPLx(0,?b)) > 0)) redefine i "0";
**********************************************************************
* NO DENOMINATOR, NO TOWERS OF VAR AND ZERO AS LAST LETTER IN WORD: *
*********************************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1,`IntVar',1) == 0) && 
        (match(HYPLx(0,?a)) > 0)) redefine i "0";
**********************************************************************
* NO DENOMINATOR, NO TOWERS OF VAR AND NON-ZERO LAST LETTER IN WORD: *
**********************************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1,`IntVar',1) == 0) && 
        (match(HYPLx(HYPrat(?a),?b)) == 0) &&
        (match(HYPLx(HYPn1?!{0,},?a)) > 0)) redefine i "0";
*********************************************************************
* NO DENOMINATOR, NO TOWERS OF VAR AND RAT FUN LAST LETTER IN WORD: *
*********************************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1,`IntVar',1) == 0) && 
        (match(HYPLx(HYPrat(?a),?b)) > 0)) redefine i "0";
*************************************************
* TOWER OF VAR AND ZERO AS LAST LETTER IN WORD: *
*************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) == 0) && 
        (count(`IntVar',1) > 0) && 
        (match(HYPLx(0,?a)) > 0)) redefine i "0";
**************************************************
* TOWER OF VAR AND NON-ZERO LAST LETTER IN WORD: *
**************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) == 0) && 
        (count(`IntVar',1) > 0) && 
        (match(HYPLx(HYPrat(?a),?b)) == 0) &&
        (match(HYPLx(HYPn1?!{0,},?a)) > 0)) redefine i "0";
**************************************************
* TOWER OF VAR AND RAT. FUN. LAST LETTER IN WORD: *
**************************************************
    if ((count(HYPdx,1) > 0) && 
        (count(HYPdenx,1) == 0) && 
        (count(`IntVar',1) > 0) && 
        (match(HYPLx(HYPrat(?a),?b)) > 0)) redefine i "0";
***************
* END OF LOOP *
***************
    ModuleOption,local,$pow;
    .sort:End of main loop;
  #enddo
* The final integration is only possible if we have exactly one denominator:
  if (count(HYPdx,1) > 0);
    if ((count(HYPdenx,1) == 1) && (count(HYPLx,1) == 1));
      id HYPdenx(HYPn1?)*HYPLx(?a)*HYPdx(`IntVar') = 
        (
          HYPlim(`IntVar',HYPinf) 
          #if (`DoZeroLimit')
          - HYPlim(`IntVar',0)
          #endif
        )*HYPLx(HYPn1,?a);
      id HYPdenx(HYPn1?,HYPn2?)*HYPLx(?a)*HYPdx(`IntVar') = 
        (
          HYPlim(`IntVar',HYPinf) 
          #if (`DoZeroLimit')
          - HYPlim(`IntVar',0)
          #endif
        )*HYPLx(HYPrat(HYPn1,HYPn2),?a);
    endif;
  endif;
* Sanity check even at the very end:
  if ((count(HYPdx,1) > 0) && (count(HYPLx,1) > 0));
    print "Still have hyperlogs to integrate: ";
    print "%t";
    print "IntHlogs...";
    exit;
  endif;
  #if 0
  #endif
#endprocedure
*}}}
*
*{{{ HypIntRatFun
#procedure HypIntRatFun(Var)
* Sanity check on the structure:
  if ((match(HYPdenx(HYPn1?!{HYPn2?})*
             HYPdenx(HYPn2?!{HYPn1?})) > 0) ||
      (match(HYPdenx(HYPn1?,HYPn2?)*
             HYPdenx(HYPn3?)) > 0) ||
      (match(HYPdenx(HYPn1?!{HYPn3?},HYPn2?!{HYPn4?})*
             HYPdenx(HYPn3?!{HYPn1?},HYPn4?!{HYPn2?})) > 0));
    print "Term is not suitable for integration: ";
    print "%t";
    print "IntRatFun...";
    exit;
  endif;
* Dummy condition to only bother with suitable terms:
  if ((count(HYPdenx,1) > 0) && (count(HYPLx,1) == 0) && (count(HYPdx,1) > 0));
* Getting the exponent:
    $pow = count_(HYPdenx,1);
    if ($pow > 1);
      id HYPdenx(HYPn1?)^$pow*HYPdx(`Var') = 
        1/(-$pow+1)*HYPdenx(HYPn1)^($pow-1)*
        (
          HYPlim(`Var',HYPinf) 
          - 
          HYPlim(`Var',0)
        )
      ;
      id HYPdenx(HYPn1?,HYPn2?)^$pow*HYPdx(`Var') = 
        1/(-$pow+1)*HYPdenx(HYPn1,HYPn2)^($pow-1)*
        (
          HYPlim(`Var',HYPinf) 
          - 
          HYPlim(`Var',0)
          )
      ;
    else;
      id HYPdenx(0)*HYPdx(`Var') = 
        HYPLx(0)*
        (
          HYPlim(`Var',HYPinf) 
          #if (`DoZeroLimit')
            - 
            HYPlim(`Var',0)
          #endif
        )
      ;
      id HYPdenx(HYPn1?!{0,})*HYPdx(`Var') = 
        (0*HYPlog(-HYPn1) + HYPLx(HYPn1))*
        (
          HYPlim(`Var',HYPinf) 
          #if (`DoZeroLimit')
            - 
            HYPlim(`Var',0)
          #endif
        )
      ;
      id HYPdenx(HYPn1?,HYPn2?)*HYPdx(`Var') = 
        (0*HYPlog(-HYPn1) - 0*HYPlog(HYPn2) + HYPLx(HYPrat(HYPn1,HYPn2)))*
        (
          HYPlim(`Var',HYPinf) 
          #if (`DoZeroLimit')
            - 
            HYPlim(`Var',0)
          #endif
        )
      ;
    endif;
  endif;
  if (
      (count(HYPdenx,1) == 0) && 
      (count(HYPLx,1) == 0) && 
      (count(HYPdx,1) > 0)
     );
* Getting the exponent:
    $pow = count_(`Var',1);
    id `Var'^$pow*HYPdx(`Var') = 
      1/($pow+1)*`Var'^($pow+1)*
      (
        HYPlim(`Var',HYPinf) 
        - 
        HYPlim(`Var',0)
      )
    ;
  endif;
  ModuleOption,local,$pow;
  .sort:IntRatFun;
#endprocedure
*}}}
*
*{{{ HypApplyChenWu
* Trivially applies the Chen-Wu theorem on an `ExprID' expression
* substituting the ``IntVar''th integration variable by one:
* Note: this also works with numeric argument:
#procedure HypApplyChenWu(ExprID,IntVar)
  InExpression `ExprID';
    #ifdef ``IntVar''
      multiply replace_(HYPz``IntVar'', 1);
    #else
      multiply replace_(HYPz`IntVar', 1);
    #endif
  EndInExpression;
#endprocedure
*}}}
*
*{{{ HypSetInternalIntegrationSequence
#procedure HypSetInternalIntegrationSequence(?Sequence)
  #if ("`HYPIntegrationSequence'" == "")
    #define First "1"
    #do var={`?Sequence'}
      #if (`First' != 1)
        #redefine HYPIntegrationSequence "`HYPIntegrationSequence',"
      #else
        #redefine First "0"
      #endif
      #redefine HYPIntegrationSequence "`HYPIntegrationSequence'HYPz`var'"
    #enddo
  #endif
#endprocedure
*}}}
*
*{{{ HypIntegrationStep
#procedure HypIntegrationStep(ExprID,IntVarOrdNumber)
  .sort:IntegrationStep start;
  #define IntVar "HYPz`IntVarOrdNumber'"
* Storing all active expression names:
  #define ACTIVETMP "`activeexprnames_'"
  hide;
  .sort:hid everything;
  unhide `ExprID';
  .sort:Unhid `ExprID';
*
  #message Integrating `IntVar' in `ExprID';
*
  #call HypSimplify
* Disabling PolyRatFuns before LimitHlog conversion:
  .sort:HYPratep turned off;
  PolyRatFun;
  #call HypLimitsToHlogs(`ExprID',HYPLinfRegInfZero,`IntVar')
*
  PolyRatFun HYPratep;
  .sort:HYPratep back on;
*
  #call HypRevealVar(`IntVar')
  #call HypToHyperlog
  #call HypSimplify
*
  #if (`HYPcheckForZeroCoefficients')
    .sort
    PolyRatFun;
    #if ("`HYPIntegrationSequence'" == "")
      #call HypSetInternalIntegrationSequence(`IntegrationSequence')
    #endif
    #call HypCheckForZeroCoeffs(`ExprID',HYPLx,HYPtempCount,`IntVar',`HYPIntegrationSequence')
    .sort
    PolyRatFun HYPratep;
  #endif
*
  #call HypDecomposeWRTvar(`IntVar')
  #call HypSimplify
  multiply HYPdx(`IntVar');
  #call HypIntHlogs(`IntVar')
  #call HypIntRatFun(`IntVar')
  .sort
  #call HypDenSimplify(HYPnum,HYPden,HYPrat,HYPz,HYPn1,HYPn2)
  #call HypTakeLimitInf(`IntVar')
  #call HypTakeLimitZero(`IntVar')
  #call HypSimplify
  #call HypFromLimitHlogsToNumbers(`ExprID',HYPLinfRegInfZero,HYPLinf)
*
* Collecting divergent limits:
  shuffle HYPLlimZero;
*
  .sort:Hid `ExprID';
  hide `ExprID';
  .sort:Unhiding original exprs;
  unhide `ACTIVETMP';
  .sort:IntegrationStep fin;
  #if 0
  #endif
#endprocedure
*}}}
*
*{{{ HypSimpleIntegrate
#procedure HypSimpleIntegrate(DenFuncID,HlogFuncID,RatFuncID,UseTag,TagFuncID,RemoveTag,Sym1,Sym2)
* Simple integration routine for hyperlogs:
* In all active expressions
* In all terms
  if (
    #if (`UseTag')
      count(`TagFuncID',1) > 0
    #else
      1
    #endif
  );
    if ((count(`DenFuncID',1) > 1) || (count(`DenFuncID',1) == 0) || (count(`HlogFuncID',1) > 1));
      print "Ambiguos term for SimpleIntegrate...";
      print "Term: %t";
      exit "SimpleIntegrate";
    endif;
    if (count(`HlogFuncID',1) == 0);
      multiply `HlogFuncID';
    endif;
    id `DenFuncID'(`Sym1'?)*`HlogFuncID'(?a) = `HlogFuncID'(`Sym1',?a);
    also `DenFuncID'(`Sym1'?,`Sym2'?)*`HlogFuncID'(?a) = `HlogFuncID'(`RatFuncID'(`Sym1',`Sym2'),?a);
    #if (`RemoveTag')
      id `TagFuncID'(?a) = 1;
    #endif
  endif;
#endprocedure
*}}}
*
*{{{ HypIntegrateAtLevelSubstituteAbove
#procedure HypIntegrateAtLevelSubstituteAbove(ExprID,MinLevel,MaxLevel,IntegratedFuncID,LHSfuncID,DenFuncID,RatFuncID,AuxFuncID,IntMeasureID,Sym1,Sym2,?RHSfuncs)
  .sort:IntegrateAtLevelSubstituteAbove starts;
* Loop over levels starting at the lowest:
  #do level=`MinLevel',`MaxLevel'
    #if (`HYPdebug')
      #message INTEGRATION AT LEVEL `level';
    #endif
* don not skip the current level:
    skip;
    nskip `ExprID'`level';
    #call HypSimpleIntegrate(`DenFuncID',`IntegratedFuncID',`RatFuncID',1,`IntMeasureID',1,`Sym1',`Sym2')
* Substitutions above, only if we still have some levels:
    #if (`level' < `MaxLevel')
      #if (`HYPdebug')
        #message SUBSTITUTION TO <`ExprID'{`level'+1}>,...,<`ExprID'`MaxLevel'>;
      #endif
      #do RHSfunc={`?RHSfuncs'}
        #call HypSubstituteToExprsWithExtrasAndTable(`ExprID'`level',`LHSfuncID',`RHSfunc',`AuxFuncID',HYPsolutionTbl,<`ExprID'{`level'+1}>,...,<`ExprID'`MaxLevel'>)
      #enddo
      skip;
    #endif
    .sort:"Level `level' finished";
  #enddo
#endprocedure
*}}}
*
************************
* EXPRESSION CREATION: *
************************
*{{{ HypDissectExprWithArgNumber
#procedure HypDissectExprWithArgNumber(ExprID, DissectExprID, FuncID, TagFuncID, Sym1, MinArgNum, MaxArgNum, RemoveOriginal, HideTags)
  .sort:DissectExprWithArgNumber start;
  skip;
  nskip `ExprID';
********************************************************************************
* Including tag for number of arguments:
  id `FuncID'(?a) = `TagFuncID'(nargs_(?a))*`FuncID'(?a);
* Getting minimal and maximal tag numbers:
  #$mintag = 99;
  #$maxtag = 0;
  if (match(`TagFuncID'(`Sym1'?$tmp)) > 0);
    if ($mintag > $tmp) $mintag = $tmp;
    if ($maxtag < $tmp) $maxtag = $tmp;
  endif;
  ModuleOption,local,$tmp;
  ModuleOption,minimum,$mintag;
  ModuleOption,maximum,$maxtag;
  .sort:min/max tags collected;
  #redefine `MinArgNum' "`$mintag'"
  #redefine `MaxArgNum' "`$maxtag'"
  #if (`HYPdebug')
    #write "Minimum and maximum tags: %$ %$", $mintag, $maxtag;
  #endif
* Create spectator to hold current tags:
  CreateSpectator TagSpectator, "tag.spec";
  #do itag=``MinArgNum'', ``MaxArgNum''
    skip;
    nskip `ExprID';
    #if (`HYPdebug')
      #message Storing tags at level `itag';
    #endif
    if (match(`TagFuncID'(`itag')) > 0) ToSpectator TagSpectator;
    .sort:Tags at `itag' collected;
    skip;
    CopySpectator `DissectExprID'`itag' = TagSpectator;
* Drop tag functions in newly created expression:
    if (expression(`DissectExprID'`itag')) id `TagFuncID'(`Sym1'?) = 1;
    .sort:`DissectExprID'`itag' created;
    skip;
    EmptySpectator TagSpectator;
    .sort:Spectator emptied;
  #enddo
  skip;
  RemoveSpectator TagSpectator;
  .sort:Spectator removed;
  skip;
  #if (`RemoveOriginal')
    skip;
    drop `ExprID';
    .sort:`ExprID' got dropped;
  #endif
  #if (`HideTags')
    skip;
    hide <`DissectExprID'``MinArgNum''>,...,<`DissectExprID'``MaxArgNum''>;
    .sort:Dissected exprs are hidden;
  #endif
#endprocedure
*}}}
*
*{{{ HypMergeLevelExpressions
#procedure HypMergeLevelExpressions(ExprID,ToMergedExprID,MinLevel,MaxLevel,DeleteFlag)
  .sort:MergeLevelExpressions start;
*
  #do ilevel=`MinLevel',`MaxLevel'
    skip;
    #if (exists(`ToMergedExprID'`ilevel'))
      #if (exists(`ExprID'`ilevel'))
        local `ExprID'`ilevel' = `ExprID'`ilevel' + `ToMergedExprID'`ilevel';
        .sort:`ExprID'`ilevel' and `ToMergedExprID'`ilevel' merged;
        #if (`DeleteFlag')
          skip;
          drop `ToMergedExprID'`ilevel';
          .sort:`ToMergedExprID'`ilevel' dropped;
        #endif
      #endif
    #endif
  #enddo
#endprocedure
*}}}
*
************
* SHUFFLE: *
************
*{{{ HypShuffleNonNumericHlogs
#procedure HypShuffleNonNumericHlogs(FuncID,AuxFuncID,Sym,MoveBack)
  id `FuncID'(?a,`Sym'?!number_,?b) = `AuxFuncID'(?a,`Sym',?b);
  shuffle `AuxFuncID';
  #if (`MoveBack' == 1)
    multiply replace_(`AuxFuncID', `FuncID');
  #endif
  .sort:Non-num `FuncID's shuffled;
#endprocedure
*}}}
*
*{{{ HypShuffleToNonZeroEnd
#procedure HypShuffleToNonZeroEnd(FuncID)
* This routine takes hyperlogs with functionhead `FuncID' and 
* reshuffle them to have non-zero letter as the last letter:
*
  #do i=1,1
* Only bother with hyperlogs ending on zero:
    id,once `FuncID'(?a,0) = HYPaux(?a,0);
    id HYPaux(?a,0) = HYPaux(?a)*HYPaux1(0);
    #do j=1,1
      repeat id HYPaux(?a,0)*HYPaux1(?b) = HYPaux(?a)*HYPaux1(?b,0);
* If nothing remains in the original hyperlog we move it to the finished
* category:
      id HYPaux*HYPaux1(?a) = HYPaux2(?a);
* otherwise we get prepared for the shuffling:
      id HYPaux(?a)*HYPaux1(?b) = HYPaux2(?a)*HYPaux2(?b) - HYPaux1(?a)*HYPaux1(?b) + HYPaux1(?a,?b);
      shuffle HYPaux1;
      if (match(HYPaux1(?a,0)) > 0);
        redefine j "0";
        id HYPaux1(?a,0) = HYPaux(?a)*HYPaux1(0);
      endif;
      .sort
    #enddo
    multiply replace_(HYPaux1,HYPaux2);
    if (match(`FuncID'(?a,0)) > 0) redefine i "0";
    .sort
  #enddo
  multiply replace_(HYPaux2,`FuncID');
#endprocedure
*}}}
*
***********
* LIMITS: *
***********
*{{{ HypTakeLimitInf
#procedure HypTakeLimitInf(Var)
* This is the main routine to take limits at infinity:
*
* First we have to perform trivial variable simplifications:
* This essentially removes all HYPdenx dependent terms, what remain are hyperlogs
* without any variable dependence in denominator and possibly with a tower of 
* `Var' at the front:
  #call HypVarSimplify(`Var')
* Have to convert variable dependence from `Var' to 1/`Var'
  #call HypLimInfToLimZero(`Var')
#endprocedure
*}}}
*
*{{{ HypTakeLimitZero
#procedure HypTakeLimitZero(Var)
* First we have to perform trivial variable simplifications:
  #call HypVarSimplify(`Var')
* Changing the functionhead where applicable:
  if (match(HYPlim(`Var',0)) > 0);
    multiply replace_(HYPLx,HYPL0);
  endif;
* We shuffle regularize the remaining hyperlogs in terms needed to take 
* the zero limit:
  #call HypShuffleToNonZeroEnd(HYPL0)
* When the last index is a zero it signals for an all zero word function
* hyperlog, move it back to original namespace:
  id HYPL0(?a,0) = HYPLx(?a,0);
* This routine performs the expansion of the hyperlogs around zero:
  #call HypHyperExpand(`Var',HYPL0,HYPdenx,1)
  #call HypVarSimplify(`Var')
  #call HypSimplifyNumerics
  .sort
* At the end we remove the limit function if no further dependence happens:
  if (count(HYPLx,1,HYPdenx,1,HYPlogx,1,`Var',1) == 0);
    id HYPlim(`Var',0) = 1;
  elseif (match(HYPlim(`Var',0)) > 0);
    #if (`HYPDEBUG')
      print "Found zero limit...";
      print "%t";
      print "Mapping it away...";
    #endif
    multiply replace_(HYPLx,HYPLlimZero,HYPdenx,HYPinf);
*    id HYPLlimZero(?a) = HYPLlimZero(`Var',?a);
    id HYPlim(`Var',0) = 1;
*    print "Zero limit still here...";
*    print "%t";
*    exit "TakeLimitZero";
  endif;
  .sort
  #if 0
  if (match(HYPLlimZero(?a,HYPn1?!number_,?b)) > 0);
    print "Found survining zero-limit hyperlog with non-numeric argument...";
    print "%t";
    exit "TakeLimitZero";
  endif;
  #endif
#endprocedure
*}}}
*
********************
* FIBRATION BASIS: *
********************
*{{{ HypChangeFunctionHeadForVarDependentInstances
#procedure HypChangeFunctionHeadForVarDependentInstances(ExprID, FuncID, VarDepFuncID, RatFuncID, PolyFuncID, Sym1, Sym2)
* Changes those functionheads where the rational function arguments show 
* dependence on variable, in order to work properly we need to partition the
* polynomials to var dependent and independent pieces!
  if (expression(`ExprID'));
    id `FuncID'(?a,`RatFuncID'(`PolyFuncID'(`Sym1'?,?b,`Sym2'?!{0,},?c),`PolyFuncID'(?d)),?e) = 
      `VarDepFuncID'(?a,`RatFuncID'(`PolyFuncID'(`Sym1',?b,`Sym2',?c),`PolyFuncID'(?d)),?e);
    id `FuncID'(?a,`RatFuncID'(`PolyFuncID'(?b),`PolyFuncID'(`Sym1'?,?c,`Sym2'?!{0,},?d)),?e) = 
      `VarDepFuncID'(?a,`RatFuncID'(`PolyFuncID'(?b), `PolyFuncID'(`Sym1',?c,`Sym2',?d)),?e);
  endif;
#endprocedure
*}}}
*
*{{{ HypChangeFuncHeadForGivenWordLengthAndVarDependence
#procedure HypChangeFuncHeadForGivenWordLengthAndVarDependence(ExprID,FuncID,NewFuncID,AuxFuncID,RatFuncID,PolyFuncID,Sym1,Sym2,WordLength)
  if (expression(`ExprID'));
* Counting the number of arguments is cheap:
    id `FuncID'(?a) = `FuncID'(nargs_(?a), ?a);
* Whatever fits the length change the function head:
    id `FuncID'(`WordLength', ?a) = `AuxFuncID'(?a);
* For the rest the length is dropped:
    id `FuncID'(`Sym1'?number_, ?a) = `FuncID'(?a);
  endif;
  #call HypChangeFunctionHeadForVarDependentInstances(`ExprID', `AuxFuncID', `NewFuncID', `RatFuncID', `PolyFuncID', `Sym1', `Sym2')
* The rest should be moved back from the auxiliary function head to original:
  if (expression(`ExprID'));
    multiply replace_(`AuxFuncID', `FuncID');
  endif;
#endprocedure
*}}}
*
*{{{ HypDropSubLeadTermsRatFuncArg
#procedure HypDropSubLeadTermsRatFuncArg(FuncID,RatFuncID,PolyFuncID,n1,...,n2)
* Takes the zero limit of the rational function arguments such that it drops
* all subleading terms keeping only the leading contribution:
  argument `FuncID';
    argument `RatFuncID';
      repeat;
        id `PolyFuncID'(?a,`n1'?!{0,},`n2'?,?b) = `PolyFuncID'(?a,`n1');
      endrepeat;
    endargument;
  endargument;
#endprocedure
*}}}
*
*{{{ HypDetermineVarOrderRatFuncArgs
#procedure HypDetermineVarOrderRatFuncArgs(FuncID,RatFuncID,PolyFuncID)
* This routine takes all rational function arguments of `FuncID' and calculates
* the overall order of Var in each of these arguments, because terms are separated
* using their order in Var, this boils down to counting number of arguments:
  argument `FuncID';
    id `RatFuncID'(`PolyFuncID'(?a),`PolyFuncID'(?b)) = 
      `RatFuncID'(nargs_(?a) - nargs_(?b),`PolyFuncID'(?a),`PolyFuncID'(?b));
  endargument;
*
#endprocedure
*}}}
*
*{{{ HypTakeZeroLimitInLimitHlog
#procedure HypTakeZeroLimitInLimitHlog(ExprID,FuncID,RatFuncID,PolyFuncID,ConstRatFuncID,<Aux1FuncID>,...,<Aux3FuncID>,FinFuncID,n1,...,n3)
  .sort:TakeZeroLimitInLimitHlog start;
  skip;
  nskip `ExprID';
*
* Drop terms from letter rational functions being subleading:
  #call HypDropSubLeadTermsRatFuncArg(`FuncID',`RatFuncID',`PolyFuncID',`n1',...,`n2')
* Determining the order of Var in each survining dependent rational function argument:
  #call HypDetermineVarOrderRatFuncArgs(`FuncID',`RatFuncID',`PolyFuncID')
* Introduce constant rational functions where the order is zero indicating that the first non-vanishing
* term are at the same order both in the numerator and denominator:
  argument `FuncID';
    id `RatFuncID'(0,`PolyFuncID'(?a,`n1'?),`PolyFuncID'(?b,`n2'?)) = `ConstRatFuncID'(`n1',`n2');
  endargument;
* For all those functions where all the arguments were converted to constant rat funcs
* we change the header, we assume no further dependence:
  multiply replace_(`FuncID',`Aux1FuncID');
* Moving back all still dependent ones:
  id `Aux1FuncID'(?a,`RatFuncID'(?b),?c) = `FuncID'(?a,`RatFuncID'(?b),?c);
  multiply replace_(`Aux1FuncID',`FinFuncID');
* Change all functionhead to an auxiliary one:
  multiply replace_(`FuncID',`Aux1FuncID');
  .sort:Functionheads adjusted for shuffling;
  #define ShuffleLoopCount "0"
  #do iZero=1,1
    skip;
    nskip `ExprID';
    #redefine ShuffleLoopCount "{`ShuffleLoopCount'+1}"
    #if (`HYPdebug')
      #message "ShuffleLoopCount got incremented to `ShuffleLoopCount'"
    #endif
* Working on a single function at a time by changing functionhead for a single
* function:
    id,once `Aux1FuncID'(?a) = `Aux2FuncID'(?a);
* DEBUG got rid of the bracketing:
*    .sort:Bracketing to start shuffle;
*    skip;
*    nskip `ExprID';
*    bracket `Aux2FuncID';
*    .sort:Bracketed to shuffle;
*    keep brackets;
*    skip;
*    nskip `ExprID';
* Determine degree of the word:
    if (count(`Aux2FuncID',1) > 0);
      $varord = 99;
      argument `Aux2FuncID';
* First, determine minimum order for non-constant polynomials:
        if (match(`RatFuncID'(`n1'?$tmp,?a)) > 0);
          if ($tmp < $varord) $varord = $tmp;
        endif;
      endargument;
* If we have some variable dependence we also check constant, but non-zero
* polys whether we have some zero orders as well:
      argument `Aux2FuncID';
* Only change the degree to zero if we have at least one, non-zero constant
* polynomial:
        if (($varord < 99) && ($varord > 0));
          if (match(`ConstRatFuncID'(`n1'?!{0,},`n2'?)) > 0);
            $varord = 0;
          endif;
        endif;
      endargument;
* Putting the degree as the first argument but only if the degree changed
* otherwise we have a limit Hlog where there is no further Var dependence,
* hence it does not need any further attention:
      if ($varord < 99);
        id `Aux2FuncID'(?a) = `Aux2FuncID'($varord,?a);
      else;
        id `Aux2FuncID'(?a) = `FinFuncID'(?a);
      endif;
* If the last letter has the same degree we are done:
      id `Aux2FuncID'(`n1'?,?a,`RatFuncID'(`n1'?,?b)) = `Aux3FuncID'(`n1',?a,`RatFuncID'(`n1',?b));
      also `Aux2FuncID'(0,?a,`ConstRatFuncID'(`n1'?!{0,},`n2'?)) = `Aux3FuncID'(0,?a,`ConstRatFuncID'(`n1',`n2'));
* Whenever we only have zero constant polynomials beside the variable dependent letters we 
* also move the function to the final step, the limit being trivial:
      if (match(`Aux2FuncID'(0,?a,`ConstRatFuncID'(`n1'?!{0,},`n2'?),?b)) == 0);
        id `Aux2FuncID'(0,?a) = `Aux3FuncID'(0,?a);
      endif;
* We also change the functionhead to the one indicating rescaling is possible
* if the weight for the word is zero and we have a constant rational function as the last letter:
      id `Aux2FuncID'(0,?a,`ConstRatFuncID'(?b)) = `Aux3FuncID'(0,?a,`ConstRatFuncID'(?b));
* To do the shuffle rearrangement we have to collect all letters having higher degree than the
* minimal including zero rational function letters:
* We do not need to do anything if the last weight at most the same as the minimal:
      id `Aux2FuncID'(`n1'?!{`n2'?},?a,`RatFuncID'(`n2'?!{`n1'?},?b)) = 
        thetap_(`n2'-`n1')*`Aux2FuncID'(`n1',?a)*`Aux1FuncID'(`RatFuncID'(`n2',?b))
        +
        theta_(`n1'-`n2')*`Aux3FuncID'(`n1',?a,`RatFuncID'(`n2',?b))
      ;
      also `Aux2FuncID'(`n1'?neg_,?a,`RatFuncID'(`n1'?,?b),?c,`RatFuncID'(`n2'?!{`n1'?},?d),?e) = 
        `Aux2FuncID'(`n1',?a,`RatFuncID'(`n1',?b),?c)*`Aux1FuncID'(`RatFuncID'(`n2',?d),?e)
      ;
      also `Aux2FuncID'(`n1'?neg_,?a,`RatFuncID'(`n1'?,?b),?c,`ConstRatFuncID'(?d),?e) = 
        `Aux2FuncID'(`n1',?a,`RatFuncID'(`n1',?b),?c)*`Aux1FuncID'(`ConstRatFuncID'(?d),?e)
      ;
      repeat;
        if (
          (count(`Aux1FuncID',1) > 0)
        );
* Have to move z dependent letters if their weight is larger than the min. weight of the word:
          id `Aux2FuncID'(`n1'?!{`n2'?},?a,`RatFuncID'(`n2'?!{`n1'?},?b))*`Aux1FuncID'(?c) = 
            thetap_(`n2'-`n1')*`Aux2FuncID'(`n1',?a)*`Aux1FuncID'(`RatFuncID'(`n2',?b),?c)
            +
            theta_(`n1'-`n2')*`Aux2FuncID'(`n1',?a)*`Aux2FuncID'(`RatFuncID'(`n2',?b),?c)
          ;
* We always have to move zero letters, this is needed because due to limit operation
* this will introduce singularities at zero::
          also `Aux2FuncID'(`n1'?,?a,`ConstRatFuncID'(0, 1))*`Aux1FuncID'(?c) = 
            `Aux2FuncID'(`n1',?a)*`Aux1FuncID'(`ConstRatFuncID'(0, 1),?c)
          ;
* This is for negative weights:
          also `Aux2FuncID'(`n1'?neg_,?a,`RatFuncID'(`n1'?,?b),?c,`RatFuncID'(`n2'?!{`n1'?},?d))*`Aux1FuncID'(?f) = 
            `Aux2FuncID'(`n1',?a,`RatFuncID'(`n1',?b),?c)*`Aux1FuncID'(`RatFuncID'(`n2',?d),?f)
          ;
          also `Aux2FuncID'(`n1'?neg_,?a,`RatFuncID'(`n1'?,?b),?c,`ConstRatFuncID'(?d))*`Aux1FuncID'(?f) = 
            `Aux2FuncID'(`n1',?a,`RatFuncID'(`n1',?b),?c)*`Aux1FuncID'(`ConstRatFuncID'(?d),?f)
          ;
* all the other constant rational functions we can stop the collection of letters:
          also `Aux2FuncID'(`n1'?pos0_,?a,`ConstRatFuncID'(`n2'?!{0,},`n3'?))*`Aux1FuncID'(?c) = 
            `Aux1FuncID'(?a,`ConstRatFuncID'(`n2',`n3'))*`Aux1FuncID'(?c) -
            `Aux2FuncID'(?a,`ConstRatFuncID'(`n2',`n3'))*`Aux2FuncID'(?c) +
            `Aux1FuncID'(?a,`ConstRatFuncID'(`n2',`n3'),?c)
          ;
* We collected all less singular letters, we can rename the functionheads to start shuffling:
          also `Aux2FuncID'(`n1'?neg_,?a,`RatFuncID'(`n1'?neg_,?b))*`Aux1FuncID'(?c) = 
            `Aux1FuncID'(?a,`RatFuncID'(`n1',?b))*`Aux1FuncID'(?c) -
            `Aux2FuncID'(?a,`RatFuncID'(`n1',?b))*`Aux2FuncID'(?c) +
            `Aux1FuncID'(?a,`RatFuncID'(`n1',?b),?c)
          ;
          #if 0
          #endif
        endif;
      endrepeat;
      #if 0
      #endif
    endif;
* Move terms to spectator if no further dependence is present in them:
*    ModuleOption,local,$varord,$tmp;
*    .sort:Before bracketing `Aux2FuncID';
*    skip;
*    nskip `ExprID';
*    bracket `Aux2FuncID';
*    .sort:Bracketed `Aux2FuncID';
*    keep brackets;
*    skip;
*    nskip `ExprID';
    shuffle `Aux2FuncID';
* Change functionhead for newly created functions to possible further shuffling:
    multiply replace_(`Aux2FuncID',`Aux1FuncID');
    ModuleOption,local,$varord,$tmp;
    .sort:After shuffle;
    skip;
    nskip `ExprID';
    if (count(`Aux1FuncID',1) > 0) redefine iZero "0";
    #if (`HYPdebug')
      #if (`ShuffleLoopCount' > 10)
        if (count(`Aux1FuncID',1) > 0);
          print "ShuffleLoopCount is over 10, due to term: ";
          print "---> %t";
        endif;
      #endif
    #endif
    #if 0
    #endif
    .sort:ZeroShuffle loop;
  #enddo
  skip;
  nskip `ExprID';
  #if (`HYPdebug')
    #message "Shuffle loop finished after `ShuffleLoopCount' iterations"
  #endif
*****************
* SANITY CHECK: *
*****************
  if ((match(`Aux3FuncID'(`n1'?!{`n2'?},?a,`RatFuncID'(`n2'?!{`n1'?},?b)))) ||
      (match(`Aux3FuncID'(`n1'?{<0,},?a,`ConstRatFuncID'(?b)))) ||
      (match(`Aux3FuncID'(`n1'?{>0,},?a,`ConstRatFuncID'(?b),?b))));
    print "Argument of Linf was not regularized properly...";
    print "TERM: %t";
    exit "TakeZeroLimitInLimitHlog";
  endif;
* Starting rescaling:
* Working on one function at a time:
  repeat;
    id,once `Aux3FuncID'(`n1'?$deg,?a) = `Aux1FuncID'($deg,?a);
    if (count(`Aux1FuncID',1) > 0);
* For negative degree we simply kill all constant rational function arguments:
      if ($deg < 0);
        argument `Aux1FuncID';
          id `ConstRatFuncID'(?a) = `ConstRatFuncID'(0, 1);
        endargument;
      endif;
* Formally rescale all rational function arguments with -$deg:
      argument `Aux1FuncID';
        id `RatFuncID'(`n1'?,?a) = `RatFuncID'(`n1'-$deg,?a);
* Dropping all rational functions with positive resulting degree:
        id `RatFuncID'(`n1'?{>0,},?a) = `ConstRatFuncID'(0, 1);
* Rest becomes ordinary constant rational functions:
        id `RatFuncID'(0,`PolyFuncID'(?a,`n1'?),`PolyFuncID'(?b,`n2'?)) = `ConstRatFuncID'(`n1',`n2');;
      endargument;
      multiply replace_(`Aux1FuncID',`Aux2FuncID');
    endif;
  endrepeat;
  ModuleOption,local,$deg;
  .sort:Rescale over;
  skip;
  nskip `ExprID';
* Getting rid of auxiliary functions and degrees:
  id `Aux2FuncID'(`n1'?,?a) = `FinFuncID'(?a);
  #if 0
  #endif
*
  .sort:TakeZeroLimitInLimitHlog fin;
#endprocedure
*}}}
*
*{{{ HypPartingForLimitDiffs
#procedure HypPartingForLimitDiffs(ExprID,FuncID,DiffFuncID,UseFilter,FilterFuncID,AuxFuncID,Sym1,...,Sym4)
  .sort:PartingForLimitDiffs starts;
  skip;
  nskip `ExprID';
* Working only on ExprID for this module:
  if (
    #if (`UseFilter')
      count(`FilterFuncID',1) > 0
    #else
      1
    #endif
  );
* When constructing the sequence the last letter is special:
* it stands alone and receive a minus sign!
* The arguments of the DiffFuncID:
* 1st: ordinal number of argument to delete from word
* 2nd: first term in difference
* 3rd: second term in difference
    id `FuncID'(?args,`Sym1'?) = 
      -`DiffFuncID'(`Sym1')*`FuncID'(?args) 
      + sum_(`Sym2',1,nargs_(?args),
             (`DiffFuncID'(`Sym2'+1,`Sym2',`Sym2'+1) - `DiffFuncID'(`Sym2',`Sym2',`Sym2'+1))*`FuncID'(?args,`Sym1'))
    ;
  endif;
  .sort:Initial diff sum formed;
  skip;
  nskip `ExprID';
* Only in ExprID and only in terms having (possibly) a filter:
  if (
    #if (`UseFilter')
      count(`FilterFuncID',1) > 0
    #else
      1
    #endif
  );
    if (match(`DiffFuncID'(`Sym1'?$m,`Sym2'?$n,`Sym3'?$np1)) > 0);
      $mp1 = $m + 1;
* Include an auxiliary argument at the beginning:
      id `FuncID'(?a) = `FuncID'(`Sym4',?a);
* Swap first with the $m+1-th argument:
* Needed because of the new first element everything got shifted by one:
      transform,`FuncID',permute(1,$mp1);
      id `DiffFuncID'(`Sym1'?,`Sym2'?,?a)*`FuncID'(`Sym3'?,?b) = 
        `DiffFuncID'(`Sym1',`Sym2',?a,`Sym3')*`FuncID'(?b);
* The $m-th element is not needed anymore (only placeholder):
      transform,`FuncID',dropargs($m,$m);
* The $n-th element should be brought forward:
      transform,`FuncID',permute(1,$n);
      id `DiffFuncID'(`Sym1'?,`Sym1'?,`Sym2'?,`Sym3'?)*`FuncID'(`Sym4'?,?a) = 
         `DiffFuncID'(`Sym3',`Sym4')*`FuncID'(`Sym4',?a);
      id `DiffFuncID'(`Sym1'?,`Sym2'?,`Sym1'?,`Sym3'?)*`FuncID'(`Sym4'?,?a) = 
         `DiffFuncID'(`Sym4',`Sym3')*`FuncID'(`Sym4',?a);
* Moving back the $n-th element:
      transform,`FuncID',permute(1,$n);
    endif;
  endif;
  ModuleOption,local,$m,$mp1,$n,$np1;
  .sort:PartingForLimitDiffs fin;
#endprocedure
*}}}
*
*{{{ HypEliminateVarDepPolysForIndepFuncs
#procedure HypEliminateVarDepPolysForIndepFuncs(FuncID,RatFuncID,PolyFuncID,AuxFuncID,Sym1,Sym2)
  repeat;
    id `FuncID'(?a,`RatFuncID'(?b,`PolyFuncID'(`Sym1'?,?c,`Sym2'?!{0,},?d),?e),?f) = `AuxFuncID'(?a,`RatFuncID'(?b,`PolyFuncID'(`Sym1',?c,`Sym2',?d),?e),?f)
    ;
  endrepeat;
  argument `FuncID';
    argument `RatFuncID'; transform,`PolyFuncID',addargs(1,last);
    endargument;
  endargument;
  multiply replace_(`AuxFuncID', `FuncID');
#endprocedure
*}}}
*
*{{{ HypEliminateRatFuncArgsForNumericArgs
#procedure HypEliminateRatFuncArgsForNumericArgs(FuncID,RatFuncID,PolyFuncID,AuxFuncID,Sym1,Sym2)
* Move away functions with complicated poly arguments:
  id `FuncID'(?a,`RatFuncID'(?b,`PolyFuncID'(`Sym1'?,?c,`Sym2'?),?d),?e) =
    `AuxFuncID'(?a,`RatFuncID'(?b,`PolyFuncID'(`Sym1',?c,`Sym2'),?d),?e)
  ;
  id `FuncID'(?a,`RatFuncID'(?b,`PolyFuncID'(`Sym1'?!number_),?c),?d) =
    `AuxFuncID'(?a,`RatFuncID'(?b,`PolyFuncID'(`Sym1'),?c),?d)
  ;
  argument `FuncID';
    argument `RatFuncID';
      id `PolyFuncID'(`Sym1'?number_) = `Sym1';
    endargument;
    id `RatFuncID'(`Sym1'?number_,`Sym2'?number_) = `Sym1'/`Sym2';
  endargument;
  multiply replace_(`AuxFuncID',`FuncID');
#endprocedure
*}}}
*
*{{{ HypDiffLogDiffs
#procedure HypDiffLogDiffs(ExprID,DiffFuncID,RatFuncID,PolyFuncID,DenFuncID,Sym1,...,Sym4)
  .sort:DiffLogDiffs start;
*
  skip;
  nskip `ExprID';
* Notation: Sym1 + Sym2*`Var'
* We can have rational function or polynomial differences with varying complexities:
* 1st: single polynomial with linear dependence:
*      log(al + be*z):
  id `DiffFuncID'(`Sym1'?,`Sym2'?) = `DenFuncID'(-`Sym1',`Sym2');
* 2nd: rational function with linear dependence on z:
*      log( (al + be*z)/(ga + de*z) ):
  id `DiffFuncID'(`Sym1'?,`Sym2'?,`Sym3'?,`Sym4'?) = `DenFuncID'(-`Sym1',`Sym2') 
                                                   - `DenFuncID'(-`Sym3',`Sym4')
  ;
*
#endprocedure
*}}}
*
*{{{ HypDifferentiateHlogsAtLevel
#procedure HypDifferentiateHlogsAtLevel(ExprID,FuncID,RatFuncID,PolyFuncID,Var,Level,UseFilter,FilterFuncID,IsolateForZeroLimit,ZeroLimitFuncID,ConstFuncID)
* Changing functionhead with var dependence and with correct arg length:
  #call HypChangeFuncHeadForGivenWordLengthAndVarDependence(`ExprID',`FuncID',HYPtoDiff,HYPaux,`RatFuncID',`PolyFuncID',HYPn1,HYPn2,`Level')
* Before parting the word we check whether we need to provide an extra term for the zero limit as well:
  #if (`IsolateForZeroLimit')
    id HYPtoDiff(?a) = HYPtoDiff(?a) + `ZeroLimitFuncID'(?a);
**********************************************************************
* ZERO LIMIT OPERATION BEFORE PROLIFERATION OF TERMS DUE TO DIFFING: *
**********************************************************************
    #if (`FibrationBasisZeroLimitBeforeDiff')
* NOTE: when zero limit is taken the affected functionhead is changed to:
* HYPLconst to make it easier to perform the ToNumbers operation:
      #call HypTakeZeroLimitInLimitHlog(`ExprID',`ZeroLimitFuncID',`RatFuncID',`PolyFuncID',HYPcrat,HYPaux1,...,HYPaux3,HYPLconst,HYPn1,...,HYPn3)
      #call HypSimplifyRatFuncsTrivial(HYPLconst,HYPcrat,HYPcrat,HYPpoly,HYPn1,HYPn2)
      #call HypSimplifyRatFuncArguments(`ExprID',HYPLconst, HYPcrat, HYPaux, HYPdiv1, HYPdiv2, HYPgcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
      #call HypFromLimitHlogsToNumbers(`ExprID',HYPLconst,HYPLinf)
      skip;
      nskip `ExprID';
      multiply replace_(HYPLconst,`ConstFuncID');
      argument `ConstFuncID';
        multiply replace_(HYPcrat,`RatFuncID');
      endargument;
    #endif
  #endif
* Performing the partitioning related to letter differentiation:
  #call HypPartingForLimitDiffs(`ExprID',HYPtoDiff,HYPdiff,`UseFilter',`FilterFuncID',HYPaux,HYPn1,...,HYPn4)
  skip;
  nskip `ExprID';
  multiply replace_(HYPtoDiff, `FuncID');
  id `FuncID' = 1;
*
* General routine to perform some simplifications on the difference functions
* we need to differentiate:
  #call HypSimplifyGeneralDiffLogDiffFuncs(`ExprID',HYPdiff,`RatFuncID',`PolyFuncID',HYPn1,...,HYPn8)
*
* Simplify the rational function we need to differentiate:
  #call HypSimplifyDiffLogDiffFuncs(`ExprID',HYPdiff,`RatFuncID',`PolyFuncID',HYPaux1,...,HYPaux4,`Var',HYPn1,...,HYPn10)
  #call HypDiffLogDiffs(`ExprID',HYPdiff,dum_,dum_,HYPdenx,HYPn1,...,HYPn4)
* Further simplify the resulting denominator structure:
  #call HypSimplifyVarDepDens(`ExprID',HYPdenx,HYPdenx,HYPn1,...,HYPn3)
******************************************************
* ATTEMPT TO CONVERT TO NUMBERS REMAINING HYPERLOGS: *
******************************************************
  #if (`IsolateForZeroLimit')
    #if (`FibrationBasisZeroLimitBeforeDiff')
      #call HypEliminateVarDepPolysForIndepFuncs(`FuncID',`RatFuncID',`PolyFuncID',HYPaux,HYPn1,HYPn2)
      #call HypEliminateRatFuncArgsForNumericArgs(`FuncID',`RatFuncID',`PolyFuncID',HYPaux,HYPn1,HYPn2)
      #call HypFromLimitHlogsToNumbers(`ExprID',`FuncID',HYPLinf)
    #endif
  #endif
  #if 0
  #endif
#endprocedure
*}}}
*
*{{{ HypIsolateAndDissectVarDepFunctions
#procedure HypIsolateAndDissectVarDepFunctions(ExprID,NewExprID,FuncID,AuxFuncID,RatFuncID,PolyFuncID,Var,Sym1,Sym2,MinArgLength,MaxArgLength)
* Creating separate expression to hold the limits as separate terms:
*  #call CreateFunctionExpr(`ExprID', `NewExprID', `FuncID', `AuxFuncID')
  #call HypCreateFunctionExpressionWithExtras(`NewExprID',`FuncID',0,`ExprID')
  skip;
  nskip `NewExprID';
* Wrap non-wrapped arguments to standard ratfunc:
  #call HypArgsToRatFunc(`NewExprID', `FuncID', `RatFuncID', `AuxFuncID', `Sym1')
* Dropping new terms independent of `Var':
  #call HypDropIndepTerms(`NewExprID', `FuncID', `RatFuncID', `Var', HYPSol, 1, `PolyFuncID', `Sym1', `Sym2')
  skip;
  nskip `NewExprID';
* It can happen that we have the same function but supplied in two different
* forms, have to get rid of the factors:
  dropcoefficient;
* Separating needed solutions using word length:
  #call HypDissectExprWithArgNumber(`NewExprID', `NewExprID', `FuncID', `AuxFuncID', `Sym1',`MinArgLength',`MaxArgLength',1,0)
  #if (`HYPdebug')
    #message Minimum arg length is ``MinArgLength'';
    #message Maximum arg length is ``MaxArgLength'';
  #endif
#endprocedure
*}}}
*
*{{{ HypCollectHlogsForFibrationBasis
#procedure HypCollectHlogsForFibrationBasis(ExprID,SolutionExprID,FuncID,Var,MinArgLength,MaxArgLength)
  .sort:CollectHlogsForFibrationBasis start;
*
  #call HypIsolateAndDissectVarDepFunctionsThruExtra(`SolutionExprID',`FuncID',HYPmatch,HYPrat,HYPpoly,`Var',HYPn,1,`HYPMAXMATCH',`MinArgLength',`MaxArgLength',`ExprID')
* Loop over created levels:
  #do iLevel=``MinArgLength'',``MaxArgLength''
* Convert rational functions to the full format:
    #call HypCreateRatFuncArgsInVar(`SolutionExprID'`iLevel',`FuncID',0,,HYPrat,HYPpoly,`Var',HYPaux1,HYPn1,HYPn2)
  #enddo
  .sort:Created detailed ratfunc args;
* Including solution function en-mass:
  #if (``MaxArgLength'' > 0)
    skip;
    nskip <`SolutionExprID'``MinArgLength''>,...,<`SolutionExprID'``MaxArgLength''>;
    id `FuncID'(?a) = `FuncID'(?a)*HYPsol(?a);
  #endif
*
  .sort:CollectHlogsForFibrationBasis fin;
#endprocedure
*}}}
*
*{{{ HypRegularizeAndDifferentiateForFibrationBases
#procedure HypRegularizeAndDifferentiateForFibrationBases(SolutionExprID,FuncID,Var,MinWordLen,MaxWordLen)
  .sort:RegularizeAndDifferentiateForFibrationBases start;
*
* Separate loop to create levels not present:
  #do iLevel=``MaxWordLen'',1,-1
* If a level is not present we create it:
    #if (exists(`SolutionExprID'`iLevel') == 0)
      local `SolutionExprID'`iLevel' = 0;
      .sort:`SolutionExprID'`iLevel' missing, created;
    #endif
  #enddo
* Loop over all levels starting the top-most one:
  #do iLevel=``MaxWordLen'',1,-1
* We do not have a solution function present in term it is just produced 
* thru the Merge mechanism, this should be an auxiliary solution, include that tag:
    skip;
    nskip `SolutionExprID'`iLevel';
    if (count(HYPsol, 1) == 0) id `FuncID'(?a) = `FuncID'(?a)*HYPauxSol(?a);
    .sort:New solutions labeled with HYPauxSol;
* This is needed to avoid calculating the same hlog two times this can happen
* if we provided the hlog from the original expression and due to differentiation
* we also need it in an intermediate step:
    skip;
    nskip `SolutionExprID'`iLevel';
    abracket HYPsol,HYPauxSol;
    .sort:Bracketed HYPsol,HYPauxSol;
    skip;
    nskip `SolutionExprID'`iLevel';
    collect HYPacc;
    splitarg HYPacc;
    id HYPacc(?a,HYPsol(?b),?c) = HYPsol(?b);
    id HYPacc(HYPn1?) = HYPn1;
    if (count(HYPacc,1) > 0);
      print "Weird HYPacc presence: %t";
      print "RegularizeAndDifferentiateForFibrationBases";
      exit;
    endif;
    .sort:Duplicate solutions dropped;
* 
    #call HypShuffleRegularizeAtZero(`SolutionExprID'`iLevel',`FuncID',HYPrat,HYPpoly,1,HYPsol,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
    .sort:Shuffled to reg at zero;
    skip;
    nskip `SolutionExprID'`iLevel';
    #call HypDifferentiateHlogsAtLevel(`SolutionExprID'`iLevel',`FuncID',HYPrat,HYPpoly,`Var',`iLevel',0,,1,HYPLzero,HYPLconstZeroLimit)
    .sort:Diff at level `iLevel' done;
    #define MinRemnantWordLength ""
    #define MaxRemnantWordLength ""
* Isolate newly created lower level, variable dependent limit functions:
    #call HypIsolateAndDissectVarDepFunctions(`SolutionExprID'`iLevel',`SolutionExprID'TMP`iLevel',`FuncID',HYPaux,HYPrat,HYPpoly,`Var',HYPn1,HYPn2,MinRemnantWordLength,MaxRemnantWordLength)
* Merge with already created ones:
    #call HypMergeLevelExpressions(`SolutionExprID',`SolutionExprID'TMP`iLevel',1,{`iLevel'-1},1)
  #enddo
*
  .sort:RegularizeAndDifferentiateForFibrationBases fin;
#endprocedure
*}}}
*
*{{{ HypDetermineZeroLimitsForFibrationBasis
#procedure HypDetermineZeroLimitsForFibrationBasis(SolutionExprID,FuncID,Var,MinWordLen,MaxWordLen)
  .sort:DetermineZeroLimitsForFibrationBasis start;
*
* Dissecting zero limit functions depending on number of arguments, i.e. word length:
  #define MinZeroLimitWordLength ""
  #define MaxZeroLimitWordLength ""
  #call HypIsolateAndDissectVarDepFunctionsThruExtra(IntVar`CURRENTINTVAR'ZeroLimit,HYPLzero,HYPmatch,HYPrat,HYPpoly,`Var',HYPn,1,`MaxWordLen',MinZeroLimitWordLength,MaxZeroLimitWordLength,<`SolutionExprID'`MinWordLen'>,...,<`SolutionExprID'`MaxWordLen'>)
  skip;
  nskip <IntVar`CURRENTINTVAR'ZeroLimit`MinZeroLimitWordLength'>,...,<IntVar`CURRENTINTVAR'ZeroLimit`MaxZeroLimitWordLength'>;
* Dropping accidental coefficients and include a solution function with original argument to 
* be able to substitute back:
  dropcoefficient;
* Introduce a function holding the original arguments:
* Note that if we also perform conversion to numbers we include a zero 
* term in a non-trivial way. This is needed when number conversion knocks
* all terms, hence hampering back-substitution:
  #if (`ToNumberInFibrationBasisZeroLimit')
    id HYPLzero(?a) = 
      (
        HYPLzero(?a)
        +
        HYPzero
      )*HYPsol(?a)
    ;
  #else
    id HYPLzero(?a) = HYPLzero(?a)*HYPsol(?a);
  #endif
  .sort:Solution functs introduced;
* Loop over levels and perform zero limit from level to level:
  #do iLevel=`MinZeroLimitWordLength',`MaxZeroLimitWordLength'
    skip;
    nskip IntVar`CURRENTINTVAR'ZeroLimit`iLevel';
    #call HypTakeZeroLimitInLimitHlog(IntVar`CURRENTINTVAR'ZeroLimit`iLevel',HYPLzero,HYPrat,HYPpoly,HYPcrat,HYPaux1,...,HYPaux3,`FuncID',HYPn1,...,HYPn3)
  #enddo
  .sort:Taking zero limit is over;
  skip;
  nskip <IntVar`CURRENTINTVAR'ZeroLimit`MinZeroLimitWordLength'>,...,<IntVar`CURRENTINTVAR'ZeroLimit`MaxZeroLimitWordLength'>;
  #call HypSimplifyRatFuncsTrivial(`FuncID',HYPcrat,HYPcrat,HYPpoly,HYPn1,HYPn2)
* Perform non-trivial simplifications on the limit functions before substitution:
  #do ilevel=`MinZeroLimitWordLength',`MaxZeroLimitWordLength'
    #call HypSimplifyRatFuncArguments(IntVar`CURRENTINTVAR'ZeroLimit`ilevel', `FuncID', HYPcrat, HYPaux, HYPdiv1, HYPdiv2, HYPgcd, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
    #if (`ToNumberInFibrationBasisZeroLimit')
      #call HypFromLimitHlogsToNumbers(IntVar`CURRENTINTVAR'ZeroLimit`ilevel',`FuncID',HYPLinf)
    #endif
  #enddo
  skip;
  nskip <IntVar`CURRENTINTVAR'ZeroLimit`MinZeroLimitWordLength'>,...,<IntVar`CURRENTINTVAR'ZeroLimit`MaxZeroLimitWordLength'>;
* Change the constant rational function head back to the usual HYPrat one:
  multiply replace_(HYPcrat, HYPrat);
  .sort:Simplifications of zero limit over;
* Substitute back to original place:
  #do iLevel=`MinZeroLimitWordLength',`MaxZeroLimitWordLength'
    skip;
    #call HypSubstituteToExprsWithExtrasAndTable(IntVar`CURRENTINTVAR'ZeroLimit`iLevel',HYPLzero,HYPsol,HYPaux,HYPsolutionTbl,<`SolutionExprID'`iLevel'>,...,<`SolutionExprID'`MaxWordLen'>)
    #if (`ToNumberInFibrationBasisZeroLimit')
      skip;
      nskip <`SolutionExprID'`iLevel'>,...,<`SolutionExprID'`MaxWordLen'>;
*
      id HYPzero = 0;
    #endif
    .sort:level `iLevel' finished;
    skip;
    drop IntVar`CURRENTINTVAR'ZeroLimit`iLevel';
    .sort:ZeroLimit`iLevel' dropped;
  #enddo
*
  .sort:DetermineZeroLimitsForFibrationBasis fin;
#endprocedure
*}}}
*
*{{{ HypLimitsToHlogs
#procedure HypLimitsToHlogs(ExprID,FuncID,Var)
  .sort:LimitsToHlogsDev start;
* Keeping track of the current integration step:
  #redefine CURRENTINTVAR "{`CURRENTINTVAR'+1}"
*********************************
* SIMPLIFY ORIGINAL EXPRESSION: *
*********************************
*  #message SIMPLIFY ORIGINAL EXPRESSION;
  #call HypSimplifyRatFuncArguments(`ExprID', `FuncID', HYPrat, HYPaux1, HYPaux2, HYPaux3, HYPaux4, HYPsimpTbl, HYPn1, HYPn2, HYPn3)
  .sort:LimitsToHlogsDev fin;
*
******************************************
* COLLECT FUNCTIONS TO CHANGE THE BASIS: *
******************************************
*  #message COLLECT FUNCTIONS TO CHANGE THE BASIS;
  #define MinWordLength ""
  #define MaxWordLength ""
  #call HypCollectHlogsForFibrationBasis(`ExprID',IntVar`CURRENTINTVAR'Sols,`FuncID',`Var',MinWordLength,MaxWordLength)
*****************************
* HIDE ORIGINAL EXPRESSION: *
*****************************
  hide `ExprID';
  .sort:Original `ExprID' hidden;
**************************************
* DIFFERENTIATE WITH REGULARIZATION: *
**************************************
*  #message DIFFERENTIATE WITH REGULARIZATION;
  #call HypRegularizeAndDifferentiateForFibrationBases(IntVar`CURRENTINTVAR'Sols,`FuncID',`Var',MinWordLength,MaxWordLength)
********************************
* INCLUDE INTEGRATION MEASURE: *
********************************
*  #message INCLUDE INTEGRATION MEASURE;
  #call HypIncludeTagInExprsWhenFunctionPresent(HYPdx,HYPdenx,<IntVar`CURRENTINTVAR'Sols1>,...,<IntVar`CURRENTINTVAR'Sols`MaxWordLength'>)
**************
* INTEGRATE: *
**************
*  #message INTEGRATE;
  #call HypIntegrateAtLevelSubstituteAbove(IntVar`CURRENTINTVAR'Sols,1,`MaxWordLength',HYPLx,`FuncID',HYPdenx,HYPrat,HYPaux,HYPdx,HYPn1,HYPn2,HYPsol,HYPauxSol)
**************************************************
* DROP LEVELS NOT NEEDED IN ORIGINAL EXPRESSION: *
**************************************************
*  #message DROP LEVELS NOT NEEDED IN ORIGINAL EXPRESSION;
  #if ((`MaxWordLength' > 0) && (`MinWordLength' > 1))
      drop <IntVar`CURRENTINTVAR'Sols1>,...,<IntVar`CURRENTINTVAR'Sols{`MinWordLength'-1}>;
      .sort: <IntVar`CURRENTINTVAR'Sols1>,...,<IntVar`CURRENTINTVAR'Sols{`MinWordLength'-1}> dropped;
  #endif
*****************************
* DROP AUXILIARY SOLUTIONS: *
*****************************
*  #message DROP AUXILIARY SOLUTIONS;
  #if (`MaxWordLength' > 0)
    .sort
    skip;
    nskip <IntVar`CURRENTINTVAR'Sols`MinWordLength'>,...,<IntVar`CURRENTINTVAR'Sols`MaxWordLength'>;
    if (count(HYPauxSol,1) > 0) discard;
    .sort auxiliary sols are purged;
  #endif
******************************************
* GETTING RID OF DETAILED RAT FUNCTIONS: *
******************************************
*  #message GETTING RID OF DETAILED RAT FUNCTIONS;
  .sort:Convert detailed rat funcs;
  skip;
  #do func={HYPsol,HYPLx,`FuncID'}
    #if (`HYPdebug')
      #message Converting back `func';
    #endif
    #call HypConvertDetailedRatFuncs(`func',HYPrat,HYPpoly,`Var',HYPn1,HYPn2,HYPn3,<IntVar`CURRENTINTVAR'Sols`MinWordLength'>,...,<IntVar`CURRENTINTVAR'Sols`MaxWordLength'>)
  #enddo
***************************************************
* DETERMINE ZERO LIMIT VERSIONS OF THE HYPERLOGS: *
***************************************************
  #if (`FibrationBasisZeroLimitBeforeDiff' == 0)
    #call HypDetermineZeroLimitsForFibrationBasis(IntVar`CURRENTINTVAR'Sols,`FuncID',`Var',`MinWordLength',`MaxWordLength')
    .sort:Zero limits substituted;
  #else
* This is needed because of the place-holder functionhead applied to zero-limit hyperlogs
* to avoid re-conversion and re-evaluation:
    InExpression <IntVar`CURRENTINTVAR'Sols`MinWordLength'>,...,<IntVar`CURRENTINTVAR'Sols`MaxWordLength'>;
      multiply replace_(HYPLconstZeroLimit,`FuncID');
    EndInExpression;
    .sort:Before substitution;
  #endif
**********************************************
* FINAL SUBSTITUTION TO ORIGINAL EXPRESSION: *
**********************************************
*  #message SUBSTITUTING BACK;
  unhide `ExprID';
  .sort:`ExprID' unhidden;
  #do iLevel=`MinWordLength',`MaxWordLength'
    #if (`HYPdebug')
      #message SUBSTITUTION AT LEVEL `iLevel';
    #endif
    #call HypSubstituteToExprsWithExtrasAndTable(IntVar`CURRENTINTVAR'Sols`iLevel',`FuncID',HYPsol,HYPaux,HYPsolutionTbl,`ExprID')
  #enddo
  .sort:Substs done;
  drop <IntVar`CURRENTINTVAR'Sols`MinWordLength'>,...,<IntVar`CURRENTINTVAR'Sols`MaxWordLength'>;
  #if 0
  #endif
  .sort:Sols purged;
#endprocedure
*}}}
*
****************
* CONVERSIONS: *
****************
*{{{ HypDissectArg
#procedure HypDissectArg(FuncID,Func1ID,Func2ID)
* This routine takes a functionhead and dissects its argument in
* all possible ways which keeps the relative ordering of the arguments
*
* First we introduce a separator:
  id `FuncID'(?a) = `FuncID'(?a,HYPsep);
* Loop to perform all slicings:
  #do i=1,1
    id `FuncID'(?a,HYPn1?,HYPsep,?b) = `FuncID'(?a,HYPsep,HYPn1,?b) +
      `Func1ID'(?a,HYPn1)*`Func2ID'(?b);
    id `FuncID'(HYPsep,?a) = `Func1ID'*`Func2ID'(?a);
    if (match(`FuncID'(?a,HYPsep,?b)) > 0) redefine i "0";
    .sort:DissectArg;
  #enddo
#endprocedure
*}}}
*
*{{{ HypRevealVarFromArg
#procedure HypRevealVarFromArg(FuncID, AuxFuncID, Var)
  .sort:RevealVarFromArg starts;
* Bracket with `FuncID' to focus on important part:
  bracket `FuncID';
  .sort:Bracketed `FuncID';
  keep brackets;
* Breaking all parts depending on `Var':
  splitarg((`Var')),`FuncID';
* If `Var' stands alone we are done:
  id `FuncID'(`Var') = `Var';
* Otherwise we collect all arguments but the first one (independent content!):
  transform,`FuncID',addargs(2,last);
  repeat;
    id,once `FuncID'(HYPn1?, HYPn2?) = `FuncID'(HYPn1)
                               + `AuxFuncID'(HYPn2/`Var')*`Var';
      repeat;
        if (count(`AuxFuncID',1) > 0);
          id `AuxFuncID'(HYPn1?) = `FuncID'(rem_(HYPn1,`Var'))
                              + `AuxFuncID'(div_(HYPn1,`Var'))*`Var';
        endif;
* Dropping terms where argument is zero (vanishing contribution):
        id `FuncID'?{`FuncID', `AuxFuncID'}(0) = 0;
      endrepeat;
    endrepeat;
  .sort:RevealVarFromArg fin;
#endprocedure
*}}}
*
*{{{ HypRevealVarDenominator
#procedure HypRevealVarDenominator(Var)
* Reveals `Var' dependence in denominators:
* 1/(a + b*`Var') = 1/b*(`Var' - (-a/b)) = HYPden(b)*HYPdenx(-a, b);
* This routine reveals dependence on `Var' in denominators.
* NOTE: this routine does NOT introduce any numerator function
*
* Starting with the special case:
  id HYPden(`Var') = HYPdenx(0);
* Splitting with respect to `Var':
  splitarg((`Var')),HYPden;
* Independent denominators drop their second argument:
  id HYPden(HYPn1?,0) = HYPden(HYPn1);
  transform,HYPden,addargs(2,last);
* Assume linearity in `Var' hence we simply divide by it to remove from the
* second argument:
  argument HYPden,2;
    multiply 1/`Var';
  endargument;
* If the second argument is just a number we factor it completely:
  id HYPden(HYPn1?,HYPn2?number_) = 1/HYPn2*HYPdenx(-HYPn1/HYPn2);
* In all the other cases we introduce a second argument for the denx function
* representing the denominator of the weight in the denominator:
  repeat;
    id,once HYPden(HYPn1?,HYPn2?) = HYPden(HYPn2)*HYPaux(-HYPn1,HYPn2);
    id HYPaux(HYPn1?,HYPn2?) = HYPaux(gcd_(HYPn1,HYPn2),HYPn1,HYPn2);
    id HYPaux(1,HYPn1?,HYPn2?) = HYPdenx(HYPn1,HYPn2);
    id HYPaux(HYPn3?,HYPn1?,HYPn2?) = HYPdenx(div_(HYPn1,HYPn3),div_(HYPn2,HYPn3));
  endrepeat;
* If ending up with any trivial simplifications we do it here:
  id HYPdenx(HYPn1?,HYPn2?number_) = HYPdenx(HYPn1/HYPn2);
#endprocedure
*}}}
*
*{{{ HypRevealVarLog
#procedure HypRevealVarLog(Var)
* This massages the argument of logs whenever they have dependence on `Var':
* log(a + b*`Var') = log(a) + log(1 - `Var'/(-a/b)) = HYPlog(a) + HYPlogx(-a,b)
* Changes logs into var-dependent logs if the argument contains `Var' and
* also massages the argument. Assumes linear dependence in `Var':
* Starting with trivial logs:
  id HYPlog(`Var') = HYPlogx(0);
  splitarg((`Var')),HYPlog;
  transform,HYPlog,addargs(2,last);
* Note that if the first argument is zero and the second is nonzero we have a special
* product form:
  id HYPlog(0,HYPn2?!{0,}) = HYPaux(HYPn2);
* Factorization:
  factarg HYPaux;
  repeat id HYPaux(?a,`Var',?b) = HYPaux(?a,?b) + HYPlogx(0);
  transform,HYPaux,mulargs(1,last);
  multiply replace_(HYPaux,HYPlog);
* We assume linearity in `Var' hence we get rid of it in second argument:
  id HYPlog(HYPn1?,HYPn2?!{0,}) = HYPlog(HYPn1) + HYPlogx(-HYPn1,HYPn2/`Var');
* When there is no `Var' dependence get rid of second argument:
  id HYPlog(HYPn1?,0) = HYPlog(HYPn1);
* Trivial simplification:
  id HYPlogx(HYPn1?,HYPn2?number_) = HYPlogx(HYPn1/HYPn2);
#endprocedure
*}}}
*
*{{{ HypRevealVar
#procedure HypRevealVar(Var)
* This routine reveals dependence on a specific variable and
* accordingly changes functionheads to show this dependence
*
********************
* POWER FUNCTIONS: *
********************
  id HYPpow(`Var',HYPn1?{>0}) = `Var'^HYPn1;
  id HYPpow(`Var',HYPn1?{<0}) = HYPdenx(0)^(-HYPn1);
***************
* NUMERATORS: *
***************
  #call HypRevealVarFromArg(HYPnum, HYPaux, `Var')
*****************
* DENOMINATORS: *
*****************
  #call HypRevealVarDenominator(`Var')
***************
* LOGARITHMS: *
***************
  #call HypRevealVarLog(`Var')
**************
* HYPERLOGS: *
**************
  id HYPL(HYPw(?a),`Var') = HYPLx(?a);
  #if 0
  #endif
#endprocedure
*}}}
*
*{{{ HypChangeFuncHeadForSameArgFuncs
#procedure HypChangeFuncHeadForSameArgFuncs(InFuncID,SameArgFuncID,Sym1,Sym2,Arg)
* Move all functions with at least one argument being `Arg':
  id `InFuncID'(?a,`Arg',?b) = `SameArgFuncID'(?a,`Arg',?b);
* Move back whenever there is a single argument different:
  id `SameArgFuncID'(?a,`Sym1'?!{`Sym2'?},`Sym2'?!{`Sym1'?},?b) = `InFuncID'(?a,`Sym1',`Sym2',?b);
#endprocedure
*}}}
*
*{{{ HypFromLinfToLone
#procedure HypFromLinfToLone(ExprID,LinfFuncID,LoneFuncID,AuxFuncID,Aux2FuncID,Sym)
  .sort:FromLinfToLone start;
  skip;
  nskip `ExprID';
*
  repeat;
    id,once `LinfFuncID'(?a) = `AuxFuncID'(?a);
    if (count(`AuxFuncID',1) > 0);
      multiply `Aux2FuncID';
      repeat;
        id `AuxFuncID' = 1;
        id `Aux2FuncID'(?a)*`AuxFuncID'(`Sym'?!{-1,},?b) = 
          (
            `Aux2FuncID'(?a,`Sym'/(1 + `Sym'))
            -
            `Aux2FuncID'(?a,1)
          )*`AuxFuncID'(?b)
        ;
        also `Aux2FuncID'(?a)*`AuxFuncID'(-1,?b) = 
          - `Aux2FuncID'(?a,1)*`AuxFuncID'(?b)
        ;
      endrepeat;
      multiply replace_(`Aux2FuncID',`LoneFuncID');
    endif;
  endrepeat;
*
  .sort:FromLinfToLone fin;
#endprocedure
*}}}
*
*{{{ HypFromLoneToHarmonic
#procedure HypFromLoneToHarmonic(ExprID,LoneFuncID,HfuncID,AuxFuncID,Aux2FuncID,Aux3FuncID,Sym1,Sym2)
  .sort:FromLoneToHarmonic start;
  skip;
  nskip `ExprID';
* Working on function per term at a time:
  repeat;
    if (count(`LoneFuncID',1) > 0);
      id,once `LoneFuncID'(?a) = `AuxFuncID'(?a);
* Fixing the sign (-1 should be provided on power equals to number of 1s):
      id `AuxFuncID'(?a) = `AuxFuncID'(?a)*`Aux2FuncID'(?a);
      transform,`Aux2FuncID',addargs(1,last);
      id `Aux2FuncID'(`Sym1'?) = (-1)^`Sym1';
* Have to check whether to use duality:
      id `AuxFuncID'(?a) = `AuxFuncID'(?a)*`Aux2FuncID'(-nargs_(?a)/2,?a);
      transform,`Aux2FuncID',addargs(1,last);
* Making the argument integer:
      id `Aux2FuncID'(`Sym1'?) = `Aux2FuncID'(2*`Sym1');
* Same number of 1s, have to choose smaller number:
      if (match(`Aux2FuncID'(`Sym1'?{0,})) > 0);
        id `AuxFuncID'(?a)*`Aux2FuncID'(`Sym1'?) = 
          `AuxFuncID'(?a)*`Aux2FuncID'(?a)*`Aux3FuncID'(nargs_(?a));
        transform,`Aux2FuncID',replace(1,last)=(0,1,1,0),reverse(1,last);
        #do ToDecimalFunc={`AuxFuncID',`Aux2FuncID'}
          transform,'ToDecimalFunc',encode(1,last):base=2;
        #enddo
        id `Aux3FuncID'(`Sym1'?$nargs) = 1;
        id `AuxFuncID'(`Sym1'?)*`Aux2FuncID'(`Sym2'?) = 
          `Aux3FuncID'(`Sym1'-`Sym2',`Sym1',`Sym2');
        id `Aux3FuncID'(`Sym1'?pos0_,?a,`Sym2'?) =
          `Aux3FuncID'(`Sym2')
        ;
        also `Aux3FuncID'(`Sym1'?neg_,`Sym2'?,?a) =
          `Aux3FuncID'(`Sym2')
        ;
        transform,`Aux3FuncID',decode(1,$nargs):base=2;
      elseif (match(`Aux2FuncID'(`Sym1'?pos_)) > 0);
        id `Aux2FuncID'(`Sym1'?) = 1;
        transform,`AuxFuncID',replace(1,last)=(0,1,1,0),reverse(1,last);
        multiply replace_(`AuxFuncID',`Aux3FuncID');
      elseif (match(`Aux2FuncID'(`Sym1'?neg_)) > 0);
        id `Aux2FuncID'(`Sym1'?) = 1;
        multiply replace_(`AuxFuncID',`Aux3FuncID');
      endif;
      multiply replace_(`Aux3FuncID',`HfuncID');
    endif;
  endrepeat;
*
  ModuleOption,local,$nargs;
  .sort:FromLoneToHarmonic fin;
#endprocedure
*}}}
*
*{{{ HypFromHarmonicToMZV
#procedure HypFromHarmonicToMZV(ExprID,HfuncID,MZVfuncID,SymHead,MaxWordLength)
  .sort:FromHarmonicToMZV start;
*
* Checking to see whether we have the preprocessor variable
* for keeping track of initialization:
  #ifndef `INITMZV'
    #write "INITMZV preprocessor variable is missing..."
    #write "FromHarmonicToMZV"
    #terminate 1;
  #else 
    #if (`INITMZV' == 1)
      #if (`MaxWordLength' > `MAXMZVWORDLENGTH')
        #redefine `MAXMZVWORDLENGTH' "`MaxWordLength'"
      #endif
      #call readmzvs(`MAXMZVWORDLENGTH')
      #redefine INITMZV "0"
      .sort:mzvlow inited, FromHarmonicToMZV;
    #endif
  #endif
  skip;
  nskip `ExprID';
*
  #do WordLength=1,`MaxWordLength'
    id `HfuncID'(<`SymHead'1?>,...,<`SymHead'`WordLength'?>) =
      `MZVfuncID'`WordLength'(<`SymHead'1>,...,<`SymHead'`WordLength'>)
    ;
  #enddo
*
  .sort:FromHarmonicToMZV fin;
#endprocedure
*}}}
*
*{{{ HypFromLimitHlogsToNumbers
#procedure HypFromLimitHlogsToNumbers(ExprID,RegLinfFuncID,LinfFuncID)
  .sort:FromLimitHlogsToNumbers start;
  skip;
  nskip `ExprID';
* Doing trivial rational function manipulations before trying for 
* number conversion:
  argument `RegLinfFuncID';
    #call HypToNumbers()
  endargument;
  multiply replace_(`RegLinfFuncID',HYPaux);
  id HYPaux(?a,HYPn1?!number_,?b) = `RegLinfFuncID'(?a,HYPn1,?b);
* This part is to isolate all 0 and all -1 argument hyperlogs:
  #call HypChangeFuncHeadForSameArgFuncs(HYPaux,HYPaux2,HYPn1,HYPn2,0)
  #call HypChangeFuncHeadForSameArgFuncs(HYPaux,HYPaux2,HYPn1,HYPn2,-1)
*
********************************************************************************
* NOTE: we always drop limit hlogs when possible even if there are other
* limit hlogs in the term!
* Drop limit hyperlogs if there is no other variable dependent one in term:
*  if (count(`RegLinfFuncID',1) == 0);
*    id HYPaux2(?a) = 0;
*  else;
*    multiply replace_(HYPaux2,HYPaux);
*  endif;
  id HYPaux2(?a) = 0;
********************************************************************************
* Only keep those hlogs with letters 0 or -1:
* First moving back everything where we still have non-numbers:
  id HYPaux(?a,HYPn1?!number_,?b) = `RegLinfFuncID'(?a,HYPn1,?b);
********************************************************************************
* NOTE: always convert to numbers even if there is still other limit hlogs with
* non-numbers!
* Also move back if there is still non-numeric limit hlog:
*  if (count(`RegLinfFuncID',1) > 0);
*    multiply replace_(HYPaux,`RegLinfFuncID');
*  endif;
********************************************************************************
* We still process those terms where we have other limit hlogs but with 
* numeric letters different from zero and minus one:
  id HYPaux(?a,HYPn1?!{0,-1},?b) = `RegLinfFuncID'(?a,HYPn1,?b);
  #call HypShuffleRegularizeAtZero(`ExprID',HYPaux,HYPrat,HYPpoly,0,,HYPn1,HYPn2,HYPaux1,...,HYPaux3)
* Drop newly created all-zero letter hyperlogs if possible:
  #call HypChangeFuncHeadForSameArgFuncs(HYPaux,HYPaux2,HYPn1,HYPn2,0)
********************************************************************************
* NOTE: no matter what we always drop newly created hyperlogs with only zero letters:
*  if (count(`RegLinfFuncID',1) == 0);
*    id HYPaux2(?a) = 0;
*  else;
*    multiply replace_(HYPaux2,HYPaux);
*  endif;
  id HYPaux2(?a) = 0;
********************************************************************************
  #call HypShuffleRegularizeAtInfinity(`ExprID',HYPaux,0,,HYPn1,HYPn2,HYPaux1,...,HYPaux4)
*
  multiply replace_(HYPaux,`LinfFuncID');
*
  shuffle `LinfFuncID';
*
  #call HypFromLinfToLone(`ExprID',`LinfFuncID',HYPLone,HYPaux,HYPaux2,HYPn1)
  #call HypFromLoneToHarmonic(`ExprID',HYPLone,HYPH,HYPaux,HYPaux2,HYPaux3,HYPn1,HYPn2)
  #call HypFromHarmonicToMZV(`ExprID',HYPH,mzv,HYPn,`MAXMZVWORDLENGTH')
*
  .sort:FromLimitHlogsToNumbers fin;
#endprocedure
*}}}
*
*{{{ HypToHyperlog
#procedure HypToHyperlog()
* Before doing anything we try to perform a gcd simplification:
  id HYPlogx(HYPn1?,HYPn2?) = HYPlogx(gcd_(HYPn1,HYPn2),HYPn1,HYPn2);
  id HYPlogx(1,HYPn1?,HYPn2?) = HYPlogx(HYPrat(HYPn1,HYPn2)); 
  id HYPlogx(HYPn3?,HYPn1?,HYPn2?) = HYPlogx(HYPrat(div_(HYPn1,HYPn3),div_(HYPn2,HYPn3))); 
* Changing functionheads:
* NOTE that this is trivial because of way of normalizing logs:
* log(1 - `Var'/(-a/b)) = HYPlogx(-a,b)
* log(`Var') = HYPlogx(0)
  multiply replace_(HYPlogx,HYPLx);
* Shuffling hyperlogs to combine them into a single instance per term:
  shuffle,HYPLx;
#endprocedure
*}}}
*
*{{{ HypDecomposeWRTvar
#procedure HypDecomposeWRTvar(Var)
***************************
* CANCELLATION OF TOWERS: *
***************************
  repeat id `Var'*HYPdenx(0) = 1;
  #do i=1,1
    #$it = 1;
    if (match(`Var'*HYPdenx(HYPn1?$poly)) > 0);
      FactDollar $poly;
      $FactPoly = 1;
      do $i=1,$poly[0];
        $FactPoly = $FactPoly*HYPnum($poly[$i]);
      enddo;
      id,once `Var'*HYPdenx($poly) = 1 + $FactPoly*HYPdenx($poly);
      #call HypSimplifyNumsDens(HYPnum,HYPden,HYPn1)
    endif;
    if ((count(`Var',1) > 0) && (match(HYPdenx(HYPn1?)) > 0)) $it = 0;
    ModuleOption,minimum,$it;
    ModuleOption,local,$poly,$FactPoly,$i;
    .sort:Cancel towers simple `Var';
    #redefine i "`$it'"
  #enddo
*
  #do i=1,1
    #$it = 1;
    if (match(`Var'*HYPdenx(HYPn1?$poly1,HYPn2?$poly2)) > 0);
      FactDollar $poly1;
      $FactPoly1 = 1;
      do $i=1,$poly1[0];
        $FactPoly1 = $FactPoly1*HYPnum($poly1[$i]);
      enddo;
      FactDollar $poly2;
      $FactPoly2 = 1;
      do $i=1,$poly2[0];
        $FactPoly2 = $FactPoly2*HYPden($poly2[$i]);
      enddo;
      id,once `Var'*HYPdenx($poly1,$poly2) = 1 + $FactPoly1*$FactPoly2*HYPdenx($poly1,$poly2);
      #call HypSimplifyNumsDens(HYPnum,HYPden,HYPn1)
    endif;
    if ((count(`Var',1) > 0) && (match(HYPdenx(HYPn1?,HYPn2?)) > 0)) $it = 0;
    ModuleOption,minimum,$it;
    ModuleOption,local,$poly1,$poly2,$FactPoly1,$FactPoly2,$i;
    .sort:Cancel towers ratfun `Var';
    #redefine i "`$it'"
  #enddo
************************
* PARTIAL FRACTIONING: *
************************
  #do i=1,1
    #$it = 1;
    id,once HYPdenx(HYPn1?!{HYPn2?})*HYPdenx(HYPn2?!{HYPn1?}) = 
      HYPdiv1(HYPn1)*HYPdiv2(HYPn2)*HYPgcd(gcd_(HYPn1, HYPn2))*(HYPdenx(HYPn1) - HYPdenx(HYPn2));
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?)*HYPgcd(HYPn3?!number_) =
      HYPden(HYPn3)*HYPdiv1(div_(HYPn1, HYPn3))*HYPdiv2(div_(HYPn2, HYPn3));
    ;
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?)*HYPgcd(HYPn3?number_) =
      1/HYPn3*HYPdiv1(HYPn1/HYPn3)*HYPdiv2(HYPn2/HYPn3);
    ;
    id HYPdiv1(HYPn1?number_)*HYPdiv2(HYPn2?number_) = 1/(HYPn1-HYPn2);
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?) = HYPden(HYPn1 - HYPn2);
    if (match(HYPdenx(HYPn1?!{HYPn2?})*HYPdenx(HYPn2?!{HYPn1?})) > 0) $it = 0;
    ModuleOption,minimum,$it;
    .sort:Partial fraction simple;
    #redefine i "`$it'"
  #enddo
*
  #do i=1,1
    #$it = 1;
    id,once HYPdenx(HYPn1?)*HYPdenx(HYPn2?,HYPn3?) = 
      HYPnum(HYPn3)*
      HYPdiv1(HYPn1)*HYPdiv2(HYPn2, HYPn3)*HYPgcd(gcd_(HYPn1, HYPn2))*
      (HYPdenx(HYPn1) - HYPdenx(HYPn2,HYPn3));
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?, HYPn3?)*HYPgcd(HYPn4?!number_) =
      HYPden(HYPn4)*HYPdiv1(div_(HYPn1, HYPn4))*HYPdiv2(div_(HYPn2, HYPn4), HYPn3);
    ;
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?, HYPn3?)*HYPgcd(HYPn4?number_) =
      1/HYPn4*HYPdiv1(HYPn1/HYPn4)*HYPdiv2(HYPn2/HYPn4, HYPn3);
    ;
    if ((count(HYPdiv1,1) > 0) &&
        (count(HYPdiv2,1) > 0));
      id HYPdiv1(HYPn1?$n1)*HYPdiv2(HYPn2?$n2, HYPn3?$n3) = 1;
      $mul = mul_($n1, $n3) - $n2;
      factdollar $mul;
      do $i=1, $mul[0];
        multiply HYPden($mul[$i]);
      enddo;
    endif;
    if (match(HYPdenx(HYPn1?)*HYPdenx(HYPn2?,HYPn3?)) > 0) $it = 0;
    ModuleOption,minimum,$it;
    ModuleOption,local,$n1, $n2, $n3, $i, $mul;
    .sort:Partial fraction ratfun;
    #redefine i "`$it'"
  #enddo
*
  #do i=1,1
    #$it = 1;
    id,once HYPdenx(HYPn1?,HYPn2?!{HYPn4})*HYPdenx(HYPn1?,HYPn4?!{HYPn2?}) = 
      HYPdiv1(HYPn2)*HYPdiv2(HYPn4)*HYPgcd(gcd_(HYPn2, HYPn4))*
      HYPden(HYPn1)*
      (HYPdenx(HYPn1,HYPn2) - HYPdenx(HYPn1,HYPn4))
    ;
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?)*HYPgcd(HYPn3?!number_) =
      HYPnum(HYPn3)*HYPdiv1(div_(HYPn1, HYPn3))*HYPdiv2(div_(HYPn2, HYPn3));
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?)*HYPgcd(HYPn3?number_) =
      HYPn3*HYPdiv1(HYPn1/HYPn3)*HYPdiv2(HYPn2/HYPn3);
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?) =
      HYPnum(HYPn1)*HYPnum(HYPn2)*HYPden(HYPn2 - HYPn1);
    if (match(HYPdenx(HYPn1?,HYPn2?!{HYPn4})*
              HYPdenx(HYPn1?,HYPn4?!{HYPn2?})) > 0) $it = 0;
    ModuleOption,minimum,$it;
    .sort:Partial fraction ratfun2;
    #redefine i "`$it'"
  #enddo
*
  #do i=1,1
    #$it = 1;
    id,once HYPdenx(HYPn1?!{HYPn3?},HYPn2?)*HYPdenx(HYPn3?!{HYPn1?},HYPn2?) = 
      HYPnum(HYPn2)*
      HYPdiv1(HYPn1)*HYPdiv2(HYPn3)*HYPgcd(gcd_(HYPn1, HYPn3))*
      (HYPdenx(HYPn1,HYPn2) - HYPdenx(HYPn3,HYPn2))
    ;
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?)*HYPgcd(HYPn3?!number_) =
      HYPden(HYPn3)*HYPdiv1(div_(HYPn1, HYPn3))*HYPdiv2(div_(HYPn2, HYPn3));
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?)*HYPgcd(HYPn3?number_) =
      1/HYPn3*HYPdiv1(HYPn1/HYPn3)*HYPdiv2(HYPn2/HYPn3);
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?) = HYPden(HYPn1 - HYPn2);
    if (match(HYPdenx(HYPn1?!{HYPn3?},HYPn2?)*
              HYPdenx(HYPn3?!{HYPn1?},HYPn2?)) > 0) $it = 0;
    ModuleOption,minimum,$it;
    .sort:Partial fraction ratfun3;
    #redefine i "`$it'"
  #enddo
*
  #do i=1,1
    #$it = 1;
    id,once HYPdenx(HYPn1?!{HYPn3?},HYPn2?!{HYPn4?})*HYPdenx(HYPn3?!{HYPn1?},HYPn4?!{HYPn2?}) = 
      HYPdiv1(HYPn1)*HYPdiv2(HYPn3)*HYPgcd1(gcd_(HYPn1, HYPn3))*
      HYPdiv3(HYPn2)*HYPdiv4(HYPn4)*HYPgcd2(gcd_(HYPn2, HYPn4))*
      (HYPdenx(HYPn1,HYPn2) - HYPdenx(HYPn3,HYPn4))
    ;
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?)*HYPgcd1(HYPn3?!number_) =
      HYPden(HYPn3)*HYPdiv1(div_(HYPn1, HYPn3))*HYPdiv2(div_(HYPn2, HYPn3));
    id HYPdiv3(HYPn1?)*HYPdiv4(HYPn2?)*HYPgcd2(HYPn3?!number_) =
      HYPnum(HYPn3)*HYPdiv3(div_(HYPn1, HYPn3))*HYPdiv4(div_(HYPn2, HYPn3));
    id HYPdiv1(HYPn1?)*HYPdiv2(HYPn2?)*HYPgcd1(HYPn3?number_) =
      1/HYPn3*HYPdiv1(HYPn1/HYPn3)*HYPdiv2(HYPn2/HYPn3);
    id HYPdiv3(HYPn1?)*HYPdiv4(HYPn2?)*HYPgcd2(HYPn3?number_) =
      HYPn3*HYPdiv3(HYPn1/HYPn3)*HYPdiv4(HYPn2/HYPn3);
    if ((count(HYPdiv1,1) > 0) &&
        (count(HYPdiv2,1) > 0) &&
        (count(HYPdiv3,1) > 0) &&
        (count(HYPdiv4,1) > 0));
      id HYPdiv1(HYPn1?$n1)*HYPdiv2(HYPn3?$n3)*HYPdiv3(HYPn2?$n2)*HYPdiv4(HYPn4?$n4) =
        HYPnum($n2)*HYPnum($n4)
      ;
      $mul = mul_($n1, $n4) - mul_($n3, $n2);
      factdollar $mul;
      do $i=1, $mul[0];
        multiply HYPden($mul[$i]);
      enddo;
    endif;
    if (match(HYPdenx(HYPn1?!{HYPn3?},HYPn2?!{HYPn4?})*
              HYPdenx(HYPn3?!{HYPn1?},HYPn4?!{HYPn2?})) > 0) $it = 0;
    ModuleOption,local,$n1, $n2, $n3, $n4, $i, $mul;
    ModuleOption,minimum,$it;
    .sort:Partial fraction ratfun4;
    #redefine i "`$it'"
  #enddo
#endprocedure
*}}}
*
*{{{ HypMoebiusTransform
#procedure HypMoebiusTransform(FuncID,Op)
* Wrap function arguments with Moebius transform functionhead:
  id `FuncID'(?a) = `FuncID'(HYPPhi(?a));
* Have to do it this way because when having a zero argument putinside is not
* working:
  repeat id `FuncID'(HYPPhi(?a,HYPn1?,HYPn2?),?b) = `FuncID'(HYPPhi(?a,HYPn1),HYPPhi(HYPn2),?b);
* Expanding the mapped weights:
  #do i=1,1
    #if (`Op' == "1/z")
      if (match(`FuncID'(?a,HYPPhi(HYPrat(HYPn1?,HYPn2?)),?b)));
        id `FuncID'(?a,HYPPhi(HYPrat(HYPn1?,HYPn2?)),?b) = `FuncID'(?a,HYPrat(HYPn2,HYPn1),?b) - `FuncID'(?a,0,?b);
      else;
        id `FuncID'(?a,HYPPhi(HYPn1?),?b) = `FuncID'(?a,HYPden(HYPn1),?b) - `FuncID'(?a,0,?b);
      endif;
    #elseif (`Op' == "z/(1+z)")
      id `FuncID'(?a,HYPPhi(HYPn1?),?b) = `FuncID'(?a,HYPnum(HYPn1)*HYPden(1 + HYPn1),?b) - `FuncID'(?a,1,?b);
      id `FuncID'(?a,HYPnum(HYPn1?)*HYPden(0),?b) = 0;
    #endif
* Taking care of vanishing cases:
    id `FuncID'(?a,HYPden(0),?b) = 0;
* Otherwise we call our numeric simplify routine:
    argument `FuncID';
      #call HypSimplifyNumerics
      #call HypRecastDenominators
    endargument;
    if (match(`FuncID'(?a,HYPPhi(HYPn1?),?b)) > 0) redefine i "0";
    .sort
  #enddo
#endprocedure
*}}}
*
*{{{ HypLimInfToLimZero
#procedure HypLimInfToLimZero(Var)
  if (match(HYPlim(`Var',HYPinf)) > 0);
* We only change the functionhead if there is at least one
* letter which is non-zero:
    id HYPLx(?a,HYPn1?!{0,},?b) = HYPLlimInf(?a,HYPn1,?b);
* The remaining ones have only zeros, for these the transformation is
* trivial:
    id HYPLx(?a) = (-1)^(nargs_(?a))*HYPLx(?a);
* Tower of `Var's into a tower of denominators:
    id `Var' = HYPdenx(0);
  endif;
  #call HypDissectArg(HYPLlimInf,HYPLphi,HYPLinfRegInfZero)
* Getting rid of trivial contributions:
  #call HypSimplifyNumerics
* Performing a Moebius transform in HYPLphi:
  #call HypMoebiusTransform(HYPLphi,"1/z")
  multiply replace_(HYPLphi,HYPLx);
* Finally we swap the limit operations:
  id HYPlim(`Var',HYPinf) = HYPlim(`Var',0);
#endprocedure
*}}}
*
*{{{ HypSubstituteGfunction
#procedure HypSubstituteGfunction(GfuncID,InvGfuncID,GammaFuncID,InvGammaFuncID,EpsSymbol,Sym1,...,Sym4)
  id `GfuncID'(<`Sym1'?>,...,<`Sym4'?>) =
    `GammaFuncID'(`Sym1'+`Sym2'-`Sym4'-2+`EpsSymbol')*
    `GammaFuncID'(-`Sym1'+`Sym3'-`Sym4'+2-`EpsSymbol')*
    `GammaFuncID'(-`Sym2'+`Sym4'+2-`EpsSymbol')*
    `InvGammaFuncID'(`Sym1')*
    `InvGammaFuncID'(`Sym2')*
    `InvGammaFuncID'(-`Sym1'-`Sym2'+`Sym3'+4-2*`EpsSymbol')
  ;
  id `InvGfuncID'(<`Sym1'?>,...,<`Sym4'?>) =
    `InvGammaFuncID'(`Sym1'+`Sym2'-`Sym4'-2+`EpsSymbol')*
    `InvGammaFuncID'(-`Sym1'+`Sym3'-`Sym4'+2-`EpsSymbol')*
    `InvGammaFuncID'(-`Sym2'+`Sym4'+2-`EpsSymbol')*
    `GammaFuncID'(`Sym1')*
    `GammaFuncID'(`Sym2')*
    `GammaFuncID'(-`Sym1'-`Sym2'+`Sym3'+4-2*`EpsSymbol')
  ;
#endprocedure
*}}}
*
*{{{ HypNormalizeGammaFunctions
#procedure HypNormalizeGammaFunctions(EpsSymbol,GammaFuncID,InvGammaFuncID,NumFuncID,DenFuncID,Sym1,Sym2)
  splitarg,((`EpsSymbol')),`GammaFuncID';
  splitarg,((`EpsSymbol')),`InvGammaFuncID';
  id `GammaFuncID'(`Sym1'?pos_) = fac_(`Sym1'-1);
  id `InvGammaFuncID'(`Sym1'?pos_) = 1/fac_(`Sym1'-1);
  id `GammaFuncID'(`Sym1'?,`Sym2'?) = `GammaFuncID'(`Sym1',`Sym2'/`EpsSymbol');
  id `InvGammaFuncID'(`Sym1'?,`Sym2'?) = `InvGammaFuncID'(`Sym1',`Sym2'/`EpsSymbol');
  id `GammaFuncID'(`Sym1'?!number_) = `GammaFuncID'(0,`Sym1'/`EpsSymbol');
  id `InvGammaFuncID'(`Sym1'?!number_) = `InvGammaFuncID'(0,`Sym1'/`EpsSymbol');
  repeat id `GammaFuncID'(`Sym1'?pos_,`Sym2'?) = 
    `NumFuncID'(`Sym1'-1+`Sym2'*`EpsSymbol')*`GammaFuncID'(`Sym1'-1,`Sym2')
  ;
  repeat id `InvGammaFuncID'(`Sym1'?pos_,`Sym2'?) = 
    `DenFuncID'(`Sym1'-1+`Sym2'*`EpsSymbol')*`InvGammaFuncID'(`Sym1'-1,`Sym2')
  ;
  repeat id `GammaFuncID'(`Sym1'?neg_,`Sym2'?) = 
    `DenFuncID'(`Sym1'+`Sym2'*`EpsSymbol')*`GammaFuncID'(`Sym1'+1,`Sym2')
  ;
  repeat id `InvGammaFuncID'(`Sym1'?neg_,`Sym2'?) = 
    `NumFuncID'(`Sym1'+`Sym2'*`EpsSymbol')*`InvGammaFuncID'(`Sym1'+1,`Sym2')
  ;
  id `GammaFuncID'(`Sym1'?,`Sym2'?)*`InvGammaFuncID'(`Sym1'?,`Sym2'?) = 1;
#endprocedure
*}}}
*
*{{{ HypExpandGamma
#procedure HypExpandGamma(GammaFuncID,InvGammaFuncID,EpsSymbol,Sym,MaxEpsPower)
  repeat;
    id,once `GammaFuncID'(0,`Sym'?) =
      1/(`Sym'*`EpsSymbol')
      -
      HYPEulerGamma
      +
      (6*HYPzeta2+6*HYPEulerGamma^2)/12*(`Sym'*`EpsSymbol')
      -
      (4*HYPzeta3+6*HYPEulerGamma*HYPzeta2+2*HYPEulerGamma^3)/12*(`Sym'*`EpsSymbol')^2
      +
      (160*HYPEulerGamma*HYPzeta3+108*HYPzeta2^2+120*HYPEulerGamma^2*HYPzeta2+20*HYPEulerGamma^4)/480*(`Sym'*`EpsSymbol')^3
      -
      (
        288*HYPzeta5+240*HYPzeta2*HYPzeta3+240*HYPEulerGamma^2*HYPzeta3+324*HYPEulerGamma*HYPzeta2^2
        +
        120*HYPEulerGamma^3*HYPzeta2+12*HYPEulerGamma^5
      )/1440*(`Sym'*`EpsSymbol')^4
      +
      (
        HYPEulerGamma*(24192*HYPzeta5+20160*HYPzeta2*HYPzeta3)+6720*HYPzeta3^2
        +
        6720*HYPEulerGamma^3*HYPzeta3+13176*HYPzeta2^3+13608*HYPEulerGamma^2*HYPzeta2^2
        +
        2520*HYPEulerGamma^4*HYPzeta2+168*HYPEulerGamma^6
      )/120960*(`Sym'*`EpsSymbol')^5
      +
      HYPGammaExpand(`EpsSymbol'^6)*`EpsSymbol'^6
    ;
    if (count(`EpsSymbol',1) > `MaxEpsPower') discard;
  endrepeat;
  repeat;
    id,once `InvGammaFuncID'(0,`Sym'?) =
      `Sym'*`EpsSymbol'
      +
      HYPEulerGamma*(`Sym'*`EpsSymbol')^2
      +
      (6*HYPEulerGamma^2-6*HYPzeta2)/12*(`Sym'*`EpsSymbol')^3
      +
      (4*HYPzeta3-6*HYPEulerGamma*HYPzeta2+2*HYPEulerGamma^3)/12*(`Sym'*`EpsSymbol')^4
      +
      (
        480*HYPEulerGamma*HYPzeta3+36*HYPzeta2^2-360*HYPEulerGamma^2*HYPzeta2+60*HYPEulerGamma^4
      )/1440*(`Sym'*`EpsSymbol')^5
      +
      (
        288*HYPzeta5-240*HYPzeta2*HYPzeta3+240*HYPEulerGamma^2*HYPzeta3+36*HYPEulerGamma*HYPzeta2^2
        -
        120*HYPEulerGamma^3*HYPzeta2+12*HYPEulerGamma^5
      )/1440*(`Sym'*`EpsSymbol')^6
      +
      (
        HYPEulerGamma*(24192*HYPzeta5-20160*HYPzeta2*HYPzeta3)+6720*HYPzeta3^2
        + 
        6720*HYPEulerGamma^3*HYPzeta3-1080*HYPzeta2^3+1512*HYPEulerGamma^2*HYPzeta2^2
        -
        2520*HYPEulerGamma^4*HYPzeta2+168*HYPEulerGamma^6
      )/120960*(`Sym'*`EpsSymbol')^7
      +
      HYPinvGammaExpand(`EpsSymbol'^8)*`EpsSymbol'^8
    ;
    if (count(`EpsSymbol',1) > `MaxEpsPower') discard;
  endrepeat;
#endprocedure
*}}}
*
*{{{ HypToGscheme
#procedure HypToGscheme(NumberOfLoops,GammaFuncID,InvGammaFuncID,EpsSymbol,MaxEpsPower)
  .sort
  #if (`EpsSymbol' != HYPep)
    multiply replace_(`EpsSymbol',HYPep);
  #endif
  multiply HYPep^(-`NumberOfLoops');
  multiply HYPinvGfunc(1,1,0,0)^`NumberOfLoops';
  #call HypSubstituteGfunction(HYPGfunc,HYPinvGfunc,`GammaFuncID',`InvGammaFuncID',HYPep,HYPn1,...,HYPn4)
  #call HypNormalizeGammaFunctions(HYPep,`GammaFuncID',`InvGammaFuncID',HYPnumep,HYPdenep,HYPn1,HYPn2)
  #call HypEpExpand
  #call HypSimplifyNumerics
  .sort
* Turn off PolyRatFun:
  PolyRatFun;
* Decompose the epsilon rational functions:
  id HYPratep(HYPn1?,HYPn2?) = HYPn1/HYPn2;
  #call HypExpandGamma(`GammaFuncID',`InvGammaFuncID',HYPep,HYPn1,`MaxEpsPower')
  #if (`EpsSymbol' != HYPep)
    multiply replace_(HYPep,`EpsSymbol');
  #endif
*
  #if 0
  #endif
#endprocedure
*}}}
*
*{{{ HypFibrationBasis
#procedure HypFibrationBasis(ExprID,LinfFuncID,LfuncID,RatFuncID,?VarList)
* Convenience routine for users to generate the fibration basis in a series
* of variables, the conversion starts from the LHS of the variable list.
  #do Var={`?VarList'}
    #message Considering variable `Var'
    InExpression `ExprID';
      multiply replace_(`RatFuncID',HYPrat);
    EndInExpression;
    #call HypLimitsToHlogs(`ExprID',`LinfFuncID',`Var')
    InExpression `ExprID';
      id HYPLx(?a) = `LfuncID'(?a, `Var');
      Argument `LfuncID',`LinfFuncID';
        multiply replace_(HYPrat, `RatFuncID');
      EndArgument;
    EndInExpression;
  #enddo
#endprocedure
*}}}
*
*{{{ HypFinalizeResult
#procedure HypFinalizeResult(EpsSymbol,MaxEpsPower)
  .sort Finalize;
  symbols z4,z6,z8,z8,z10;
  .sort
  PolyRatFun;
  .sort
  id HYPratep(HYPn1?,HYPn2?) = HYPn1/HYPn2;
* We also convert here from the internal epsilon symbol to
* the user-defined one if the ToGscheme function was not called before:
  #if (`EpsSymbol' != HYPep)
    multiply replace_(HYPep,`EpsSymbol');
  #endif
* Dropping everything higher than requested:
  if (count(`EpsSymbol',1) > `MaxEpsPower') discard;
* MZVs to short notation:
  multiply replace_(
    #do imzv=3,`MAXMZVWORDLENGTH',2
      HYPzeta`imzv',z`imzv',
    #enddo
    HYPzeta2,z2
  );
* Sanity check for still present divergent factors;
  if (count(HYPLlimZero,1,HYPinf,1) > 0);
    print "Result is unreliable due to present divergences...";
    print "Affected term: %t";
*    exit "FinalizeResult";
  endif;
* Introduce even numbered MZVs:
  id pi_^2 = 6*z2;
  id z2^5  = 93555/7776*z10;
  id z2^4  = 9450/1296*z8;
  id z2^3  = 945/216*z6;
  id z2^2  = 90/36*z4;
#endprocedure
*}}}
*
*{{{ HypPrintStatistics
#procedure HypPrintStatistics()
  #message ################################################;
  #if (`HYPcheckForZeroCoefficients')
    #message # We zeroed out `HYPzeroedOutTotal' hyperlogs;
  #endif
  #message # We used `HYPtempCount' temporary expressions;
  #message ################################################;
#endprocedure
*}}}
