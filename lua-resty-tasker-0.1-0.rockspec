package = "lua-resty-tasker"
version = "0.1-0"
source = {
   url = "git://github.com/kiddkai/lua-resty-tasker",
   tag = "v0.1.0"
}
description = {
   summary = "A generic long running task daemon",
   homepage = "https://github.com/kiddkai/lua-resty-tasker",
   license = "2-clause BSD",
   maintainer = "Zekai Zheng(kiddkai@gmail.com)"
}
dependencies = {
   "lua >= 5.1",
   "luaposix ~> 33.4.0-1"
}
build = {
   type = "builtin",
   modules = {
     ["resty.tasker"] = "resty/tasker.lua"
   }
}
