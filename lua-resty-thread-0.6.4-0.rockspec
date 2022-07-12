package = "lua-resty-thread"
version = "0.6.4-0"
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
      ["resty.thread.upvalues"] = "lib/resty/thread/upvalues.lua",
      ["resty.thread.new"] = "lib/resty/thread/new.lua",
      ["resty.thread.ngx_threadpool"] = "lib/resty/thread/ngx_threadpool.lua",
      ["resty.thread.wrapper"] = "lib/resty/thread/wrapper.lua",
   }
}