package = "luxure"
version = "0.2.0-1"
source = {
   url = "git://github.com/FreeMasen/luxure",
   tag = "v0.2.0-pre"
}
description = {
   homepage = "https://github.com/FreeMasen/luxure",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "net-url >= 0.9",
   "luasocket >= 3.0rc1-2"
}
build = {
   type = "builtin",
   modules = {
      luxure = "luxure/init.lua",
      ["luxure.error"] = "luxure/error.lua",
      ["luxure.headers"] = "luxure/headers.lua",
      ["luxure.methods"] = "luxure/methods.lua",
      ["luxure.request"] = "luxure/request.lua",
      ["luxure.response"] = "luxure/response.lua",
      ["luxure.route"] = "luxure/route.lua",
      ["luxure.router"] = "luxure/router.lua",
      ["luxure.server"] = "luxure/server.lua",
      ["luxure.status"] = "luxure/status.lua",
      ["luxure.utils"] = "luxure/utils.lua"
   }
}
