package = "santoku"
version = "0.0.5-1"
rockspec_format = "3.0"

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

    ["santoku"] = "src/santoku.lua",

    ["santoku.co"] = "src/santoku/co.lua",
    ["santoku.tuple"] = "src/santoku/tuple.lua",
    ["santoku.err"] = "src/santoku/err.lua",
    ["santoku.fs"] = "src/santoku/fs.lua",
    ["santoku.gen"] = "src/santoku/gen.lua",
    ["santoku.inherit"] = "src/santoku/inherit.lua",
    ["santoku.op"] = "src/santoku/op.lua",
    ["santoku.statistics"] = "src/santoku/statistics.lua",
    ["santoku.string"] = "src/santoku/string.lua",
    ["santoku.utils"] = "src/santoku/utils.lua",
    ["santoku.validation"] = "src/santoku/validation.lua",
    ["santoku.assert"] = "src/santoku/assert.lua",
    ["santoku.tree"] = "src/santoku/tree.lua",

    ["santoku.posix"] = "src/santoku/posix.lua",
    ["santoku.socket"] = "src/santoku/socket.lua",
    ["santoku.sqlite"] = "src/santoku/sqlite.lua",

  }

}

test = {
  type = "command",
  command = "sh test/run.sh"
}
