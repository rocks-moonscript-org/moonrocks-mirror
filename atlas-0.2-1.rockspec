rockspec_format = "3.0"
package = "atlas"
version = "0.2-1"
source = {
   url = "git+https://github.com/mblayman/atlas.git"
}
description = {
   summary = "A Lua web framework (someday... maybe)",
   detailed = "A Lua web framework (someday... maybe)",
   homepage = "https://github.com/mblayman/atlas",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "argparse",
   "inspect",
   "lpeg",
   "luv",
   "penlight"
}
build = {
   type = "builtin",
   copy_directories = {
      "docs",
      "tests"
   },
   install = {
      bin = {
         "bin/atlas"
      }
   }
}
