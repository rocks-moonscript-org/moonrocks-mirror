package = "luxure"
version = "0.0.1-3"
source = {
   url = "https://github.com/FreeMasen/luxure",
   tag = "v0.0.1"
}
description = {
   homepage = "https://github.com/FreeMasen/luxure",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "net-url >= 0.9"
}
build = {
   type = "builtin",
   modules = {
      luxure = "luxure/init.lua",
      ["luxure.request"] = "luxure/request.lua",
      ["luxure.response"] = "luxure/response.lua",
      ["luxure.router"] = "luxure/router.lua",
      ["luxure.server"] = "luxure/server.lua",
      ["luxure.utils"] = "luxure/utils.lua",
      ["luxure.headers"] = "luxure/headers.lua",
      ["luxure.methods"] = "luxure/methods.lua",
      ["luxure.route"] = "luxure/route.lua",
      ["luxure.status"] = "luxure/status.lua",
   }
}
