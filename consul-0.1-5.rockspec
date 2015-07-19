package = "consul"
 version = "0.1-5"
 source = {
    url = "https://github.com/epicfilemcnulty/lua-consul/archive/v0.1-5.zip",
    dir = "lua-consul-0.1-5",
    tag = "v0.1-5",
 }
 description = {
    summary = "Module for working with consul HTTP API",
    detailed = [[
        Lua module to interact with consul (http://consul.io) HTTP API        
    ]],
    homepage = "https://github.com/epicfilemcnulty/lua-consul",
    license = "BSD"
 }
 dependencies = {
    "lua >= 5.1",
    "luasocket >= 2.9",
    "luasec >= 0.5",
    "lua-cjson >= 2.1"
 }
 build = {
    type = "builtin",
    modules = {
       consul = "src/consul.lua"
    }
 }
