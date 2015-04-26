package = "Math-WalshTransform"
version = "1.18-0"
source = {
	url = "http://www.pjb.com.au/comp/lua/math-walshtransform-1.18.tar.gz",
	md5 = "f6d1f33156b0b9ae649e8119a05b731e"
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
   homepage = "http://www.pjb.com.au/comp/lua/WalshTransform.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["Math.WalshTransform"] = "WalshTransform.lua"
   },
	copy_directories = { "doc", "test" }
}
