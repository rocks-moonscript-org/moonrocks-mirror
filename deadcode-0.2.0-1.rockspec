package = "deadcode"
version = "0.2.0-1"

source = {
  url = "git+https://github.com/ColinKennedy/lua-deadcode.git",
  tag = "v0.2.0",
}

description = {
  summary = "Find Lua code that is never used, and report it.",
  detailed = [[
    deadcode is a static checker that reports code nothing reaches: unused
    locals and parameters, functions and module fields no one calls, requires
    nothing uses, unreachable statements, and branches that can never be
    taken. It never edits your files.

    Parses the full Lua 5.1-5.4 and LuaJIT grammar, so it can analyse modern
    code whatever interpreter it runs on itself.

    Zero runtime dependencies, not even LuaFileSystem.
  ]],
  homepage = "https://github.com/ColinKennedy/lua-deadcode",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["deadcode.actions.find_lua_files"] = "deadcode/actions/find_lua_files.lua",
    ["deadcode.actions.find_unused_names"] = "deadcode/actions/find_unused_names.lua",
    ["deadcode.actions.report"] = "deadcode/actions/report.lua",
    ["deadcode.args"] = "deadcode/args.lua",
    ["deadcode.cli"] = "deadcode/cli.lua",
    ["deadcode.code_item"] = "deadcode/code_item.lua",
    ["deadcode.constants"] = "deadcode/constants.lua",
    ["deadcode.fs"] = "deadcode/fs.lua",
    ["deadcode.ignore"] = "deadcode/ignore.lua",
    ["deadcode.lexer"] = "deadcode/lexer.lua",
    ["deadcode.noqa"] = "deadcode/noqa.lua",
    ["deadcode.parser"] = "deadcode/parser.lua",
    ["deadcode.patterns"] = "deadcode/patterns.lua",
    ["deadcode.resolver"] = "deadcode/resolver.lua",
    ["deadcode.tach"] = "deadcode/tach.lua",
  },
  install = {
    bin = {
      deadcode = "bin/deadcode",
    },
  },
}
