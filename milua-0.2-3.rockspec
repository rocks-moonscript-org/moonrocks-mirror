package = "milua"
version = "0.2-3"
source = {
   url = "git+https://github.com/MiguelMJ/Milua",
   tag = "v0.2-3"
}
description = {
   summary = "Micro framework for web applications",
   homepage = "https://github.com/MiguelMJ/Milua",
   license = "MIT"
}
dependencies = {
   "http ~> 0.4",
   "net-url ~> 1.1-1",
   "luaposix ~> 35.1-1"
}
build = {
   type = "none",
   install = {
      lua = {
         "src/milua.lua",
         "src/milua_log.lua",
         "src/milua_utils.lua",
         "src/milua_config.lua"
      }
   }
}
