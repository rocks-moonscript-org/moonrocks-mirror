package = "lusty-nginx"
version = "0.1-0"
source = {
  url = "https://github.com/downloads/Olivine-Labs/lusty-nginx/lusty-nginx-0.1.tar.gz"
}
description = {
  summary = "Nginx plugin for lusty.",
  detailed = [[
    Allows for interaction with the ngx_lua module (and openresty).
  ]],
  homepage = "http://olivinelabs.com/lusty-nginx/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
   modules = {
    ["lusty-nginx.server"] = "src/server.lua",
    ["lusty-nginx.log"] = "src/log.lua"
  }
}
