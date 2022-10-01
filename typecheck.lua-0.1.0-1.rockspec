rockspec_format = "3.0"
package = "typecheck.lua"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/typecheck.lua.git",
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
      typecheck = {
         "csrc/typecheck.c",
         "csrc/liberror.c"
      }
   }
}
test = {
   type = "busted"
}
