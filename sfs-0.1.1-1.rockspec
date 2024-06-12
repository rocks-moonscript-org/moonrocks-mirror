package = "sfs"
version = "0.1.1-1"
source = {
   url = "https://codeberg.org/sewbacca/sfs/archive/main.zip",
   tag = "v0.1.1",
   dir = "sfs"
}
description = {
   homepage = "https://codeberg.org/sewbacca/sfs",
   license = "MIT"
}
dependencies = {
   "luafilesystem"
}
build = {
   type = "builtin",
   modules = {
      sfs = "lua/sfs.lua"
   }
}
