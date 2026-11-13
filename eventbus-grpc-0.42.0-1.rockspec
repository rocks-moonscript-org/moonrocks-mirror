package = "eventbus-grpc"
version = "0.42.0-1"
source = {
  url = "git+https://github.com/browser-grpc/grpc-over-datachannels",
  tag = "v0.42.0",
}
description = {
  summary = "Event bus over gRPC for Lua: generated grpcdc.events.v1 publish/subscribe clients",
  homepage = "https://github.com/browser-grpc/grpc-over-datachannels",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.4",
  "grpc-dc >= 0.42.0",
}
build = {
  type = "builtin",
  modules = {
    ["events_messages"] = "packages/eventbus-lua/events_messages.lua",
    ["events_grpc_dc"] = "packages/eventbus-lua/events_grpc_dc.lua",
  },
}
