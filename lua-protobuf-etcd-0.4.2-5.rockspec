package = "lua-protobuf-etcd"
version = "0.4.2-5"
source = {
   url = "git+https://github.com/TerrySolar/lua-protobuf.git",
   tag = "0.4.2-5"
}
description = {
   summary = "protobuf data support for Lua",
   detailed = [[
This project offers a simple C library for basic protobuf wire format encode/decode.
  ]],
   homepage = "https://github.com/TerrySolar/lua-protobuf",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      pb = "pb.c",
      protoc = "protoc.lua"
   }
}
