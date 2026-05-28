rockspec_format = "3.0"

package = "mods"
version = "0.5.0-1"
source = {
  branch = "main",
  tag = "v0.5.0",
  url = "git+https://github.com/luamod/mods.git",
}

description = {
  summary = "Pure Lua modules",
  homepage = "https://luamod.github.io/mods",
  license = "MIT",
  detailed = [[
Mods provides small, focused Lua modules:
fs, is, keyword, List, ntpath, operator, path, posixpath, repr, runtime, Set,
str, stringcase, tbl, template, and validate.
]],
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["mods"] = "src/mods/init.lua",
    ["mods.fs"] = "src/mods/fs.lua",
    ["mods.is"] = "src/mods/is.lua",
    ["mods.keyword"] = "src/mods/keyword.lua",
    ["mods.List"] = "src/mods/List.lua",
    ["mods.ntpath"] = "src/mods/ntpath.lua",
    ["mods.operator"] = "src/mods/operator.lua",
    ["mods.path"] = "src/mods/path.lua",
    ["mods.posixpath"] = "src/mods/posixpath.lua",
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
