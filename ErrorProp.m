(* ::Package:: *)

(* :Name: ErrorProp` *)

(* :Title: Error propagation routines *)

(* :Author: Jing Wang *)

(* :Summary:
This package propogates errors given an expression and the values/uncertainties of all values.
*)

(* :Context: ErrorProp` *)

(* :Package Version: 1.0 *)

(* :Copyright: Copyright 2012 Jing Wang
*)

(* :History:
*)

(* :Keywords: error propagation *)

(* :Source:
*)

(* :Warnings: None. *)

(* :Mathematica Version: 8.0 *)

(* :Limitations:
*)

BeginPackage["ErrorProp`"]

Unprotect[ErrorProp, Compare]

ErrorProp::usage = "ErrorProp[expr, {symbol, value, standard deviation}, {...}, ...] calculates the value of expr and its uncertainty using the given data."
Compare::usage =
"Compare[{\!\(\*SubscriptBox[\(x\), \(1\)]\), \!\(\*SubscriptBox[\(\
\[Sigma]\), SubscriptBox[\(x\), \(1\)]]\)}, \
{\!\(\*SubscriptBox[\(x\), \(2\)]\),\!\(\*SubscriptBox[\(\[Sigma]\), \
SubscriptBox[\(x\), \(2\)]]\)}] calculates \!\(\*FractionBox[\(\
\[LeftBracketingBar]\*SubscriptBox[\(x\), \(1\)] - \*SubscriptBox[\(x\
\), \(2\)]\[RightBracketingBar]\), \
SqrtBox[\(\*SuperscriptBox[SubscriptBox[\(\[Sigma]\), \
SubscriptBox[\(x\), \(1\)]], \(2\)] + \
\*SuperscriptBox[SubscriptBox[\(\[Sigma]\), SubscriptBox[\(x\), \
\(2\)]], \(2\)]\)]]\)."

Begin["`Private`"]

(* could be better *)
variableQ[x_] := Head[x] == Symbol && !NumericQ[x]
valueQ[x_] := Head[x] =!= List
validDataQ[{_?variableQ, {_?valueQ, _?valueQ}} | {_?variableQ, _?valueQ, _?valueQ}] := True
validDataQ[___] := False

SetAttributes[ErrorProp, HoldAll];
ErrorProp[expr_, data__?validDataQ] := Module[{flatData = Flatten /@ {data}, subs},
    subs = #[[1]] -> #[[2]] & /@ flatData;
    Simplify[{
        expr /. subs,
        Sqrt[Total[
            (D[expr, #[[1]]] #[[3]])^2 & /@ flatData
        ]] /. subs
    }]
]
ErrorProp::badusage = "Improper arguments"
ErrorProp[___] := Message[ErrorProp::badusage]

Compare[{x1_?valueQ, sx1_?valueQ}, x2_?valueQ] := Simplify[Abs[x1 - x2] / sx1]
Compare[{x1_?valueQ, sx1_?valueQ}, {x2_?valueQ, sx2_?valueQ}] := Simplify[Abs[x1 - x2] / Sqrt[sx1^2 + sx2^2]]
Compare::badusage = "Improper arguments"
Compare[___] := Message[Compare::badusage]

End[]

SetAttributes[
    {ErrorProp, Compare},
    {Protected, ReadProtected}
];

EndPackage[]
