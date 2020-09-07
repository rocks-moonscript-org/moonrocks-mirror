package = "away-luv"
version = "0.1-0"
source = {
   url = "git+https://github.com/thislight/away-luv.git",
   tag = "v0.1",
}
description = {
   homepage = "https://github.com/thislight/away-luv",
   license = "GPL-3",
   summary = "luv driver for away",
   detailed = [[away-luv provides functionallity uses luv with away, and a optional synchronous-style interface]]
}
dependencies = {
   "luv >=1.36.0, <2",
   "away >=0.0.2, <1"
}
build = {
   type = "builtin",
   modules = {
      ["away.luv"] = "away/luv/init.lua",
      ["away.luv.service"] = "away/luv/service.lua",
      ["away.luv.timer"] = "away/luv/timer.lua",
      ["away.luv.utils"] = "away/luv/utils.lua",
      ["away.luv.tcp_server"] = "away/luv/tcp_server.lua",
      ["away.luv.tcp_client"] = "away/luv/tcp_client.lua",
      ["away.luv.dataqueue"] = "away/luv/dataqueue.lua",
   }
}
