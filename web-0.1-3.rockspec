package = "web"
 version = "0.1-3"
 source = {
    url = "https://git.deviant.guru/luarocks/web/archive/v0.1-3.zip",
    dir = "web",
 }
 description = {
    summary = "Module for working with web requests",
    detailed = [[
        Lua module to make HTTP requests (a wrapper over lua-resty-http)
        and simple route parser (poor man's API)      
    ]],
    homepage = "https://git.deviant.guru/luarocks/web",
    license = "BSD"
 }
 dependencies = {
    "lua >= 5.1",
    "lua-resty-http >= 0.10"
 }
 build = {
    type = "builtin",
    modules = {
       ext = "src/ext.lua",
       web = "src/web.lua"
    }
 }
