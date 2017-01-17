package = "LPeg"
version = "1.0.1-1"
source = {
   url = "http://www.inf.puc-rio.br/~roberto/lpeg/lpeg-1.0.1.tar.gz",
   md5 = "049e0cc18fd540ccddab701a1d771e46",
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
   maintainer = "Gary V. Vaughan <gary@vaughan.pe>",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      lpeg = {
         "lpcap.c", "lpcode.c", "lpprint.c", "lptree.c", "lpvm.c"
      },
      re = "re.lua"
   }
}
