package = "lua-lswcli"
version = "0.1.0-0"

description = {
  summary = "leaseweb api cli",
  homepage = "https://github.com/fnordpipe/lua-lsw",
  license = "MIT",
}

source = {
  url = "git+https://github.com/fnordpipe/lua-lsw.git",
  tag = "v0.1.0",
}

dependencies = {
  "lua-lsw >= 0.1.0",
  "luafilesystem",
}

build = {
  type = "builtin",
  modules = {
    ['lswcli.bareMetal'] = "src/lswcli/bareMetal.lua",
    ['lswcli.config'] = "src/lswcli/config.lua",
    ['lswcli.shell'] = "src/lswcli/shell.lua",
  },
  install = {
    bin = { "src/lsw" }
  },
}
