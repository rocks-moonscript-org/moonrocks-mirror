package = "deviant"
 version = "0.1.3-1"
 source = {
    url = "https://git.deviant.guru/luarocks/deviant/archive/v0.1.3-1.zip",
    dir = "deviant",
 }
 description = {
    summary = "A set of small useful functions extending lua's standard library",
    detailed = [[
        Lua module with a set of functions extending standard libraries:
        copying & merging tables, working with files, working with modules.
    ]],
    homepage = "https://git.deviant.guru/luarocks/deviant",
    license = "GPLv3"
 }
 dependencies = {
    "lua >= 5.1"
 }
 build = {
    type = "builtin",
    modules = {
       deviant = "src/deviant.lua"
    }
 }
