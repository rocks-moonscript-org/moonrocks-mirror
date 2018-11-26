package = "ctrl-oidc-transformer"
version = "0.1.0-0"

source = {
    url = "https://github.com/bparthu/ctrl-oidc-transformer/raw/master/ctrl-oidc-transformer-0.1.0.tar.gz"
}

description = {
  summary = "Custom plugin to transform headers sent by oidc plugin"
}

dependencies = {
  
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins.ctrl-oidc-transformer.handler"] = "kong/plugins/ctrl-oidc-transformer/handler.lua",
    ["kong.plugins.ctrl-oidc-transformer.schema"] = "kong/plugins/ctrl-oidc-transformer/schema.lua",
    ["kong.plugins.ctrl-oidc-transformer.access"] = "kong/plugins/ctrl-oidc-transformer/access.lua",
  }
}
