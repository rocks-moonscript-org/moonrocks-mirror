package = "samp-api"
version = "1.0-1"
source = {
   url = "git+https://github.com/Cod-USER/samp-api.git",
   tag = "v1.0"
}
description = {
   homepage = "https://github.com/Cod-USER/samp-api",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["samp-api.init"] = "lua/samp-api/init.lua",
      ["samp-api.offsets"] = "lua/samp-api/offsets.lua"
   }
}