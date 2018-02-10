package = "lua-resty-redis"
version = "0.26-0"
source = {
  url = "https://github.com/openresty/lua-resty-redis/archive/v0.26.tar.gz",
  dir = "lua-resty-redis-0.26"
}
description = {
  summary = "",
  detailed = [[
  ]],
  homepage = "",
  license = ""
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["resty.redis"] = "lib/resty/redis.lua",
  }
}
