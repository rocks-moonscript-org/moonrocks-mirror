package = "ggcode.etunnel"
version = "1.2.3-1"
source = {
  url = "git+https://github.com/topcheer/etunnel",
  tag = "v1.2.0"
}
description = {
  summary = "Expose local services to the internet in one line of code: instant public HTTPS URLs with automatic TLS, through NAT and firewalls, no signup.",
  detailed = [[
Buffer-based protocol client for etunnel: connect out to an etunnel
server over WebSocket and expose a local service at a public HTTPS URL.
]],
  homepage = "https://github.com/topcheer/etunnel",
  license = "MIT"
}
dependencies = {
  "lua >= 5.2",
  "luasocket >= 3.0",
  "luasec >= 1.0"
}
build = {
  type = "none",
  install = {
    lua = { ["ggcode.etunnel"] = "etunnel.lua" }
  }
}
