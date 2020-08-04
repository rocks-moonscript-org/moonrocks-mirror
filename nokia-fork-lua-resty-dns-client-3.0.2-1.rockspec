package = "nokia-fork-lua-resty-dns-client"
version = "3.0.2-1"
source = {
  url = "https://github.com/nokia/lua-resty-dns-client/archive/v3.0.2-nokia-1.tar.gz",
  dir = "lua-resty-dns-client-3.0.2-nokia-1"
}
description = {
  summary = "DNS library",
  detailed = [[
    This is a Nokia fork for the following library:
    https://github.com/Kong/lua-resty-dns-client
  ]],
  homepage = "https://github.com/nokia/lua-resty-dns-client",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "penlight > 1.1, < 2.0",
  "lrandom",
  "lua-resty-timer < 1.0",
  "binaryheap >= 0.4",
}
build = {
  type = "builtin",
  modules = {
    ["resty.dns.utils"] = "src/resty/dns/utils.lua",
    ["resty.dns.client"] = "src/resty/dns/client.lua",
    ["resty.dns.balancer.base"] = "src/resty/dns/balancer/base.lua",
    ["resty.dns.balancer.ring"] = "src/resty/dns/balancer/ring.lua",
    ["resty.dns.balancer.least_connections"] = "src/resty/dns/balancer/least_connections.lua",
    ["resty.dns.balancer.handle"] = "src/resty/dns/balancer/handle.lua",
  },
}
