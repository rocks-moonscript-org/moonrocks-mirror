package = "rxi-json"
version = "dbf4b2d-0" -- https://github.com/rxi/json.lua/tree/dbf4b2d

source = {
    url = "https://github.com/rxi/json.lua/archive/dbf4b2dd2eb7c23be2773c89eb059dadd6436f94.zip",
    dir = "json.lua-dbf4b2dd2eb7c23be2773c89eb059dadd6436f94"
}

description = {
   summary = "A lightweight JSON library for Lua",
   detailed = [[
    - Implemented in pure Lua: works with 5.1, 5.2, 5.3 and JIT
    - Fast: generally outperforms other pure Lua JSON implementations (benchmark scripts)
    - Tiny: around 280sloc, 9kb
    - Proper error messages, eg: expected '}' or ',' at line 203 col 30

      See github readme for more information: https://github.com/rxi/json.lua/blob/master/README.md
   ]],
   license = "MIT",
}

dependencies = {
    "lua >= 5.1 < 5.5"
}

build = {
   type = "builtin",
   modules = {
      json = "json.lua", -- compatibility reason
      ["rxi-json"] = "json.lua"
   }
}
