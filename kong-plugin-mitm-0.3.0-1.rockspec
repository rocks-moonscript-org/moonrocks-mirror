package = "kong-plugin-mitm"
version = "0.3.0-1"
source = {
   url = "git+https://github.com/koreniac/kong-plugin-mitm.git"
}
description = {
   homepage = "https://github.com/koreniac/kong-plugin-mitm",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.mitm.basic_body"] = "kong/plugins/mitm/basic_body.lua",
      ["kong.plugins.mitm.handler"] = "kong/plugins/mitm/handler.lua",
      ["kong.plugins.mitm.http_log"] = "kong/plugins/mitm/http_log.lua",
      ["kong.plugins.mitm.http_post"] = "kong/plugins/mitm/http_post.lua",
      ["kong.plugins.mitm.schema"] = "kong/plugins/mitm/schema.lua"
   }
}
