package = "public_suffix_list"
version = "1.0.202103-1"
source = {
   url = "https://github.com/squeek502/lua-public_suffix_list/releases/download/v1.0/public_suffix_list-1.0.202103.tar.gz"
}
description = {
   detailed = "Lua interface to the Public Suffix List",
   homepage = "https://github.com/squeek502/lua-public_suffix_list",
   license = "Unlicense"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
     public_suffix_list = "public_suffix_list.lua",
   },
}
