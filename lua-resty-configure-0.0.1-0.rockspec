package = "lua-resty-configure"
version = "0.0.1-0"
source = {
   url = "git+https://github.com/fesily/lua-resty-configure.git"
}
description = {
   summary = "for check openresty build configure and C macro",
   detailed = "for check openresty build configure and C macro",
   homepage = "https://github.com/fesily/lua-resty-configure",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["resty.configure"] = "lib/resty/configure.lua"
   }
}
