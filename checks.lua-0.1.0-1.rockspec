rockspec_format = "3.0"
package = "checks.lua"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/checks.lua.git",
   tag = "0.1.0"
}
description = {
   summary = "Type checking library",
   license = "BSD-2"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   modules = {
      ["dwenegar.checks"] = {
         "csrc/checks.c",
         "csrc/liberror.c"
      }
   }
}
test = {
   type = "busted"
}
