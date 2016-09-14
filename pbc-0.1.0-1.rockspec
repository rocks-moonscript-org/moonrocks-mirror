package = "pbc"
version = "0.1.0-1"

source = {
  url = "git://github.com/reasonMix/pbc.git",
  tag = "v0.1.0"
}
description={
   summary = 'google protocol lua binding used in cocos2d-x project',
   detailed = 'google protocol lua binding used in cocos2d-x project are now binding to Lua. This make easy to create a encryption Lua script in for cocos2d-x projects',
   homepage = "https://github.com/reasonMix/pbc",
   license = "The MIT License"
}
dependencies = { "lua >= 5.1" }
build = {
  type="builtin",
  modules ={
    protobuf = "binding/lua/protobuf.lua",
    ["protobuf.c"] = {
      sources = {
      "src/context.c","src/varint.c","src/array.c","src/pattern.c","src/register.c",
      "src/proto.c","src/map.c","src/alloc.c","src/rmessage.c","src/wmessage.c","src/bootstrap.c","src/stringpool.c",
      "src/decode.c","binding/lua/pbc-lua.c"
      },
      incdirs = {"."},
    }
  }
}
