package = "lua-resty-cidr-decimal"
version = "0.1.0-1"
source = {
  url = "git://github.com/reTsubasa/lua-resty-cidr-decimal",
  tag = "0.1.0"
}
description = {
  summary  = "A CIDR UTIL for OPENRESTY",
  detailed = [[
    A cidr phase util for IPv4,as a part of L7iptable
  ]],
  homepage = "https://github.com/reTsubasa/lua-resty-cidr-decimal",
  license  = "MIT"
}
build = {
  type    = "builtin",
  modules = {
    ["resty.cidr"] = "lib/resty/cidr.lua"
  }
}