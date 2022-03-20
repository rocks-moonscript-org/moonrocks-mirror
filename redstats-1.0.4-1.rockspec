package = "redstats"
 version = "1.0.4-1"
 source = {
    url = "git+https://github.com/epicfilemcnulty/lua-redis-stats.git",
    tag = "v1.0.4"
 }
 description = {
    summary = "Lua library for openresty to save request stats to redis",
    detailed = [[
        TODO
    ]],
    homepage = "https://github.com/epicfilemcnulty/lua-redis-stats.git",
    license = "GPLv3"
 }
 dependencies = {
    "lua >= 5.1",
 }
 build = {
    type = "builtin",
    modules = {
       redstats = "src/redis-stats.lua"
    }
 }
