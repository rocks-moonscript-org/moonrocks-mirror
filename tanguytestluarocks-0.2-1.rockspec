package = "tanguytestluarocks"
version = "0.2-1"
source = {
   url = "git+https://github.com/tanguyvda/tanguyTestLuarocks",
   tag = "0.2-1"
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
     ["tanguytestluarocks.ttlrcommon"] = "modules/tanguytestluarocks/ttlrcommon.lua",
   }
}
