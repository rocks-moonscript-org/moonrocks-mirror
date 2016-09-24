package = "host"
version = "0.1.0-1"
local v = version:gsub("%-%d", "")
source = {
   url = "git://github.com/xpol/lua-host",
   tag = "v"..v
}
description = {
   summary = "Constants about host os/arch/bits/endian for Lua.",
   detailed = [[Constants about host os/arch/bits/endian for Lua.]],
   homepage = "https://github.com/xpol/lua-host",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
       host = {
           sources = { "host.c" },
       }
   }
}
