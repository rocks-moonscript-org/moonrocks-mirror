package = "asyncio"
version = "0.1-2"
source = {
   url = "git+https://github.com/qrmoon/asyncio-proto.git"
}
description = {
   homepage = "https://github.com/qrmoon/asyncio-proto",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "qlass >= 0.1",
   "fiber >= 0.1",
   "luasocket >= 3.0"
}
build = {
   type = "builtin",
   modules = {
      ["asyncio.Socket"] = "asyncio/Socket.lua",
      ["asyncio.TCP"] = "asyncio/TCP.lua",
      ["asyncio.UDP"] = "asyncio/UDP.lua",
      ["asyncio.init"] = "asyncio/init.lua",
   }
}
