package = "lua-light-wings"
version = "0.1-0"
source = {
   url = "git://github.com/burij/lua-light-wings",
   tag = "v.0.1.0"
}
description = {
   summary = "Personal set of useful functions with beautiful syntax to extend Lua Language",
   detailed = [[
      Lua Light Wings is a collection of utility functions that extend Lua's capabilities.
      Features include:
      - Type checking and validation
      - Table manipulation (map, filter, reduce)
      - Console output formatting
      - Path, email, and URL validation
      - And more...
   ]],
   homepage = "https://github.com/burij/lua-light-wings",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["llw-core"] = "modules/llw-core.lua",
      ["llw-extended-lib"] = "modules/llw-extended-lib.lua"
   }
} 