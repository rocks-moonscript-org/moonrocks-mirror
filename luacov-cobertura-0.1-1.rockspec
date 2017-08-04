package = "luacov-cobertura"
version = "0.1-1"
source = {
   url = "https://github.com/krux/luacov-cobertura.git",
   tag = "v0.1",
}
description = {
   summary = "LuaCov to Cobertura report generator",
   homepage = "https://github.com/krux/luacov-cobertura",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luacov",
}
build = {
  type = "builtin",
  modules = {
    ["luacov.reporter.cobertura"] = "src/luacov/reporter/cobertura.lua",
    ["luacov.cobertura.luatoxml"] = "src/luacov/cobertura/luatoxml.lua",
  },
  install = {
    bin = {
      ["luacov-cobertura"] = "src/bin/luacov-cobertura",
    }
  }
}
