package = "middleware"
version = "1.0.1-1"
source = {
   url = "https://github.com/wesrv/kong-plugin-middleware",
}
description = {
  summary = "A Kong plugin that enables services to act as middlewares for requests",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-http"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.middleware.access"] = "src/access.lua",
    ["kong.plugins.middleware.handler"] = "src/handler.lua",
    ["kong.plugins.middleware.schema"] = "src/schema.lua"
   }
}
