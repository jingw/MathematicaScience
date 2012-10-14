Map[(Evaluate[#[[1]]] = 10^#[[2]]) &, {
    {Yotta, 24}, {Zetta, 21}, {Exa, 18}, {Peta, 15}, {Tera, 12}, {Giga, 9}, {Mega, 6}, {Kilo, 3}, {Hecto, 2}, {Deca, 1},
    {Deci, -1}, {Centi, -2}, {Milli, -3}, {Micro, -6}, {Nano, -9}, {Pico, -12}, {Femto, -15}, {Atto, -18}, {Zepto, -21}, {Yocto, -24}
}]

(*SI Derived Units*)
Newton = Kilogram Meter/Second^2
Joule = Newton Meter
Watt = Joule/Second
Coulomb = Ampere Second
Volt = Watt/Ampere
Ohm = Volt/Ampere
Tesla = Newton/(Ampere Meter)
Farad = Coulomb/Volt
Henry = Volt Second/Ampere
Liter = 1000 Centimeter^3
Pascal = Newton/Meter^2

(*Common definitions/constants*)
Millimeter = Milli Meter
Angstrom = 10^-10 Meter
Minute = 60 Second
Hour = 60 Minute
Day = 24 Hour
Year = 365 Day
Hertz = 1 / Second

Calorie = 4.184 Joule
ElectronCharge = 1.602176487 10^-19 Coulomb
ElectronMass = 9.10938215 10^-31 Kilogram
ProtonMass = 1.672621637 10^-27 Kilogram
Faraday = 96485.3399 Coulomb/Mole
AtomicMassUnit = 1.660538782 10^-27 Kilogram
AvogadroNumber = 6.02214179 10^23 / Mole
ElectronVolt = ElectronCharge Volt

PlanckConstant = 6.62606896 10^-34 Joule Second
ReducedPlanckConstant = PlanckConstant / (2 Pi)
IdealGasConstant = 8.314472 Joule Kelvin^-1 Mole^-1
BoltzmannConstant = 1.3806504 10^-23 Joule/Kelvin
StefanConstant = 5.670400 10^-8 Watt Meter^-2 Kelvin^-4
WienConstant = 2.89776829 10^-3 Meter Kelvin

GravitationalConstant = 6.67428 10^-11 Newton Meter^2 Kilogram^-2
EarthGravity = 9.80665 Meter/Second^2
EarthMass = 5.9742 10^24 Kilogram
EarthRadius = 6.378140 10^6 Meter
SunRadius = 6.955 10^8 Meter
SunMass = 1.9891 10^30 Kilogram
AstronomicalUnit = 149.60 10^9 Meter

Atmosphere = 101325 Pascal
Torr = Atmosphere / 760
