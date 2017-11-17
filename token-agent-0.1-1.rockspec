package = "token-agent"
version = "0.1-1"
source = {
   url = "git+https://github.com/Kong-Study-Group/token-agent",
   tag = "v0.1"
}
description = {
   summary = "check token by third restful api",
   homepage = "https://github.com/Kong-Study-Group/token-agent",
}
dependencies = {
    "lua-cjson >= 1.0.1-1",
    "lua-resty-http >= 0.06-0",

}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.token-agent.access"] = "kong/plugins/token-agent/access.lua",
      ["kong.plugins.token-agent.handler"] = "kong/plugins/token-agent/handler.lua",
      ["kong.plugins.token-agent.schema"] = "kong/plugins/token-agent/schema.lua"
   }
}
