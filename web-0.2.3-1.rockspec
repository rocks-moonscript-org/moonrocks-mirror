package = "web"
 version = "0.2.3-1"
 source = {
    url = "https://git.deviant.guru/luarocks/web/archive/v0.2.3-1.zip",
    dir = "web",
 }
 description = {
    summary = "Module for working with web requests",
    detailed = [[
        Lua module to make HTTP requests (a wrapper over lua-resty-http)
        and a simple route parser (poor man's API)      
    ]],
    homepage = "https://git.deviant.guru/luarocks/web",
    license = "GPLv3"
 }
 dependencies = {
    "lua >= 5.1",
    "lua-resty-http >= 0.10",
    "deviant >= 0.1"
 }
 build = {
    type = "builtin",
    modules = {
       web = "src/web.lua"
    }
 }
