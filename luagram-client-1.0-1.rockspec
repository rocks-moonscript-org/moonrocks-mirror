package = "luagram-client"
version = "1.0-1"
source = {
   url = "file:///home/amir/luagram/",
}
description = {
  detailed = [[
    Lua telegram client - tdlib
   ]],
   license = "MIT"
}
dependencies = {
      "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
     ["luagram-client"] = "luagram-client.lua",
          ["luagram"] = "luagram.so"

   }
}

