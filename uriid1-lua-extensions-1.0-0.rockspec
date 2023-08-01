-- uriid1-lua-extensions-1.0-0.rockspec
package = "uriid1-lua-extensions"
version = "1.0-0"
source = {
  url = "git+https://github.com/uriid1/uriid1-lua-extensions.git",
}
description = {
  summary = "Custom lua extensions.",
  detailed = [[
    date, string, table, math.
  ]],
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["uriid1-lua-extensions"] = "init.lua",
    ["uriid1-lua-extensions.date"] = "date.lua",
    ["uriid1-lua-extensions.math"] = "math.lua",
    ["uriid1-lua-extensions.string"] = "string.lua",
    ["uriid1-lua-extensions.table"] = "table.lua",
  }
}
