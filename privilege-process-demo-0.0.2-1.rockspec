package = "privilege-process-demo"
version = "0.0.2-1"
source = {
   url = "git://github.com/zanehy/privilege-process-demo",
   tag = "v0.0.2"
}
description = {
   summary = "Open the privileged process of openresty",
   homepage = "https://github.com/zanehy/privilege-process-demo",
   license = "2-clause BSD",
   maintainer = "zanehy <zanehy@foxmail.com>"
}
dependencies = {
    "lua >= 5.1",
    "lua-resty-http"
}
build = {
   type = "builtin",
   modules = {
      ["privilege-demo"] = "privilege-demo.lua"
   }
}
