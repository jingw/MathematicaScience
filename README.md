Mathematica Science Utilities
=============================
Packages that make scientific calculations easier.

`SIDim` and `CGSDim` provide definitions of standard units, physical constants, and order-of-magnitude prefixes. Some effort is made to keep SI and CGS equally easy to use. For example, it is legal to use volts or statvolts in both packages. However, it is not legal to use both packages simultaneously. (You may be aware of Mathematica's `PhysicalConstants` package. I personally found it cumbersome and lacking in CGS support.)

`ErrorProp` propogates errors given an expression and the values/uncertainties of all values.

Usage
=====
1. Install or uninstall by running `./install.sh` or `./uninstall.sh`.
2. Load in Mathematica with one of the following:

        Needs["CGSDim`"]
        Needs["SIDim`"]
        Needs["ErrorProp`"]

3. Sample dimensional calculation. Suppose we want to calculate the electric field due to a plane with fixed charge density.

        chargeDensity = 1 Esu / Centimeter^2;
        electricField = chargeDensity / (2 * VacuumPermittivity);
        electricField / (Volt / Meter)
(Note that you are allowed to mix SI/CGS.)

4. Sample error propagation. Suppose we know some mass is 1 ± 0.1 kg, and its velocity is 1.7 ± 0.2 m/s. We can correctly calculate its kinetic energy with errors propagated.

        ErrorProp[1/2 m v^2, {m, 1, .1}, {v, 1.7, .2}]
You can add dimensions to `m` and `v` if desired. Evaluate `?ErrorProp` for more help.

History
=======
I originally wrote these to make my life easier in an [order of magnitude physics class](https://www.its.caltech.edu/~oom/) and a physics lab.
