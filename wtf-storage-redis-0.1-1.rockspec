package = "wtf-storage-redis"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-storage-redis",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-storage-redis",
   license = "MIT"
}
dependencies = {
   "wtf-fork-lua-resty-redis >= 0.2"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.storages.redis"] = "wtf/storages/redis.lua"
   }
}
