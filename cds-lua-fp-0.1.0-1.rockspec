rockspec_format = "3.0"
package = "cds-lua-fp"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/cds-io/cds-lua-fp.git",
  tag = "v0.1.0",
}
description = {
  summary = "Lists, the Result convention and a fallback for missing names, for Lua 5.1 and up",
  detailed = [[
    cds.fp: map, filter, reduce, find, find_map, flat_map, filter_map, any,
    all, set, unique, keys and each over lists, the function argument last.
    cds.result: bind, map, context and traverse over Lua's own error
    convention, a value or nil and an error. cds.module: the fallback a
    module returns through so a name it does not have fails at the call, in
    words. cds.needs: a check a program runs at startup for the functions it
    declares. Pure Lua 5.1 and up, with language-server annotations throughout.
  ]],
  homepage = "https://github.com/cds-io/cds-lua-fp",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
test_dependencies = {
  "busted",
}
build = {
  type = "builtin",
  modules = {
    ["cds.fp"] = "lua/cds/fp.lua",
    ["cds.result"] = "lua/cds/result.lua",
    ["cds.module"] = "lua/cds/module.lua",
    ["cds.needs"] = "lua/cds/needs.lua",
  },
  copy_directories = { "doc" },
}
test = {
  type = "busted",
}
