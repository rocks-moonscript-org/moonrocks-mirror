package = "lua-resty-thread"
version = "0.2.0-0"
source = {
   url = "git://github.com/fesily/lua-resty-thread.git"
}
description = {
   summary = "easy use to ngx.run_worker_thread, none block(openresty >= 1.21.4)",
   homepage = "https://github.com/fesily/lua-resty-thread",
   license = "Apache 2.0",
   maintainer = "Bing Han(fesil@foxmail.com)"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["resty.thread.init"] = "lib/resty/thread/init.lua",
      ["resty.thread.factory"] = "lib/resty/thread/factory.lua",
   }
}