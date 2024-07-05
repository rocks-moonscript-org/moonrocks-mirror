package = "ip2whois"
version = "1.0.0-1"
source = {
   url = "git://github.com/ip2whois/ip2whois-lua.git"
}
description = {
   summary = "IP2WHOIS Lua Package",
   detailed = [[
      This Lua package enables user to easily implement the checking of WHOIS information for a particular domain into their solution using the API from www.ip2whois.com.
   ]],
   homepage = "https://github.com/ip2whois/ip2whois-lua",
   license = "MIT",
   maintainer = "support@ip2whois.com"
}
dependencies = {
   "lua >= 5.3",
   "json-lua",
   "luasocket",
   "urlencode",
   "idna",
   "net-url"
}
build = {
   type    = "builtin",
   modules = {
      ["ip2whois"] = "ip2whois.lua"
   }
}