package = "Math-WalshTransform"
version = "1.17-1"
source = {
   url = "http://cpansearch.perl.org/src/PJB/Math-WalshTransform-1.17/lua/WalshTransform.lua"
}
description = {
   summary = "Fast Hadamard and Walsh Transforms",
   detailed = [[
      These routines implement fast Hadamard and Walsh Transforms
      and their inverse transforms.
      Also included are routines for converting a Hadamard to a
      Walsh transform and vice versa, for calculating the Logical
      Convolution of two lists, or the Logical Autocorrelation of
      a list, and for calculating the Walsh Power Spectrum - in short,
      almost everything you ever wanted to do with a Walsh Transform.
   ]],
   homepage = "http://cpansearch.perl.org/src/PJB/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      Evol = "WalshTransform.lua"
   },
}
