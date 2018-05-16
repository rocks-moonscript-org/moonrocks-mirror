package = "lua-ssllabs"
version = "0.1-1"
source = {
   url = "git://github.com/imolein/lua-ssllabs.git",
   tag = "v0.1-1"
}
description = {
   summary = "Lua module for the Qualys SSL Labs Server Test.",
   detailed = [[
      A little lua library which provide an easy-to-use interface
      for the Qualys SSL Labs Server Test API (v3).
   ]],
   homepage = "https://git.kokolor.es/imo/lua-ssllabs",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "lua-requests"
}

build = {
  type = "builtin",
  copy_directories = { "docs" },
  modules = {
    ssllabs = "src/ssllabs/init.lua"
  }
}