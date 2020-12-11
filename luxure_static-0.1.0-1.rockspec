package = "luxure_static"
version = "0.1.0-1"
source = {
   url = "https://github.com/FreeMasen/luxure_static"
}
description = {
   homepage = "https://github.com/FreeMasen/luxure_static",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["luxure_static"] = "luxure_static.lua",
      ["content_types"] = "content_types.lua"
   }
}
dependencies = {
   "lua >= 5.1",
   "luxure >= 0.1.2"
}
