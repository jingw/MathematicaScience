(* ::Package:: *)

BeginPackage["SIDim`"]

Map[(Evaluate[#[[1]]]::"symbol" = #[[2]]) &, {
    {Meter, "m"}, {Kilogram, "kg"}, {Second,"s"}, {Ampere, "A"}, {Kelvin, "K"}, {Mole, "mol"}, {Candela, "cd"}
}]
$Assumptions = $Assumptions && Meter > 0 && Kilogram > 0 && Second > 0 && Ampere > 0 && Kelvin > 0 && Mole > 0 && Candela > 0

<< "CommonDefs.m"

Gram = Milli Kilogram
Centimeter = Centi Meter

LightSpeed = 299792458 Meter/Second
VacuumPermeability = 4 Pi 10^-7 Volt Second/Meter/Ampere
VacuumPermittivity = 1 / (VacuumPermeability LightSpeed^2)

(*CGS Derived Units*)
Dyne = Gram Centimeter/Second^2
Erg = Dyne Centimeter
Esu = Ampere / (LightSpeed/Centimeter 10^-1)
Statvolt = Erg/Esu
Gauss = Dyne/Esu/LightSpeed

EndPackage[]
