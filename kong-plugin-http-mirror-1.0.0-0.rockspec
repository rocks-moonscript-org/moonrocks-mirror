package = "kong-plugin-http-mirror"
version = "1.0.0-0"
source = {
   url = "git://github.com/nhp0712/kong-plugin-http-mirror",
}
description = {
  summary = "A Kong plugin that will mirror original request to other endpoints",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.kong-plugin-http-mirror.handler"] = "kong/plugins/http-mirror/handler.lua",
    ["kong.plugins.kong-plugin-http-mirror.schema"] = "kong/plugins/http-mirror/schema.lua",
    ["kong.plugins.kong-plugin-http-mirror.mirror"] = "kong/plugins/http-mirror/mirror.lua",
    ["kong.plugins.kong-plugin-http-mirror.http_client"] = "kong/plugins/http-mirror/http_client.lua"
   }
}