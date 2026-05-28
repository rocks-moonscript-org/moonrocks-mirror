rockspec_format = "3.0"
package = "lua-webhook"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/myrveln/lua-webhook.git",
  tag = "v1.0.0",
}
description = {
  summary = "RESTful webhook storage service for OpenResty, backed by Valkey (or Redis)",
  detailed = [[
A high-performance, RESTful webhook storage service built with OpenResty/Nginx and Lua,
backed by Valkey (or Redis). Store, retrieve, and manage webhook payloads with
advanced features like batch operations, search, and callback URL storage.
  ]],
  license = "MIT",
  homepage = "https://github.com/myrveln/lua-webhook",
  issues_url = "https://github.com/myrveln/lua-webhook/issues",
  maintainer = "myrveln",
}
dependencies = {
  "lua >= 5.1",
  "lua-cjson",
  "lua-resty-redis",
}
build = {
  type = "builtin",
  modules = {
    webhook = "webhook.lua",
    ["lua_webhook.settings"] = "lua_webhook/settings.lua",
    ["lua_webhook.cors"] = "lua_webhook/cors.lua",
    ["lua_webhook.redis_client"] = "lua_webhook/redis_client.lua",
  },
}
