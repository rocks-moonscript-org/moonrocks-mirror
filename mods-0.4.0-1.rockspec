rockspec_format = "3.0"

package = "mods"
version = "0.4.0-1"
source = {
  branch = "main",
  tag = "v0.4.0",
  url = "git+https://github.com/luamod/mods.git",
}

description = {
  summary = "Pure Lua modules",
  homepage = "https://luamod.github.io/mods",
  license = "MIT",
  detailed = [[
Mods provides small, focused Lua modules:
is, keyword, List, operator, repr, runtime, Set, str, stringcase, tbl, 
template, and validate.
]],
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["mods"] = "src/mods/init.lua",
    ["mods._fs"] = "src/mods/_fs.lua",
    ["mods.is"] = "src/mods/is.lua",
    ["mods.keyword"] = "src/mods/keyword.lua",
    ["mods.List"] = "src/mods/List.lua",
    ["mods.operator"] = "src/mods/operator.lua",
    ["mods.repr"] = "src/mods/repr.lua",
    ["mods.runtime"] = "src/mods/runtime.lua",
    ["mods.Set"] = "src/mods/Set.lua",
    ["mods.str"] = "src/mods/str.lua",
    ["mods.stringcase"] = "src/mods/stringcase.lua",
    ["mods.tbl"] = "src/mods/tbl.lua",
    ["mods.template"] = "src/mods/template.lua",
    ["mods.utils"] = "src/mods/utils.lua",
    ["mods.validate"] = "src/mods/validate.lua",
  },
}
