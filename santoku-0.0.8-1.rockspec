package = "santoku"
version = "0.0.8-1"
rockspec_format = "3.0"

-- TODO: Should this source be local?
source = {
  url = "git+ssh://git@github.com/broma0/lua-santoku.git"
}

description = {
  homepage = "https://broma0.github.io/lua-santoku",
  license = "MIT"
}

-- TODO: can we do optional dependencies for
-- things like luafilesystem, socket, sqlite,
-- posix, etc?
dependencies = {
  "lua >= 5.1",
  "luafilesystem >= 1.8.0-1"
}

test_dependencies = {
  "busted >= 2.1.1",
  "luacov >= 0.15.0",
  "luacheck >= 1.1.0-1"
}

build = {

  type = "builtin",

  modules = {

    ["santoku.gen"] = "src/santoku/gen.lua",
    ["santoku.string"] = "src/santoku/string.lua",
    ["santoku.table"] = "src/santoku/table.lua",
    ["santoku.vector"] = "src/santoku/vector.lua",
    ["santoku.tree"] = "src/santoku/tree.lua",
    ["santoku.fun"] = "src/santoku/fun.lua",
    ["santoku.compat"] = "src/santoku/compat.lua",

    ["santoku.statistics"] = "src/santoku/statistics.lua",
    ["santoku.validation"] = "src/santoku/validation.lua",

    ["santoku.env"] = "src/santoku/env.lua",
    ["santoku.fs"] = "src/santoku/fs.lua",
    ["santoku.inherit"] = "src/santoku/inherit.lua",
    ["santoku.op"] = "src/santoku/op.lua",
    ["santoku.assert"] = "src/santoku/assert.lua",
    ["santoku.co"] = "src/santoku/co.lua",
    ["santoku.err"] = "src/santoku/err.lua",

    ["santoku.posix"] = "src/santoku/posix.lua",
    ["santoku.socket"] = "src/santoku/socket.lua",
    ["santoku.sqlite"] = "src/santoku/sqlite.lua",

  }

}

test = {
  type = "command",
  command = "sh test/run.sh"
}
