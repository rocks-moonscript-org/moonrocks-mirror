package = "lua-resty-yar-grpc-bridge"
version = "0.1.2-1"

source = {
    url = "git+https://github.com/fangfengxiang/lua-resty-yar-grpc-bridge.git",
    tag = "v0.1.2"
}

description = {
    summary = "Bidirectional gRPC and YAR protocol bridge for OpenResty",
    detailed = [[
        A bidirectional gRPC and YAR protocol bridge for OpenResty.
        grpc2yar: receives gRPC client unary calls, converts to YAR calls
        and forwards to a PHP YAR server. yar2grpc: receives YAR client
        calls, converts to gRPC calls and forwards to a gRPC backend.
        Neither client needs awareness of the peer protocol.
    ]],
    homepage = "https://github.com/fangfengxiang/lua-resty-yar-grpc-bridge",
    license = "Apache-2.0"
}

dependencies = {
    "lua-yar-grpc >= 0.1.0",
    "lua-yar >= 0.1.2",
    "lua-protobuf >= 0.3.0",
}

build = {
    type = "builtin",
    modules = {
        ["resty.yar_grpc_bridge"] = "lib/resty/yar_grpc_bridge/init.lua",
        ["resty.yar_grpc_bridge.grpc2yar"] = "lib/resty/yar_grpc_bridge/grpc2yar.lua",
        ["resty.yar_grpc_bridge.grpc2yar_endpoint"] = "lib/resty/yar_grpc_bridge/grpc2yar_endpoint.lua",
        ["resty.yar_grpc_bridge.host"] = "lib/resty/yar_grpc_bridge/host.lua",
        ["resty.yar_grpc_bridge.trace"] = "lib/resty/yar_grpc_bridge/trace.lua",
        ["resty.yar_grpc_bridge.yar2grpc"] = "lib/resty/yar_grpc_bridge/yar2grpc.lua",
        ["resty.yar_grpc_bridge.yar2grpc_endpoint"] = "lib/resty/yar_grpc_bridge/yar2grpc_endpoint.lua",
    }
}
