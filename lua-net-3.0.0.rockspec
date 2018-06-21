package = "lua-net"
version = "3.0.0"
source = {
   url = "git://github.com/rayaman/net.git",
   tag = "v3.0.0",
}
description = {
   summary = "Lua networking library that wraps around lua-socket to make networking easy.",
   detailed = [[
      This library uses the multi library. The new multitasking library and this one are now co-Dependant if using the networkManager integration for network parallelism. This has an event driven approach for networking which allows one to easily work async with the data.
   ]],
   homepage = "https://github.com/rayaman/net",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "multi"
}
build = {
   type = "builtin",
   modules = {
      ["net.init"] = "net/init.lua",
   }
}