package = "ConcurrentLua"
version = "1.0.6-1"
source = {
   url = "https://github.com/lefcha/concurrentlua/archive/v1.0.6.zip",
   dir = "concurrentlua-1.0.6",
   md5 = "c7fd87af67ab1386531370d393e8a17b"
}
description = {
   summary = "Concurrency Oriented Programming in Lua",
   detailed = [[
      ConcurrentLua is a system that implements Erlang-style concurrency for
      the Lua programming language. It is a system that brings an alternative
      to what scripting languages offer for concurrent and distributed programming.
   ]],
   homepage = "http://concurrentlua.luaforge.net/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1", "luasocket >= 2.0", "copas >= 1.1"
}
build = {
   type = "builtin",
   modules = {
      cldaemon = "src/cldaemon/cldaemon.c",
      cltime = "src/cltime/cltime.c",
      ["concurrent.option"] = "src/concurrent/option.lua",
      ["concurrent.root"] = "src/concurrent/root.lua",
      ["concurrent.link"] = "src/concurrent/link.lua",
      ["concurrent.distributed.network"] = "src/concurrent/distributed/network.lua",
      ["concurrent.distributed.cookie"] = "src/concurrent/distributed/cookie.lua",
      ["concurrent.distributed.link"] = "src/concurrent/distributed/link.lua",
      ["concurrent.distributed.register"] = "src/concurrent/distributed/register.lua",
      ["concurrent.distributed.monitor"] = "src/concurrent/distributed/monitor.lua",
      ["concurrent.distributed.process"] = "src/concurrent/distributed/process.lua",
      ["concurrent.distributed.message"] = "src/concurrent/distributed/message.lua",
      ["concurrent.distributed.init"] = "src/concurrent/distributed/init.lua",
      ["concurrent.distributed.node"] = "src/concurrent/distributed/node.lua",
      ["concurrent.distributed.scheduler"] = "src/concurrent/distributed/scheduler.lua",
      ["concurrent.register"] = "src/concurrent/register.lua",
      ["concurrent.monitor"] = "src/concurrent/monitor.lua",
      ["concurrent.process"] = "src/concurrent/process.lua",
      ["concurrent.message"] = "src/concurrent/message.lua",
      ["concurrent.init"] = "src/concurrent/init.lua",
      ["concurrent.scheduler"] = "src/concurrent/scheduler.lua",
   },
   install = {
      bin = {
         "src/clpmd/clpmd",
      }
   }
}
