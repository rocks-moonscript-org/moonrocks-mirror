package = "api7-lua-resty-dns-client"
version = "7.0.1-0"
source = {
    url = "git://github.com/api7/lua-resty-dns-client",
    tag = "v7.0.1",
}

description = {
  summary = "DNS library",
  detailed = [[
    DNS client library. Including utilities to parse configuration files and
    a load balancers for round-robin, consistent-hashing, and least-
    connections approaches.
  ]],
  homepage = "https://github.com/api7/lua-resty-dns-client",
  license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "penlight ~> 1",
  "lrandom",
  "lua-resty-timer ~> 1",
  "binaryheap >= 0.4",
  "luaxxhash >= 1.0",
}

build = {
  type = "builtin",
  modules = {
    ["resty.dns.utils"] = "src/resty/dns/utils.lua",
    ["resty.dns.client"] = "src/resty/dns/client.lua",
    ["resty.dns.balancer.base"] = "src/resty/dns/balancer/base.lua",
    ["resty.dns.balancer.consistent_hashing"] = "src/resty/dns/balancer/consistent_hashing.lua",
    ["resty.dns.balancer.least_connections"] = "src/resty/dns/balancer/least_connections.lua",
    ["resty.dns.balancer.handle"] = "src/resty/dns/balancer/handle.lua",
    ["resty.dns.balancer.round_robin"] = "src/resty/dns/balancer/round_robin.lua",
  },
}
