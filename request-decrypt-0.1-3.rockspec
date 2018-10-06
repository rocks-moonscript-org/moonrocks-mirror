package = "request-decrypt"
version = "0.1-3"
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
    ["kong.plugins.request-decrypt.access"] = "src/access.lua",
    ["kong.plugins.request-decrypt.handler"] = "src/handler.lua",
    ["kong.plugins.request-decrypt.schema"] = "src/schema.lua"
  }
}