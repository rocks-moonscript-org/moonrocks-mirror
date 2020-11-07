package = "LuaBcd"
version = "1.0-4"
source = {
   url = "git://github.com/patrickfrey/luabcd",
   tag = "1.0-4"
}
description = {
   summary = "BCD arithmetic for arbitrary large integers",
   detailed = [[
      Implements an ADT for arbitrary large integers with the
      arithmetic operators '+','-','/','*','^'.
      The numbers are internally represented as binary coded
      decimals (BCD) in blocks of 8 digits per 64 bit chunk.
      The implementation is based on "BCD Arithmetic, a tutorial"
      at http://homepage.divms.uiowa.edu/~jones/bcd/bcd.html.
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
	       incdirs = {"src/"}
      }
   },
   copy_directories = { "tests" }
}

