package = "LuaBcd"
version = "1.0-5"
source = {
   url = "git://github.com/patrickfrey/luabcd",
   tag = "1.0-5"
}
description = {
   summary = "BCD arithmetic for arbitrary large integers",
   detailed = [[
      Implements an ADT for arbitrary large integers with the
      arithmetic operators  +  -  / *  ^ .
      The numbers are internally represented as binary coded decimals (BCD) in blocks of 64 bit, each holding 16 decimal digits.
      The implementation is based on "BCD Arithmetic, a tutorial" (http://homepage.divms.uiowa.edu/~jones/bcd/bcd.html)
      by Douglas W. Jones from the University of Iowa.
   ]],
   homepage = "https://github.com/patrickfrey/luabcd",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, <= 5.4"
}
build = {
   type = "builtin",
   modules = {
      bcd = {
	       sources = {"src/bcd.cpp", "src/lualib_bcd.cpp"},
	       incdirs = {"src/"},
	       libraries = {"stdc++"},
      }
   },
   copy_directories = { "tests" }
}

