package = "tomltools"
version = "1.0.0-1"
rockspec_format = "3.0"

source = {
   url = "git+https://github.com/mbfoss/tomltools.git",
}

description = {
   summary  = "Pure-Lua TOML 1.1 parser, decoder, encoder, formatter, and JSON-Schema validator",
   detailed = [[
      tomltools is a dependency-free, pure-Lua library for working with TOML:
      a lossless CST parser, a decoder to Lua tables, an encoder back to TOML,
      and a partial JSON Schema (Draft 2020-12) validator with source ranges.
      Works on Lua 5.1+ and LuaJIT.
   ]],
   homepage = "https://github.com/mbfoss/tomltools",
   license  = "MIT",
}

dependencies = {
   "lua >= 5.1",
}

test_dependencies = {
   "busted",
}

test = {
   type = "busted",
}

build = {
   type = "builtin",
   modules = {
      ["tomltools"]                  = "lua/tomltools/init.lua",
      ["tomltools.Cst"]              = "lua/tomltools/Cst.lua",
      ["tomltools.DecodeTree"]       = "lua/tomltools/DecodeTree.lua",
      ["tomltools.decoder"]          = "lua/tomltools/decoder.lua",
      ["tomltools.encoder"]          = "lua/tomltools/encoder.lua",
      ["tomltools.formatter"]        = "lua/tomltools/formatter.lua",
      ["tomltools.inspect"]          = "lua/tomltools/inspect.lua",
      ["tomltools.parser"]              = "lua/tomltools/parser.lua",
      ["tomltools.schema_nav"]          = "lua/tomltools/schema_nav.lua",
      ["tomltools.validator"]           = "lua/tomltools/validator.lua",
      ["tomltools.parser_util"]    = "lua/tomltools/parser_util.lua",
      ["tomltools.schema_util"]    = "lua/tomltools/schema_util.lua",
      ["tomltools.std"]            = "lua/tomltools/std.lua",
      ["tomltools.table_util"]     = "lua/tomltools/table_util.lua",
      ["tomltools.Tree"]           = "lua/tomltools/Tree.lua",
   },
}
