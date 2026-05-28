rockspec_format = "3.0"

package = "mods"
version = "0.3.0-1"
source = {
  branch = "main",
  tag = "v0.3.0",
  url = "git+https://github.com/luamod/mods.git",
}

description = {
  homepage = "https://luamod.github.io/mods",
  license = "MIT",
  summary = "Pure Lua modules",
  detailed = [[
Mods provides small, focused Lua modules: List, Set, is, operator, str, stringcase, tbl, template, and validate.
]],
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["mods"] = "src/mods/init.lua",
    ["mods.is"] = "src/mods/is.lua",
    ["mods.List"] = "src/mods/List.lua",
    ["mods.operator"] = "src/mods/operator.lua",
    ["mods.Set"] = "src/mods/Set.lua",
    ["mods.str"] = "src/mods/str.lua",
    ["mods.stringcase"] = "src/mods/stringcase.lua",
    ["mods.tbl"] = "src/mods/tbl.lua",
    ["mods.template"] = "src/mods/template.lua",
    ["mods.utils"] = "src/mods/utils.lua",
    ["mods.validate"] = "src/mods/validate.lua",
  },
}
