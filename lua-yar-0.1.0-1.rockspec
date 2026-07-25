package = "lua-yar"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/fangfengxiang/lua-yar.git",
    tag = "v0.1.0"
}

description = {
    summary = "Yar RPC Framework for Lua",
    detailed = [[
        Pure Lua implementation of the Yar RPC protocol.
        Provides yar-client and yar-server with HTTP/TCP transport.
        Zero C extension dependencies. Network layer is pluggable:
        standard Lua + luasocket (optional soft dependency, install
        separately) or OpenResty (ngx.socket injection).
    ]],
    homepage = "https://github.com/fangfengxiang/lua-yar",
    license = "Apache-2.0"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "none",
    modules = {
        ["yar"]                     = "src/yar/init.lua",
        ["yar.client"]              = "src/yar/client.lua",
        ["yar.error"]               = "src/yar/error.lua",
        ["yar.log"]                 = "src/yar/log.lua",
        ["yar.util"]                = "src/yar/util.lua",
        ["yar.message.request"]     = "src/yar/message/request.lua",
        ["yar.message.response"]    = "src/yar/message/response.lua",
        ["yar.packager.json"]       = "src/yar/packager/json.lua",
        ["yar.packager.msgpack"]    = "src/yar/packager/msgpack.lua",
        ["yar.packager.packager"]   = "src/yar/packager/packager.lua",
        ["yar.protocol.framing"]    = "src/yar/protocol/framing.lua",
        ["yar.protocol.header"]     = "src/yar/protocol/header.lua",
        ["yar.protocol.protocol"]   = "src/yar/protocol/protocol.lua",
        ["yar.server"]              = "src/yar/server/init.lua",
        ["yar.server.constants"]    = "src/yar/server/constants.lua",
        ["yar.server.daemon"]       = "src/yar/server/daemon.lua",
        ["yar.server.dispatcher"]   = "src/yar/server/dispatcher.lua",
        ["yar.server.http"]         = "src/yar/server/http.lua",
        ["yar.server.tcp"]          = "src/yar/server/tcp.lua",
        ["yar.transport.constants"] = "src/yar/transport/constants.lua",
        ["yar.transport.http"]      = "src/yar/transport/http.lua",
        ["yar.transport.resolve"]   = "src/yar/transport/resolve.lua",
        ["yar.transport.socket"]    = "src/yar/transport/socket.lua",
        ["yar.transport.tcp"]       = "src/yar/transport/tcp.lua",
        ["yar.transport.transport"] = "src/yar/transport/transport.lua",
    }
}
