rockspec_format = "3.0"
package = "toto"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/baober90/toto.git",
   tag = "v1.0.0"
}
description = {
   homepage = "https://github.com/baober90/toto",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
     ["toto"] = "src/toto.lua",
     ["toto.util"] = "src/util/util.lua"
   },
   copy_directories = { "doc" }
}
