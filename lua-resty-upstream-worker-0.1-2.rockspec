package = "lua-resty-upstream-worker"
version = "0.1-2"
source = {
   url = "git://github.com/kiddkai/lua-resty-upstream-worker",
   tag = "v0.1.2"
}
description = {
   summary = "Generic upstream worker, spawn as light thread",
   homepage = "https://github.com/kiddkai/lua-resty-upstream-worker",
   license = "2-clause BSD",
   maintainer = "Zekai Zheng(kiddkai@gmail.com)"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-http ~> 0.10-0"
}
build = {
   type = "builtin",
   modules = {
     ["resty.upstream.worker"] = "resty/upstream/worker.lua"
   }
}

