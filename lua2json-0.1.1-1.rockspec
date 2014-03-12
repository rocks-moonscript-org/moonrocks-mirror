package = "lua2json"
version = "0.1.1-1"
source = {
   url = "git://github.com/agladysh/lua2json.git",
   branch = "v0.1.1"
}
description = {
   summary = "A command-line tool to convert Lua to JSON",
   homepage = "http://github.com/agladysh/lua2json",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
   "luajson"
}
build = {
   type = "none",
   install = {
      bin = {
         ["lua2json"] = "lua2json"
      }
   }
}
