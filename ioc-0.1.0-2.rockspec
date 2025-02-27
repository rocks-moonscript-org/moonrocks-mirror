---@diagnostic disable: lowercase-global
package = "ioc"
version = "0.1.0-2"

source = {
  url = "git+https://gitlab.com/lua_rocks/ioc",
  tag = "v0.1.0"
}

description = {
  summary = "Invertion of Control. DI Container",
  detailed = [[
  A simple lua-library that provides dependency injection container functionality.
]],
  homepage = "https://gitlab.com/lua_rocks/ioc",
  license = "MIT"
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = "builtin",
  modules = {
    ["ioc.Container"] = "src/ioc/Container.lua",
  }
}
