package = "santoku"
version = "0.0.20-1"
rockspec_format = "3.0"

source = {
  url = "git+ssh://git@github.com:broma0/lua-santoku.git",
  tag = "0.0.20-1"
}

description = {
  homepage = "https://github.com/broma0/lua-santoku",
  license = "MIT"
}

-- TODO: can we do optional dependencies for
-- things like luafilesystem, socket, sqlite,
-- posix, etc?
dependencies = {
  "lua >= 5.1",
  "luafilesystem >= 1.8.0-1",
  "lsqlite3 >= 0.9.5",
}

test_dependencies = {
  "busted >= 2.1.1",
  "luacov >= 0.15.0",
  "luacheck >= 1.1.0-1",
}

build = {
  type = "make",
  install_target = "luarocks-lib-install",
  install_variables  =  {
    INST_LUADIR = "$(LUADIR)",
  },
}

test = {
  type = "command",
  command = "sh test/run.sh"
}
