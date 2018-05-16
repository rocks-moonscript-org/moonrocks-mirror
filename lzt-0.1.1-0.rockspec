package = "lzt"
version = "0.1.1-0"

description = {
   summary = "command-line tool to work with a luazdf repository",
   license = "MIT",
   homepage = "https://github.com/aiq/lzt"
}

source = {
   url = "https://github.com/aiq/lzt/archive/v0.1.1.tar.gz",
   md5 = "5e59318ac82d7e4579f606a948866fe4",
   dir = "lzt-0.1.1"
}

dependencies = {
   "lua >= 5.1",
   "luafilesystem",
   "lustache"
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
