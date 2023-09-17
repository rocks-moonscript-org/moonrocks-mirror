package = "santoku-web"
version = "0.0.47-1"
rockspec_format = "3.0"

source = {
  url = "git+ssh://git@github.com:treadwelllane/lua-santoku-web.git",
  tag = "0.0.47-1"
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku-web",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "santoku >= 0.0.44-1",
  "lsqlite3 >= 0.9.5-1"
}

test_dependencies = {

  -- TODO: Should this be pulled in by santoku?
  -- It's an optional dependency that for our
  -- purposes here is needed. The alernative is
  -- to maintin luafilesystem as a separate dep
  -- in this array, which isn't so bad.
  "luafilesystem >= 1.8.0-1",

  -- TODO: santoku cli should be a
  -- globally-installed dev dependency checked
  -- for via make
  --
  -- "santoku-cli >= 0.0.22-1",

  "luassert >= 1.9.0-1",

  -- TODO: temporarily using manually installed
  -- broma0/luacov while PR pending:
  --
  -- https://github.com/lunarmodules/luacov/pull/102
  "luacov >= 0.15.0",

  -- TODO: luacheck should also be a
  -- globally-installed dev dependency checked
  -- for via make
  -- "luacheck >= 1.1.0-1",

}

build = {
  type = "make",
  install_target = "luarocks-install",
  build_variables  =  {
    CFLAGS = "$(CFLAGS)",
    LDFLAGS = "$(LDFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
  },
  install_variables  =  {
    INST_LIBDIR = "$(LIBDIR)",
    INST_LUADIR = "$(LUADIR)",
  },
}

test = {
  type = "command",
  command = "make luarocks-test"
}
