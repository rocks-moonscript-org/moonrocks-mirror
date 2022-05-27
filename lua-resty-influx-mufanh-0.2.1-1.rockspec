package = "lua-resty-influx-mufanh"
version = "0.2.1-1"
source = {
   url = "git://github.com/mufanh/lua-resty-influx",
   tag = "0.2.1-1"
}
description = {
   summary = "OpenResty client writer for InfluxDB.",
   homepage = "https://github.com/mufanh/lua-resty-influx",
   license = "GPVv3",
   maintainer = "xinquan.huang <245817568@qq.com>"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-http >= 0.8",
}
build = {
   type = "builtin",
   modules = {
      ["resty.influx.buffer"] = "lib/resty/influx/buffer.lua",
      ["resty.influx.lineproto"] = "lib/resty/influx/lineproto.lua",
      ["resty.influx.object"] = "lib/resty/influx/object.lua",
      ["resty.influx.util"] = "lib/resty/influx/util.lua",
   }
}
