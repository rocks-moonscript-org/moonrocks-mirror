package = "authy-lua"
version = "0.1.0-2"
source = {
   url = "https://glow.dev.ramcloud.io/sjohnson/authy-lua"
}
description = {
   summary = "Lua port of python-authy",
   detailed = [[
Lua client for the Authy API. Modestly simple class-based design that
follows the same pattern used by the Python Authy API client.

Supports running within ngx-lua, using lua-resty-http, or running
standalone with lua-httpclient.
]],
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
