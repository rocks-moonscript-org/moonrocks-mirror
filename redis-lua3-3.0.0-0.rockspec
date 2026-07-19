package = "redis-lua3"
version = "3.0.0-0"

source = {
   url = "git+https://github.com/leafo/redis-lua.git",
   tag = "v3.0.0"
}

description = {
   summary = "A Lua client library for the redis key value storage system.",
   detailed = [[
      A Lua client library for the redis key value storage system.
   ]],
   homepage = "https://github.com/leafo/redis-lua",
   license = "MIT/X11"
}

dependencies = {
   "lua >= 5.1",
   "luasocket"
}

build = {
   type = "builtin",
   modules = {
      redis = "src/redis.lua"
   }
}
