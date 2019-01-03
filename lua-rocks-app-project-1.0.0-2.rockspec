package = "lua-rocks-app-project"
version = "1.0.0-2"
source = {
   url = "git://github.com/rongfengliang/luarocks-packagedemo.git"
}
description = {
   homepage = "https://github.com/rongfengliang/luarocks-packagedemo.git",
   license = "unlicense"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["users.login"]="users/login.lua"
   }
}
