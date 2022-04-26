package = "itte"
version = "1.0-1"
source = {
   url = "git+https://git.tilde.town/mio/itte",
   tag = "1.0",
}
description = {
   summary = "Mini IRC bot module in lua",
   detailed = [[
      Currently supports:
       - Authentication via SASL (plain) or Nickserv
       - Joining multiple servers
       - Ad-hoc connecting to servers and joining channels
       - Config reload
   ]],
   homepage = "https://git.tilde.town/mio/itte",
   license = "BSD-3.0"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luasec >= 0.9",
   "luasocket >= 2.9"
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = {
      itte = "itte.lua",
      itteutil = "itteutil.lua"
   },
}
