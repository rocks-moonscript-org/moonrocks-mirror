package = "luaparse"
version = "0.1.0-1"

source = {
  url = "https://github.com/entropyMaker/luaparse/archive/refs/tags/v0.1.0.tar.gz",
  dir = "luaparse-0.1.0",
}

description = {
  summary = "Pure Lua lexer and parser for multiple Lua versions",
  detailed = [[
luaparse is a pure Lua lexer and parser for the Lua programming language,
with version-configurable support for Lua 5.1 through Lua 5.5 and LuaJIT.
]],
  homepage = "https://github.com/entropyMaker/luaparse",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["luaparse.lexer"] = "luaparse/lexer.lua",
    ["luaparse.parser"] = "luaparse/parser.lua",
    ["luaparse.semantic"] = "luaparse/semantic.lua",
  },
}
