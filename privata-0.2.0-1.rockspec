package = "privata"
version = "0.2.0-1"

source = {
  url = "git+https://github.com/ColinKennedy/privata.git",
  tag = "v0.2.0",
}

description = {
  summary = "Find Lua code that looks public but is only used privately.",
  detailed = [[
    privata is a static checker for keeping module boundaries intentional. It
    scans production Lua modules and reports interface drift: fields on a
    module table that no other module reads, globals that should be locals,
    requires of private modules from outside the package that owns them, reads
    of another module's private names, and stale literal export tables.

    Test usage does not confer publicity, so tests can reach internals without
    pinning them public forever.

    Zero runtime dependencies. Runs on Lua 5.1 through 5.4 and LuaJIT.
  ]],
  homepage = "https://github.com/ColinKennedy/privata",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["privata"] = "lua/privata/init.lua",
    ["privata.cli"] = "lua/privata/cli.lua",
    ["privata._ast"] = "lua/privata/_ast.lua",
    ["privata._checker"] = "lua/privata/_checker.lua",
    ["privata._config"] = "lua/privata/_config.lua",
    ["privata._exports"] = "lua/privata/_exports.lua",
    ["privata._fs"] = "lua/privata/_fs.lua",
    ["privata._lexer"] = "lua/privata/_lexer.lua",
    ["privata._literal"] = "lua/privata/_literal.lua",
    ["privata._methods"] = "lua/privata/_methods/init.lua",
    ["privata._models"] = "lua/privata/_models.lua",
    ["privata._modules"] = "lua/privata/_modules.lua",
    ["privata._parser"] = "lua/privata/_parser.lua",
    ["privata._presets.neovim"] = "lua/privata/_presets/neovim.lua",
    ["privata._recommend"] = "lua/privata/_recommend.lua",
    ["privata._report.json"] = "lua/privata/_report/json.lua",
    ["privata._report.text"] = "lua/privata/_report/text.lua",
    ["privata._requires"] = "lua/privata/_requires.lua",
    ["privata._scope"] = "lua/privata/_scope.lua",
    ["privata._shape"] = "lua/privata/_shape.lua",
    ["privata._source_roots"] = "lua/privata/_source_roots.lua",
  },
  install = {
    bin = {
      privata = "bin/privata.lua",
    },
  },
}
