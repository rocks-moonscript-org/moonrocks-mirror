package = "rxi-json-lua"
version = "e1dbe93-0" -- git commit: https://github.com/rxi/json.lua/commit/e1dbe93f7cd3f29cf51820346f1d08fdaf1dce55
source = {
    url = "https://github.com/rxi/json.lua/archive/e1dbe93f7cd3f29cf51820346f1d08fdaf1dce55.zip",
    dir = "json.lua-e1dbe93f7cd3f29cf51820346f1d08fdaf1dce55"
}
description = {
   summary = "A lightweight JSON library for Lua",
   detailed = [[
    - Implemented in pure Lua: works with 5.1, 5.2, 5.3 and JIT
    - Fast: generally outperforms other pure Lua JSON implementations (benchmark scripts)
    - Tiny: around 290sloc, 9kb
    - Proper error messages, eg: expected '}' or ',' at line 203 col 30

      See github readme for more information: https://github.com/rxi/json.lua/blob/master/README.md
   ]],
   license = "MIT",
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["rxi-json-lua"] = "json.lua"
   }
}