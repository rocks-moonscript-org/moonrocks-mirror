package = "stuart-redis"
version = "0.1.0-0"
source = {
   url = "https://github.com/BixData/stuart-redis/archive/0.1.0-0.tar.gz",
   dir = "stuart-redis-0.1.0-0"
}
description = {
   summary = "Redis support for Stuart, the Spark runtime for embedding & edge computing",
   detailed = [[
      A library for reading and writing data from and to Redis with Stuart,
      the Spark runtime for embedding and edge computing.
   ]],
   homepage = "https://github.com/BixData/stuart-redis",
   maintainer = "David Rauschenbach",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1",
   "stuart ~> 2"
}
build = {
   type = "builtin",
   modules = {
      ["stuart"] = "src/stuart-redis.lua",
      ["stuart-redis.streaming.PubSubReceiver"] = "src/stuart-redis/streaming/PubSubReceiver.lua"
   }
}
