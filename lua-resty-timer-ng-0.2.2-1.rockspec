package = "lua-resty-timer-ng"
version = "0.2.2-1"
source = {
   url = "git://github.com/kong/lua-resty-timer-ng",
   tag = "0.2.2"
}
description = {
   summary = "A scalable timer library for OpenResty.",
   license = "Apache 2.0",
   homepage = "https://github.com/kong/lua-resty-timer-ng"
}
dependencies = {

}
build = {
   type = "builtin",
   modules = {
     ["resty.timerng"] = "lib/resty/timerng/init.lua",
     ["resty.timerng.job"] = "lib/resty/timerng/job.lua",
     ["resty.timerng.array"] = "lib/resty/timerng/array.lua",
     ["resty.timerng.constants"] = "lib/resty/timerng/constants.lua",
     ["resty.timerng.utils"] = "lib/resty/timerng/utils.lua",

     ["resty.timerng.wheel"] = "lib/resty/timerng/wheel/init.lua",
     ["resty.timerng.wheel.group"] = "lib/resty/timerng/wheel/group.lua",

     ["resty.timerng.thread.group"] = "lib/resty/timerng/thread/group.lua",
     ["resty.timerng.thread.loop"] = "lib/resty/timerng/thread/loop.lua",
     ["resty.timerng.thread.super"] = "lib/resty/timerng/thread/super.lua",
     ["resty.timerng.thread.worker"] = "lib/resty/timerng/thread/worker.lua",
   }
}
