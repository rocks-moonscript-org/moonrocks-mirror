package = "slnet"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/SLMP-Team/SLNet",
   tag = "0.0.1b"
}
description = {
   homepage = "https://github.com/SLMP-Team/SLNet",
   license = "Apache License 2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      SLNet = "src/SLNet.lua",
      ["SLNet.BitCoder"] = "src/SLNet/BitCoder.lua",
      ["SLNet.BitStream"] = "src/SLNet/BitStream.lua",
      ["SLNet.SLPeer.client"] = "src/SLNet/SLPeer/client.lua",
      ["SLNet.SLPeer.init"] = "src/SLNet/SLPeer/init.lua",
      ["SLNet.SLPeer.server"] = "src/SLNet/SLPeer/server.lua"
   }
}
