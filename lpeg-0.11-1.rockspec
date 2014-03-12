package = "LPeg"
version = "0.11-1"
source = {
   url = "http://www.inf.puc-rio.br/~roberto/lpeg/lpeg-0.11.tar.gz",
   md5 = "54896577717d6061d2ae469dd8549a29"
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
   type = "builtin",
   modules = {
      lpeg = { "lpcap.c", "lpcode.c", "lpprint.c", "lptree.c", "lpvm.c" },
      re = "re.lua"
   },
}
