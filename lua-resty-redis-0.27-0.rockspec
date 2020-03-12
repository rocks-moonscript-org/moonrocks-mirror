package = "lua-resty-redis"
version = "0.27-0"
source = {
  url = "https://github.com/openresty/lua-resty-redis/archive/v0.27.tar.gz",
  dir = "lua-resty-redis-0.27"
}
description = {
  summary = "Lua redis client driver for the ngx_lua based on the cosocket API",
  detailed = [[
    This Lua library takes advantage of ngx_lua's cosocket API, which ensures 100% nonblocking behavior.
    Note that at least ngx_lua 0.5.14 or OpenResty 1.2.1.14 is required.
  ]],
  homepage = "https://github.com/openresty/lua-resty-redis",
  license = "BSD"
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
