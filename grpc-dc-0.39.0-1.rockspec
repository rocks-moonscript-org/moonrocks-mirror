package = "grpc-dc"
version = "0.39.0-1"
source = {
  url = "git+https://github.com/browser-grpc/grpc-over-datachannels",
  tag = "v0.39.0",
}
description = {
  summary = "gRPC over WebRTC DataChannels for Lua: dependency-free generated runtime",
  homepage = "https://github.com/browser-grpc/grpc-over-datachannels",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.4",
}
build = {
  type = "builtin",
  modules = {
    ["grpcdc.channel"] = "lua/grpcdc/channel.lua",
    ["grpcdc.codec"] = "lua/grpcdc/codec.lua",
    ["grpcdc.dynamic"] = "lua/grpcdc/dynamic.lua",
    ["grpcdc.endpoint"] = "lua/grpcdc/endpoint.lua",
    ["grpcdc.eventbus"] = "lua/grpcdc/eventbus.lua",
    ["grpcdc.eventbus_git"] = "lua/grpcdc/eventbus_git.lua",
    ["grpcdc.memory_transport"] = "lua/grpcdc/memory_transport.lua",
    ["grpcdc.server"] = "lua/grpcdc/server.lua",
    ["grpcdc.sidecar_transport"] = "lua/grpcdc/sidecar_transport.lua",
    ["grpcdc.status"] = "lua/grpcdc/status.lua",
    ["grpcdc.transport"] = "lua/grpcdc/transport.lua",
    ["grpcdc.wire"] = "lua/grpcdc/wire.lua",
  },
}
