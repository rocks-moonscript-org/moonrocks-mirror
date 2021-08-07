package = "lua-resty-upstream-healthcheck-tls"
version = "1.0.0-0"
source = {
  url = "git://github.com/globocom/lua-resty-upstream-healthcheck",
  tag = "1.0.0"
}
description = {
  summary  = "Health-checker for Nginx upstream servers with TLS/SSL https support.",
  detailed = [[
  Health-checker for Nginx upstream servers with TLS/SSL https support.
  ]],
  homepage = "https://github.com/globocom/lua-resty-upstream-healthcheck",
  license  = "BSD-3-Clause License "
}
build = {
  type    = "builtin",
  modules = {
    ["resty.upstream.healthcheck_tls"] = "lib/resty/healthcheck.lua"
  }
}
