rockspec_format = "3.0"
package = "cluacov"
version = "0.1.4-1"
source = {
   url = "git+https://github.com/luarocks/cluacov.git",
   tag = "0.1.4",
}
description = {
   summary = "C extensions for LuaCov",
   detailed = [[
Optional C extensions for LuaCov, improving performance and reducing
number of lines incorrectly marked as missed. Depends on LuaCov.
   ]],
   homepage = "https://github.com/luarocks/cluacov",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luacov >= 0.13.0"
}
build = {
   type = "builtin",
   modules = {
      ["cluacov.deepactivelines"] = "src/cluacov/deepactivelines.c",
      ["cluacov.hook"] = "src/cluacov/hook.c",
      ["cluacov.version"] = "src/cluacov/version.lua"
   }
}
test = {
   type = "busted"
}