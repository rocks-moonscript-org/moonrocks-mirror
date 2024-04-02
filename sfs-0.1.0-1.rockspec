package = "sfs"
version = "0.1.0-1"
source = {
   url = "https://codeberg.org/sewbacca/sfs/archive/v0.1.0.zip",
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
