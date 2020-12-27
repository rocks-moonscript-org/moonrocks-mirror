package = "ydauth-test"
version = "0.1.0-2"
source = {
   url = "file:///data/code/docker/luarocks/ydauth_test"
}
description = {
   homepage = "https://github.com/yundun-php/kong_ydauth_test.git",
   license = "MIT"
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
