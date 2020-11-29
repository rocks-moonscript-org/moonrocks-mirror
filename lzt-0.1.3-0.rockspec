package = "lzt"
version = "0.1.3-0"

description = {
   summary = "command-line tool to work with a luazdf repository",
   license = "MIT",
   homepage = "https://github.com/aiq/lzt"
}

source = {
   url = "https://github.com/aiq/lzt/archive/v0.1.3.tar.gz",
   md5 = "2cb29b455ba1cb90c33faf90f8515417",
   dir = "lzt-0.1.3"
}

dependencies = {
   "lua >= 5.1",
   "luafilesystem"
}

build = {
   type = "builtin",
   modules = {},
   install = {
      bin = {
         [ "lzt" ] = "bin/lzt"
      }
   }
}
