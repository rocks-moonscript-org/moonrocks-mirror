package = "luxure"
version = "0.3.0-3"
source = {
   url = "git://github.com/cosock/luxure",
   tag = "v0.3.0-3"
}
description = {
   homepage = "https://cosock.github.io/luxure",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "cosock >= 0.1.0",
   "logface >= 0.0.2",
   "luncheon >= 0.1.0",
   "net-url >= 0.9",
}
build = {
   type = "builtin",
   modules = {
      luxure = "luxure/init.lua",
      ["luxure.error"] = "luxure/error.lua",
      ["luxure.methods"] = "luxure/methods.lua",
      ["luxure.route"] = "luxure/route.lua",
      ["luxure.router"] = "luxure/router.lua",
      ["luxure.server"] = "luxure/server.lua",
      ["luxure.sse"] = "luxure/sse.lua",
      ["luxure.utils"] = "luxure/utils.lua"
   }
}
