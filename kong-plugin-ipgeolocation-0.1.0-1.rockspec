package = "kong-plugin-ipgeolocation"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/IPGeolocation/kong-plugin-ipgeolocation.git",
  tag = "v0.1.0",
}

description = {
  summary = "IP intelligence and security for Kong Gateway, powered by IPGeolocation.io MMDB databases",
  detailed = [[
    Enriches requests with location, network and security data from local IPGeolocation.io MMDB
    databases and enforces IP-based security policy (countries, continents, ASNs, VPN, proxy, Tor,
    bots, threat score), with no network calls on the request path and no native dependencies.
  ]],
  homepage = "https://github.com/IPGeolocation/kong-plugin-ipgeolocation",
  license = "MIT",
}

dependencies = {
  "lua ~> 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.ipgeolocation.fields"] = "kong/plugins/ipgeolocation/fields.lua",
    ["kong.plugins.ipgeolocation.handler"] = "kong/plugins/ipgeolocation/handler.lua",
    ["kong.plugins.ipgeolocation.headers"] = "kong/plugins/ipgeolocation/headers.lua",
    ["kong.plugins.ipgeolocation.iputil"] = "kong/plugins/ipgeolocation/iputil.lua",
    ["kong.plugins.ipgeolocation.mmdb"] = "kong/plugins/ipgeolocation/mmdb.lua",
    ["kong.plugins.ipgeolocation.plan"] = "kong/plugins/ipgeolocation/plan.lua",
    ["kong.plugins.ipgeolocation.policy"] = "kong/plugins/ipgeolocation/policy.lua",
    ["kong.plugins.ipgeolocation.registry"] = "kong/plugins/ipgeolocation/registry.lua",
    ["kong.plugins.ipgeolocation.resolver"] = "kong/plugins/ipgeolocation/resolver.lua",
    ["kong.plugins.ipgeolocation.schema"] = "kong/plugins/ipgeolocation/schema.lua",
  },
}
