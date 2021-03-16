package = "tanguytestluarocks"
version = "0.1-1"
source = {
   url = "https://github.com/tanguyvda/tanguyTestLuarocks",
   tag = "0.1-1"
}
description = {
   summary = "tanguy spec file.",
   detailed = [[
      this module is only here to help me
      understand how to do a luarocks package
   ]],
   license = "Apache 2.0" -- or whatever you like
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
     ttlrcommon = "tanguytestluarocks/ttlrcommon.lua",
   }
}
