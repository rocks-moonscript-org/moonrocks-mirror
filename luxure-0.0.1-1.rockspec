package = "luxure"
version = "0.0.1-1"
source = {
   url = "https://github.com/FreeMasen/luxure",
}
description = {
   homepage = "An HTTP framework for Lua",
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
