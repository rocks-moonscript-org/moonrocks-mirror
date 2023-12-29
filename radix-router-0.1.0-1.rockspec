package = "radix-router"
version = "0.1.0-1"

source = {
  url = "git://github.com/vm-001/lua-radix-router",
  branch = "main",
}

description = {
  summary = "Fast API Router for Lua/LuaJIT",
  detailed = [[
    A lightweight high-performance and radix tree based router for Lua/LuaJIT/OpenResty
  ]],
  homepage = "https://github.com/vm-001/lua-radix-router",
  license = "MIT"
}
dependencies = {
  "lua >= 5.0, < 5.5"
}

build = {
  type = "builtin",
  modules = {
    ["radix-router"] = "src/router.lua",
    ["radix-router.route"] = "src/route.lua",
    ["radix-router.trie"] = "src/trie.lua",
    ["radix-router.utils"] = "src/utils.lua",
    ["radix-router.constatns"] = "src/constants.lua",
    ["radix-router.iterator"] = "src/iterator.lua",
    ["radix-router.parser"] = "src/parser/parser.lua",
    ["radix-router.parser.style.default"] = "src/parser/style/default.lua",
  },
}