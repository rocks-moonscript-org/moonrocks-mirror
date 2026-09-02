package = "lua-grpc"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/Protocol-Lattice/lua-grpc.git",
}

description = {
   summary = "Native gRPC runtime for Lua",
   detailed = [[
Pure-Lua gRPC runtime with Protocol Buffers, HTTP/2, Lua service handlers,
and support for unary, server-streaming, client-streaming, and bidirectional
streaming RPCs.
]],
   homepage = "https://github.com/Protocol-Lattice/lua-grpc",
}

dependencies = {
   "lua >= 5.1",
   "http >= 0.4",
   "lua-protobuf",
}

build = {
   type = "builtin",
   modules = {
      ["grpc"] = "grpc.lua",
      ["grpc.init"] = "grpc/init.lua",
      ["grpc.client"] = "grpc/client.lua",
      ["grpc.context"] = "grpc/context.lua",
      ["grpc.framing"] = "grpc/framing.lua",
      ["grpc.metadata"] = "grpc/metadata.lua",
      ["grpc.server"] = "grpc/server.lua",
      ["grpc.status"] = "grpc/status.lua",
      ["grpc.stream"] = "grpc/stream.lua",
      ["grpc.codec.protobuf"] = "grpc/codec/protobuf.lua",
      ["grpc.transport.http2"] = "grpc/transport/http2.lua",
      ["grpc.transport.lua_http_compat"] = "grpc/transport/lua_http_compat.lua",
   },
}
