package = "multi"
version = "14.3-0"
source = {
   url = "git://github.com/rayaman/multi.git",
   tag = "v14.3.0",
}
description = {
   summary = "Lua Multi tasking library",
   detailed = [[
      This library contains many methods for multi tasking. Features non coroutine based multi-tasking, coroutine based multi-tasking, and system threading (Requires use of an integration).
      Check github for how to use.
   ]],
   homepage = "https://github.com/rayaman/multi",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lanes",
}
build = {
   type = "builtin",
   modules = {
      ["multi"] = "multi/init.lua",

      ["multi.compat.love2d"] = "multi/compat/love2d.lua",

      ["multi.integration.lanesManager"] = "multi/integration/lanesManager/init.lua",
      ["multi.integration.lanesManager.extensions"] = "multi/integration/lanesManager/extensions.lua",
      ["multi.integration.lanesManager.threads"] = "multi/integration/lanesManager/threads.lua",

      ["multi.integration.pesudoManager"] = "multi/integration/pesudoManager/init.lua",
      ["multi.integration.pesudoManager.extensions"] = "multi/integration/pesudoManager/extensions.lua",
      ["multi.integration.pesudoManager.threads"] = "multi/integration/pesudoManager/threads.lua",
      ["multi.integration.threading"] = "multi/integration/threading.lua",

      ["multi.integration.loveManager"] = "multi/integration/loveManager/init.lua",
      ["multi.integration.loveManager.extensions"] = "multi/integration/loveManager/extensions.lua",
      ["multi.integration.loveManager.threads"] = "multi/integration/loveManager/threads.lua",

      ["multi.integration.luvitManager"] = "multi/integration/luvitManager.lua",
      
      --["multi.integration.networkManager"] = "multi/integration/networkManager.lua",
   }
}