
package = 'cirru-parser'
version = '0.1-1'
source = {
  url = 'git://github.com/Cirru/parser.moon',
  dir = 'parser.moon'
}
description = {
  summary = "Cirru Parser in Lua(MoonScript)",
  detailed = [[
    Mannual converted from CoffeeScript
  ]],
  homepage = 'https://github.com/Cirru/parser.moon',
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["cirru-parser"] = "cirru-parser/parser.lua",
    ["cirru-parser.tree"] = "cirru-parser/tree.lua",
    ["cirru-parser.array"] = "cirru-parser/array.lua"
  }
}
