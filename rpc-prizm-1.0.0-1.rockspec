package = "rpc-prizm"
version = "1.0.0-1"
source = {
  url = "git://github.com/ridnlee/rpc-prizm",
  tag = "1.0.0",
}
description = {
  summary = "A package for building JSON-RPC 2.0 Gateway with nginx and lua",
  detailed = [[
      RPC-Prizm is a reverse proxy over OpenResty Lua NGINX module.
      This package parse, rebuild, route requests for JSON-RPC 2.0.
    ]],
  homepage = "http://github.com/ridnlee/rpc-prizm",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "rapidjson ~> 0.4",
}
build = {
  type = "builtin",
  modules = {
    ["rpc-prizm"] = "prizm/prizm.lua",
    ["rpc-prizm.request"] = "prizm/request.lua",
    ["rpc-prizm.logger"] = "prizm/logger.lua",
    ["rpc-prizm.proxy"] = "prizm/proxy.lua",
    ["rpc-prizm.response_builder"] = "prizm/response_builder.lua",
    ["rpc-prizm.router"] = "prizm/router.lua",
    ["rpc-prizm.http_statuses"] = "prizm/http_statuses.lua",
  },
}