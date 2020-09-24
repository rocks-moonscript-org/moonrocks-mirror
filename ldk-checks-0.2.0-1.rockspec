rockspec_format = "3.0"
package = "ldk-checks"
version = "0.2.0-1"
source = {
   url = "git://github.com/luadevkit/checks.git",
   tag = "v0.2.0"
}
description = {
   summary = "Function Arguments Checks",
   license = "MIT",
   maintainer = "simone.livieri@gmail.com"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   modules = {
      ["ldk.checks"] = {
         "csrc/checks.c",
         "csrc/lerror.c"
      }
   }
}
test = {
   type = "busted"
}
