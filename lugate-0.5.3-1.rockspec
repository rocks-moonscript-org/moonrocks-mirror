package = "lugate"
version = "0.5.3-1"
source = {
  url = "git://github.com/zinovyev/lugate",
  tag = "0.5.3",
}
description = {
  summary = "A library for building JSON-RPC 2.0 Gateway API just inside of your NGINX configuration file",
  detailed = [[
      Lugate is a binding over OpenResty Lua NGINX module.
      This library provides parsing, validating and routing features for JSON-RPC 2.0 protocol.
    ]],
  homepage = "http://github.com/zinovyev/lugate",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "rapidjson ~> 0.4",
  "redis-lua ~> 2.0",
}
build = {
  type = "builtin",
  modules = {
    lugate = "src/lugate.lua",
    ["lugate.request"] = "src/lugate/request.lua",
    ["lugate.cache.cache"] = "src/lugate/cache/cache.lua",
    ["lugate.cache.redis"] = "src/lugate/cache/redis.lua",
  },
}
