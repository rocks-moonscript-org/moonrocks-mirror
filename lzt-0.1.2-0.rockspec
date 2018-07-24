package = "lzt"
version = "0.1.2-0"

description = {
   summary = "command-line tool to work with a luazdf repository",
   license = "MIT",
   homepage = "https://github.com/aiq/lzt"
}

source = {
   url = "https://github.com/aiq/lzt/archive/v0.1.2.tar.gz",
   md5 = "32ff1a5bd3ff48728c4a1c44b882b34e",
   dir = "lzt-0.1.2"
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
