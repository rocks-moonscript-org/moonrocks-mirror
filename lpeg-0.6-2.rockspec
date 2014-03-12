package = "LPeg"
version = "0.6-2"
source = {
   url = "http://www.inf.puc-rio.br/~roberto/lpeg-0.6.tar.gz",
   md5 = "e0e7600ea0bfbf31a8b45fd31adc8bef"
}
description = {
   summary = "Parsing Expression Grammars For Lua",
   detailed = [[
      LPeg is a new pattern-matching library for Lua, based on Parsing
      Expression Grammars (PEGs). The nice thing about PEGs is that it
      has a formal basis (instead of being an ad-hoc set of features),
      allows an efficient and simple implementation, and does most things
      we expect from a pattern-matching library (and more, as we can
      define entire grammars).
   ]],
   homepage = "http://www.inf.puc-rio.br/~roberto/lpeg.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make",
   install_pass = false,
   build_variables = {
      CFLAGS = "$(CFLAGS) $(LIBFLAG) -I$(LUA_INCDIR) -o lpeg.so",
   },
   install = {
      lua = { "re.lua" },
      lib = { "lpeg.so" }
   }
}
