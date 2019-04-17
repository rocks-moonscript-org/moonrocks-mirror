package = "coro-http-luv"
version = "1.0.0-0"
source = {
   url = "git://github.com/squeek502/coro-http-luv",
   tag = version,
}
description = {
   summary = "coro-http from Lit converted to work with plain Lua + Luv",
   detailed = "coro-http from Lit converted to work with plain Lua + Luv",
   homepage = "https://github.com/squeek502/coro-http-luv"
}
dependencies = {
   "lua >= 5.1",
   "luv"
}
build = {
   type = "builtin",
   modules = {
      ["coro-http-luv"] = "coro-http-luv/init.lua",
      ["coro-http-luv.http-codec"] = "coro-http-luv/http-codec.lua",
      ["coro-http-luv.coro-channel"] = "coro-http-luv/coro-channel.lua",
      ["coro-http-luv.coro-net"] = "coro-http-luv/coro-net.lua",
      ["coro-http-luv.coro-wrapper"] = "coro-http-luv/coro-wrapper.lua",
      ["coro-http-luv.secure-socket"] = "coro-http-luv/secure-socket/init.lua",
      ["coro-http-luv.secure-socket.biowrap"] = "coro-http-luv/secure-socket/biowrap.lua",
      ["coro-http-luv.secure-socket.bit"] = "coro-http-luv/secure-socket/bit.lua",
      ["coro-http-luv.secure-socket.context"] = "coro-http-luv/secure-socket/context.lua",
      ["coro-http-luv.secure-socket.root_ca"] = "coro-http-luv/secure-socket/root_ca.lua",
   },
}
