package = "santoku"
version = "0.0.79-1"
rockspec_format = "3.0"

source = {
  url = "git+ssh://git@github.com:treadwelllane/lua-santoku.git",
  tag = "0.0.79-1"
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku",
  license = "MIT"
}

-- TODO: can we do optional dependencies for
-- things like luafilesystem, socket, sqlite,
-- posix, etc?
--
-- TODO: Create a santoku lib to gracefully wrap
-- functions which require an optional
-- dependency
dependencies = {

  "lua >= 5.1",

  -- Optional dependencies:

  -- "lua-zlib >= 1.2-2",
  -- "luafilesystem >= 1.8.0-1",
  -- "lsqlite3 >= 0.9.5",
  -- "inspect >= 3.1.3-0"

}

test_dependencies = {
  "luacov >= 0.15.0",
  "luacheck >= 1.1.0-1",
  "lua-zlib >= 1.2-2",
  "luafilesystem >= 1.8.0-1",
  "lsqlite3 >= 0.9.5",
  "inspect >= 3.1.3-0"
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
  command = "make luarocks-test"
}
