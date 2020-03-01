package = "luagram-client"
version = "1.0-1"
source = {
   url = "git://github.com/luagram/luagram.git",
   tag = "v1.0-1",
   branch = "master"
}
description = {
   summary = "telegram cli client",
   homepage = "https://github.com/luagram/luagram.git",

   license = "kon nane harki copyright dor bzane"
}
dependencies = {
  "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
     ["luagram-client"] = "luagram-client.lua"
   }
}