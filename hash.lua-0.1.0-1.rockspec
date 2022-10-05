rockspec_format = "3.0"
package = "hash.lua"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/hash.lua.git",
   tag = "0.1.0"
}
description = {
   summary = "Hash functions library",
   license = "BSD-2"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   modules = {
      ["dwenegar.hash"] = "csrc/hash.c"
   }
}
test = {
   type = "busted"
}
