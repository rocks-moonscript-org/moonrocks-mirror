package = "lua-resty-influx-statistics"
version = "0.0.1-1"
source = {
   url = "git://github.com/mufanh/lua-resty-influx-statistics",
   tag = "v0.0.1-1",
   branch = "main"
}
description = {
   summary = "About Embedded point monitoring service component based on influx database",
   homepage = "https://github.com/mufanh/lua-resty-influx-statistics",
   maintainer = "mufanh<245817568@qq.com>",
   license = "Apache2"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.8",
  "lua-resty-influx >= 0.2.1-0",
  "lua-resty-lrucache >= 0.09-2"
}
build = {
   type = "builtin",
   modules = {
     ["resty.influx.statistics"] = "lib/resty/influx/statistics.lua"
   }
}