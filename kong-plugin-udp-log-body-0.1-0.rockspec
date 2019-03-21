package = "kong-plugin-udp-log-body"
version = "0.1-0"
source = {
   url = "git+https://github.com/Evino/kong-plugin-udp-log-body.git"
}
description = {
   summary = "Fork from default kong plugin udp-log that adds the request and response bodies",
   homepage = "https://github.com/Evino/kong-plugin-udp-log-body"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-plugin-udp-log-body.basic"] = "src/basic.lua",
      ["kong.plugins.kong-plugin-udp-log-body.handler"] = "src/handler.lua",
      ["kong.plugins.kong-plugin-udp-log-body.schema"] = "src/schema.lua"
   }
}
