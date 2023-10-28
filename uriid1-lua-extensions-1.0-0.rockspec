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
    [package] = "src/init.lua",
    [package..".date"] = "src/"..package.."/date.lua",
    [package..".math"] = "src/"..package.."/math.lua",
    [package..".table"] = "src/"..package.."/table.lua",
    [package..".string"] = "src/"..package.."/string.lua",
  }
}
