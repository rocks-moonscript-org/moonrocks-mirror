rockspec_format = "3.0"
package = "ldk-hash"
version = "0.2.0-1"
source = {
   url = "git://github.com/luadevkit/hash.git",
   tag = "v0.2.0"
}
description = {
   summary = "LDK - Hash code for Lua values",
   license = "MIT",
   maintainer = "simone.livieri@gmail.com"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   modules = {
      ["ldk.hash"] = "csrc/hash.c"
   }
}
