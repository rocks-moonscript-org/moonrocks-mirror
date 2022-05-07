package = "lmpfrlib"
version = "20170112-1"
source = {
   url = "http://www.circuitwizard.de/lmpfrlib/lmpfrlib.c",
   md5 = "2ceeaddfff073a67b52891e472fa1afc",
}
description = {
   summary = "Lua API for the GNU MPFR library",
   detailed =
      "The MPFR library is a C library for multi-precision floating-point " ..
      "computations with correct rounding. This extension allows the use " ..
      "of the MPFR library from within Lua.",
   license = "LGPL",
   homepage = "http://www.circuitwizard.de/lmpfrlib/lmpfrlib.html",
   maintainer = "Alexander Shpilkin <ashpilkin@gmail.com>",
}
dependencies = {
   "lua ~> 5.3"
}
external_dependencies = {
   GMP = { header = "gmp", library = "gmp" },
   MPFR = { header = "mpfr", library = "mpfr" },
}
build = {
   type = "builtin",
   modules = {
      lmpfrlib = {
         sources = { "lmpfrlib.c" },
         libraries = { "mpfr", "gmp" },
         incdirs = { "$(GMP_INCDIR)", "$(MPFR_INCDIR)" },
         libdirs = { "$(GMP_LIBDIR)", "$(MPFR_LIBDIR)" },
      }
   }
}
