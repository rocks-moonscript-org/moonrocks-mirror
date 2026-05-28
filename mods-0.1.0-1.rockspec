rockspec_format = "3.0"

package = "mods"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/luamod/mods.git",
  tag = "v0.1.0",
}

description = {
  summary = "Pure standalone Lua modules",
  detailed = [[
Mods provides small, focused Lua modules: List, Set, str, stringcase, and table utilities.
]],
  homepage = "https://github.com/luamod/mods",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["mods"] = "src/mods/init.lua",
    ["mods.List"] = "src/mods/List.lua",
    ["mods.Set"]  = "src/mods/Set.lua",
    ["mods.str"]  = "src/mods/str.lua",
    ["mods.stringcase"] = "src/mods/stringcase.lua",
    ["mods.tbl"]  = "src/mods/tbl.lua",
  },
}
