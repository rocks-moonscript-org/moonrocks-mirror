package = "santoku-web"
version = "0.0.22-1"
rockspec_format = "3.0"

source = {
  url = "git+ssh://git@github.com:broma0/lua-santoku-web.git",
  tag = "0.0.22-1"
}

description = {
  homepage = "https://github.com/broma0/lua-santoku-web",
  license = "MIT"
}

-- TODO: Santoku not currently required.
dependencies = {
  "lua >= 5.1",
  -- "santoku >= 0.0.22-1",
}

test_dependencies = {

  "santoku >= 0.0.22-1",

  -- TODO: Should this be pulled in by santoku?
  -- It's an optional dependency that for our
  -- purposes here is needed. The alernative is
  -- to maintin luafilesystem as a separate dep
  -- in this array, which isn't so bad.
  "luafilesystem >= 1.8.0-1",

  -- TODO: santoku cli should be a
  -- globally-installed dev dependency checked
  -- for via make
  -- "santoku-cli >= 0.0.22-1",
  "luassert >= 1.9.0-1",

  -- TODO: luacov relies on io.popen("pwd"),
  -- which fails in emscripten. Fork & submit a
  -- PR to fix this.
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
