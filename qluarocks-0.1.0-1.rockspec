---@diagnostic disable: lowercase-global
package = "qluarocks"
version = "0.1.0-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/qluarocks.git",
  tag = "v0.1.0",
}

description = {
  homepage = "https://gitlab.com/lua_rocks/qluarocks",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  install = {
    bin = {
      ['qluarocks'] = 'bin/qluarocks'
    }
  },
  modules = {},
}
