package = "wisdom-gateway-oidc-plugin"
version = "1.0-0"
source = {
   url = "git+https://github.com/wisdom-oss/gateway-oidc-plugin.git"
}
description = {
   homepage = "https://github.com/wisdom-oss/gateway-oidc-plugin",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.wisdom-oidc.handler"] = "kong/plugins/wisdom-oidc/handler.lua",
      ["kong.plugins.wisdom-oidc.schema"] = "kong/plugins/wisdom-oidc/schema.lua"
   }
}
