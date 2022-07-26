package = "ip2proxy"
version = "3.3.1-1"
source = {
   url = "git://github.com/ip2location/ip2proxy-lua.git"
}
description = {
   summary = "IP2Proxy Lua Package",
   detailed = [[
      This Lua package allows the user to query an IP address if it was being used as VPN anonymizer,
      open proxies, web proxies, Tor exits, data center, web hosting (DCH) range, search engine robots (SES)
      and residential (RES) by using IP2Proxy database. This package uses a file based database available at
      IP2Location.com. It supports both IP address in IPv4 and IPv6.
   ]],
   homepage = "https://www.ip2location.com/development-libraries/ip2proxy/lua",
   license = "MIT",
   maintainer = "support@ip2location.com"
}
dependencies = {
   "lua >= 5.3",
   "lua-nums",
   "json-lua",
   "luasocket",
   "urlencode"
}
build = {
   type    = "builtin",
   modules = {
      ["ip2proxy"] = "ip2proxy.lua",
      ["ip2proxywebservice"] = "ip2proxywebservice.lua"
   }
}