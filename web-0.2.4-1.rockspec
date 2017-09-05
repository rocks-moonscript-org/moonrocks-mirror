package = "web"
 version = "0.2.4-1"
 source = {
    url = "https://git.deviant.guru/luarocks/web/archive/v0.2.4-1.zip",
    dir = "web",
 }
 description = {
    summary = "Module for working with web requests",
    detailed = [[
        Lua module to make HTTP requests easy way + a simple
        route parser (poor man's API). Under the hood this module
        uses either lua-resty-http (if available) or luasocket module 
        to make HTTP(s) requests. Since only one of these modules
        is used, they are not mentioned in the dependencies for this
        rock, and one of them must be already installed. If you
        want to make HTTPS requests using luasocket you will 
        also have to have luasec module installed.
    ]],
    homepage = "https://git.deviant.guru/luarocks/web",
    license = "GPLv3"
 }
 dependencies = {
    "lua >= 5.1",
    "deviant >= 0.1.3"
 }
 build = {
    type = "builtin",
    modules = {
       web = "src/web.lua"
    }
 }
