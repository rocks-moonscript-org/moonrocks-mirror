package = "authy-lua"
version = "0.1.0-1"
source = {
   url = "https://glow.dev.ramcloud.io/sjohnson/authy-lua"
}
description = {
   summary = "Lua port of the Authy API client for Python.",
   detailed = "Lua port of the Authy API client for Python.",
   homepage = "https://glow.dev.ramcloud.io/sjohnson/authy-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.3",
   "lua-resty-http >= 0.07-0",
   "lua-httpclient >= 0.1.0-7"
}
build = {
   type = "builtin",
   modules = {
      ["authy.api.client"] = "src/authy/api/client.lua",
      ["authy.api.resources"] = "src/authy/api/resources.lua",
      ["authy.http"] = "src/authy/http.lua"
   }
}
