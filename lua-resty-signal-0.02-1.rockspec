package = "lua-resty-signal"
version = "0.02-1"
source = {
   url = "git://github.com/openresty/lua-resty-signal",
   tag = "v0.02",
}
description = {
   summary = "lua-resty-signal - Lua library for killing or sending signals to Linux processes",
   detailed = [[

    Lua library for killing or sending signals to UNIX processes 

   ]],
   homepage = "https://openresty.org/",
   license = "BSD"
}

build = {
   type = "builtin",

  modules = {
    ["resty.signal"] = "lib/resty/signal.lua",
  },
}
