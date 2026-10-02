package = "lua-yar-grpc"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/fangfengxiang/lua-yar-grpc.git",
    tag = "v0.1.0",
}

description = {
    summary = "Pure Lua converter between gRPC protobuf frames and Yar call semantics",
    detailed = [[
lua-yar-grpc is a pure, runtime-agnostic Lua library that converts
between gRPC protobuf frames and Yar call semantics (method name,
positional params, retval shape). It is intentionally free of any
ngx.* / cosocket dependency so it can be unit-tested in plain LuaJIT
and reused across OpenResty, APISIX, Kong and other hosts.

Forward conversion (Yar -> gRPC): YAR positional params -> protobuf
encode -> gRPC frame. gRPC response frame -> protobuf decode -> YAR
retval.
Reverse conversion (gRPC -> Yar): pb decode -> extract params -> YAR
method + params. YAR retval -> map response -> pb encode.

Scope boundary: the Yar binary wire format (magic / 82-byte header /
msgpack body) is owned by lua-yar; transport (socket, body read/write)
is owned by the caller (bridge). This library does pure call-semantics
conversion only — it does not create yar.client or handle transport.
]],
    homepage = "https://github.com/fangfengxiang/lua-yar-grpc",
    license = "Apache-2.0",
    maintainer = "lua-yar-grpc Contributors",
}

dependencies = {
    "lua >= 5.1",
    "lua-protobuf",
    "lua-yar",
}

supported_platforms = {
    "unix", "macosx",
}

build = {
    type = "builtin",
    modules = {
        ["yar_grpc"]            = "src/yar_grpc/init.lua",
        ["yar_grpc.codec"]      = "src/yar_grpc/codec.lua",
        ["yar_grpc.grpc_converter"] = "src/yar_grpc/grpc_converter.lua",
        ["yar_grpc.pb_converter"] = "src/yar_grpc/pb_converter.lua",
        ["yar_grpc.errors"]     = "src/yar_grpc/errors.lua",
        ["yar_grpc.deadline"]   = "src/yar_grpc/deadline.lua",
        ["yar_grpc.forward"]    = "src/yar_grpc/forward.lua",
        ["yar_grpc.reverse"]    = "src/yar_grpc/reverse.lua",
    },
}
