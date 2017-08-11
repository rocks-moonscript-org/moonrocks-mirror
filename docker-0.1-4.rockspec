package = "docker"
 version = "0.1-4"
 source = {
    url = "https://git.deviant.guru/luarocks/docker/archive/v0.1-3.zip",
    dir = "docker",
 }
 description = {
    summary = "Module for working with docker API",
    detailed = [[
        Lua module to interact with docker API
    ]],
    homepage = "https://git.deviant.guru/luarocks/docker",
    license = "GPLv3"
 }
 dependencies = {
    "lua >= 5.1",
    "web >= 0.2",
    "deviant >= 0.1"
 }
 build = {
    type = "builtin",
    modules = {
       docker = "src/docker.lua"
    }
 }
