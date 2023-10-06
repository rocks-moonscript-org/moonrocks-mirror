package = "luaipfs"
version = "0.1.0-1"
source = {
   url = "git://github.com/Neph-Oo/lua-ipfs-api",
   tag = "v0.1.0"
}
description = {
   summary = "IPFS http api",
   detailed = [[
      Ipfs api for controling ipfs daemon (go-ipfs)
      from Lua.
   ]],
   homepage = "https://github.com/Neph-Oo/lua-ipfs-api",
   license = "WTFPL"
}
dependencies = {
   "lua >= 5.3",
   "luajson >= 1.3.4",
   "luafilesystem >= 1.7.0",
   "base64 >= 1.5",
   "lua-protobuf >= 0.3.2"
}
build = {
   type = "builtin",
   copy_directories = { "examples", "doc" },
   modules = {
      luaipfs = "luaipfs/init.lua",
      ["luaipfs.base"] = "luaipfs/base.lua",
      ["luaipfs.http"] = {
         sources = {
            "luaipfs/src/http.c", 
            "luaipfs/src/http_priv.c",
            "luaipfs/src/http_error.c",
            "luaipfs/src/http_callbacks.c"
         },
         libraries = {"curl"},
         libdirs = {"$(LIBCURL_LIBDIR)"},
         incdirs = {"$(LIBCURL_INCDIR)", "luaipfs/include"}
      },
      ["luaipfs.bitswap"] = "luaipfs/bitswap.lua",
      ["luaipfs.dht"] = "luaipfs/dht.lua",
      ["luaipfs.pin"] = "luaipfs/pin.lua",
      ["luaipfs.swarm"] = "luaipfs/swarm.lua",
      ["luaipfs.utils"] = "luaipfs/utils.lua",
      ["luaipfs.protobuf"] = "luaipfs/protobuf.lua"
   }
}
external_dependencies = {
   LIBCURL = {
      header = "curl/curl.h"
   }
}
