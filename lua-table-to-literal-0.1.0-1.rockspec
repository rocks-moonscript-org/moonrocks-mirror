package = "lua-table-to-literal"
version = "0.1.0-1"
source = {
  branch = "master",
  url = "https://github.com/reTsubasa/lua-table-to-literal-string.git",
}
description = {
  summary  = "This is a module for convert the lua table(array/hash) to literal string just like the lua code itself",
  detailed = [[
    This is a module for convert the lua table(array/hash) to literal string just like the lua code itself
  ]],
  homepage = "https://github.com/reTsubasa/lua-table-to-literal-string.git",
  license  = "MIT"
}
dependencies = {
}
build = {
  type    = "builtin",
  modules = {
    ["t_to_l"] = "src/t_to_l.lua",
  },
}