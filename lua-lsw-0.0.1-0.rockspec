package = "lua-lsw"
version = "0.0.1-0"

description = {
  summary = "leaseweb api bindings and example cli client",
  homepage = "https://github.com/fnordpipe/lua-lsw",
  license = "MIT",
}

source = {
  url = "git+https://github.com/fnordpipe/lua-lsw.git",
  tag = "v0.0.1",
}

dependencies = {
  "luasec",
}

build = {
  type = "builtin",
  modules = {
    lsw = "src/lsw.lua",
    lswrest = "src/lswrest.lua",
  },
  install = {
    bin = { "src/lswcli.lua" }
  },
}
