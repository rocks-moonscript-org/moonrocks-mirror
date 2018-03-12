package = "wtf-fork-lua-resty-redis"
version = "0.3-1"
source = {
   url = "git+https://github.com/honeybot/wtf-fork-lua-resty-redis",
   tag = "0.3"
}
description = {
   homepage = "https://github.com/honeybot/wtf-fork-lua-resty-redis",
   license = "BSD"
}
dependencies = {
   "luasocket >= 3.0rc1",
   "luasocket-unix >= 2.0.2"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.fork.resty.redis.tcp"] = "lib/resty/redis/tcp.lua",
      ["wtf.fork.resty.redis.unix"] = "lib/resty/redis/unix.lua",
   }
}
