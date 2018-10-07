package = "request-decrypt"
version = "0.1-5"
source = {
  url = "git://github.com/kaanjin/kong-request-decrypt"
}
description = {
  summary = "A Kong plugin, that let decrypt request' json body",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
  -- If you depend on other rocks, add them here
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.request-decrypt.access"] = "kong/plugins/request-decrypt/access.lua",
    ["kong.plugins.request-decrypt.handler"] = "kong/plugins/request-decrypt/handler.lua",
    ["kong.plugins.request-decrypt.schema"] = "kong/plugins/request-decrypt/schema.lua"
  }
}