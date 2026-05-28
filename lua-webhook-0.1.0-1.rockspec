rockspec_format = "3.0"
package = "lua-webhook"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/myrveln/lua-webhook.git",
  tag = "v0.1.0",
}
description = {
  summary = "RESTful webhook storage service for OpenResty, backed by Valkey",
  detailed = [[
A high-performance webhook storage service built with OpenResty/Nginx and Lua,
backed by Valkey/Redis. Provides REST endpoints for storing, retrieving,
searching, exporting, and managing TTL'd webhook payloads.
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
  },
}
