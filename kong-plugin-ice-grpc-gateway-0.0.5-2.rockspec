package = "kong-plugin-ice-grpc-gateway"

version = "0.0.5-2"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git+https://git@github.com/CodingForMoney/kong-plugin-ice-grpc-gateway.git",
  tag = "0.0.5",
}

description = {
  summary = "gRPC gateway for Kong",
  detailed = "A Kong plugin",
  homepage = "https://github.com/CodingForMoney/kong-plugin-ice-grpc-gateway",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  "lua-protobuf ~> 0.3",
  "lua_pack == 1.0.5-0",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.ice-grpc-gateway.dec"] = "kong/plugins/ice-grpc-gateway/dec.lua",
    ["kong.plugins.ice-grpc-gateway.handler"] = "kong/plugins/ice-grpc-gateway/handler.lua",
    ["kong.plugins.ice-grpc-gateway.schema"] = "kong/plugins/ice-grpc-gateway/schema.lua",
  },
  copy_directories = { 
    "include"
  }
}
