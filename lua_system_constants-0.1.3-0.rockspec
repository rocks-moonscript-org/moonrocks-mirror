package = "lua_system_constants"
version = "0.1.3-0"
source = {
  url = "git://github.com/kong/lua-system-constants",
  tag = "0.1.3"
}
description = {
  summary = "System Constants",
  detailed = [[
    Lua utility library to retrieve system constants values, based on the architecture this library has been complied for.
  ]],
  homepage = "https://github.com/kong/lua-system-constants",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["lua_system_constants"] = {
      sources = {
        "lua_system_constants.c";
      }
    }
  }
}
