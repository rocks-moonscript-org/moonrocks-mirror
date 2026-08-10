package = "kong-plugin-presence"
version = "1.0.1-1"

source = {
  url = "git+https://github.com/decionis/kong-plugin-presence.git",
  tag = "v1.0.1",
}

description = {
  summary = "Presence gateway filter for Kong — CAPTCHA replacement and presence verification at the API gateway.",
  detailed = [[
    A thin Kong (Lua/OpenResty) adapter of the Presence enforcement contract:
    gates protected write routes on a verified Presence Session Token, mints
    browser-safe Session Tokens without exposing the tenant credential, and can
    inject the Presence widget runtime into HTML responses. All decisions are
    delegated to the Presence Edge / Decision API.
  ]],
  homepage = "https://presence.decionis.com/developers/kong",
  license = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.17",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.presence.handler"] = "kong/plugins/presence/handler.lua",
    ["kong.plugins.presence.schema"] = "kong/plugins/presence/schema.lua",
    ["kong.plugins.presence.routes"] = "kong/plugins/presence/routes.lua",
    ["kong.plugins.presence.util"] = "kong/plugins/presence/util.lua",
  },
}
