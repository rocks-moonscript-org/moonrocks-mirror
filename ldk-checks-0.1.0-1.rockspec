rockspec_format = "3.0"
package = "ldk-checks"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/ldk-checks.git",
   tag = "0.1.0"
}
description = {
   summary = "Arguments Checks",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   modules = {
      ["ldk.checks"] = {
         "csrc/checks.c",
         "csrc/liberror.c"
      }
   }
}
test = {
   type = "busted"
}
