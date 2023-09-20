rockspec_format = "3.0"
package = "tlcheck"
version = "1.0.1-1"
source = {
   url = "git+https://github.com/svermeulen/tlcheck.git",
   branch = "main"
}
description = {
   summary = "Simple command line tool to type check a given teal file/directory",
   detailed = "Simple command line tool to type check a given teal file/directory",
   homepage = "https://github.com/svermeulen/tlcheck",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luafilesystem >= 1.5.0",
   "tl >= 0.13.0",
}
build = {
   type = "builtin",
   modules = {
      tlcheck = "src/tlcheck.lua"
   },
   install = {
     bin = {
       ['tlcheck'] = 'bin/tlcheck'
     }
   }
}
