(* ::Package:: *)

BeginPackage["CGSDim`"]

Map[(Evaluate[#[[1]]]::"symbol" = #[[2]]) &, {
    {Centimeter, "cm"}, {Gram, "g"}, {Second, "s"}, {Kelvin, "K"}, {Mole, "mol"}
}]
$Assumptions = $Assumptions && Centimeter > 0 && Gram > 0 && Second > 0 && Kelvin > 0 && Mole > 0

LightSpeed = 29979245800 Centimeter/Second

(*SI base units compatibility*)
Meter = 100 Centimeter
Kilogram = Kilo Gram
Ampere = LightSpeed/Centimeter 10^-1 Esu

<< "CommonDefs.m"

(*CGS Derived Units*)
Dyne = Gram Centimeter/Second^2
Erg = Dyne Centimeter
Esu = Erg^(1/2) Centimeter^(1/2)
Statvolt = Erg/Esu
Gauss = Dyne/Esu

EndPackage[]
