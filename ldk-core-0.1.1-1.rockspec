rockspec_format = "3.0"
package = "ldk-core"
version = "0.1.1-1"
source = {
   url = "git://github.com/luadevkit/core.git",
   tag = "v0.1.1"
}
description = {
   summary = "Core Libraries",
   license = "MIT",
   maintainer = "simone.livieri@gmail.com"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   modules = {
      ["ldk.array"] = "src/ldk/array.lua",
      ["ldk.debugx"] = "src/ldk/debugx.lua",
      ["ldk.func"] = "src/ldk/func.lua",
      ["ldk.predicates"] = "src/ldk/predicates.lua",
      ["ldk.stringx"] = "src/ldk/stringx.lua",
      ["ldk.tablex"] = "src/ldk/tablex.lua"
   }
}
test = {
   type = "busted"
}
