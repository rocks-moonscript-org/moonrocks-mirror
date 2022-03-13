package = "lua-resty-redis-client"
version = "0.2.1-0"
source = {
   url = "git://github.com/RunnningPig/lua-resty-redis-client",
   tag = "v0.2.1"
}

description = {
   summary = "Wrapper for lua-resty-redis, easy to use",
   homepage = "https://github.com/RunnningPig/lua-resty-redis-client",
   license = "Apache License 2.0"
}

build = {
   type = "builtin",
   modules = {
      ["resty.redis.client"] = "lib/resty/redis/client.lua"
   }
}
