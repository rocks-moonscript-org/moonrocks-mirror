package = "stuart-redis"
version = "0.2.1-0"
source = {
   url = "https://gitlab.com/megalithic-llc/stuart-redis/-/archive/0.2.1-0/stuart-redis-0.2.1-0.tar.gz",
   dir = "stuart-redis-0.2.1-0"
}
description = {
   summary = "Redis support for Stuart, the Spark runtime for embedding & edge computing",
   detailed = [[
      A library for reading and writing data from and to Redis with Stuart,
      the Spark runtime for embedding and edge computing.
   ]],
   homepage = "https://gitlab.com/megalithic-llc/stuart-redis",
   maintainer = "David Rauschenbach",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1",
   "net-url ~> 0.9",
   "stuart ~> 2"
}
build = {
   type = "builtin",
   modules = {
      ["stuart-redis"]                          = "src/stuart-redis.lua",
      ["stuart-redis.RedisConfig"]              = "src/stuart-redis/RedisConfig.lua",
      ["stuart-redis.RedisContext"]             = "src/stuart-redis/RedisContext.lua",
      ["stuart-redis.RedisEmbeddedContext"]     = "src/stuart-redis/RedisEmbeddedContext.lua",
      ["stuart-redis.RedisEndpoint"]            = "src/stuart-redis/RedisEndpoint.lua",
      ["stuart-redis.RedisRemoteContext"]       = "src/stuart-redis/RedisRemoteContext.lua",
      ["stuart-redis.streaming.PubSubReceiver"] = "src/stuart-redis/streaming/PubSubReceiver.lua"
   }
}
