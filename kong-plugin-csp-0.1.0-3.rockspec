package = "kong-plugin-csp"
version = "0.1.0-3"
source = {
   url = "git+https://github.com/zffocussss/kong-plugin-csp.git"
}
description = {
   homepage = "https://github.com/zffocussss/kong-plugin-csp",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-plugin-csp.handler"] = "src/handler.lua",
      ["kong.plugins.kong-plugin-csp.schema"] = "src/schema.lua"
   }
}
