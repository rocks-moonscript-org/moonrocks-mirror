package = "lua-utcp"
version = "1.8-1"
source = { url = "https://github.com/universal-tool-calling-protocol/lua-utcp/archive/refs/tags/v1.8.0.tar.gz" }
description = { summary = "Universal Tool Calling Protocol client for Lua", homepage = "https://utcp.io", license = "MPL-2.0" }
dependencies = { "lua >= 5.3, < 5.5", "luasocket >= 3.1", "lua-cjson >= 2.1", "http >= 0.4", "lua-grpc >= 0.1.4" }
build = {
  type = "builtin",
  modules = {
    ["utcp"] = "lua/utcp/init.lua",
    ["utcp.client"] = "lua/utcp/client.lua",
    ["utcp.registry"] = "lua/utcp/registry.lua",
    ["utcp.errors"] = "lua/utcp/errors.lua",
    ["utcp.json"] = "lua/utcp/json.lua",
    ["utcp.template"] = "lua/utcp/template.lua",
    ["utcp.auth"] = "lua/utcp/auth.lua",
    ["utcp.codemode"] = "lua/utcp/codemode.lua",
    ["utcp.provider"] = "lua/utcp/provider.lua",
    ["utcp.guard"] = "lua/utcp/guard.lua",
    ["utcp.protocol"] = "lua/utcp/protocol.lua",
    ["utcp.migration"] = "lua/utcp/migration.lua",
    ["utcp.variables"] = "lua/utcp/variables.lua",
    ["utcp.guards"] = "lua/utcp/guards/init.lua",
    ["utcp.guards.hol_guard"] = "lua/utcp/guards/hol_guard.lua",
    ["utcp.transports"] = "lua/utcp/transports/init.lua",
    ["utcp.transports.http"] = "lua/utcp/transports/http.lua",
    ["utcp.transports.sse"] = "lua/utcp/transports/sse.lua",
    ["utcp.transports.streamable"] = "lua/utcp/transports/streamable.lua",
    ["utcp.transports.tcp"] = "lua/utcp/transports/tcp.lua",
    ["utcp.transports.udp"] = "lua/utcp/transports/udp.lua",
    ["utcp.transports.cli"] = "lua/utcp/transports/cli.lua",
    ["utcp.transports.text"] = "lua/utcp/transports/text.lua",
    ["utcp.transports.graphql"] = "lua/utcp/transports/graphql.lua",
    ["utcp.transports.mcp"] = "lua/utcp/transports/mcp.lua",
    ["utcp.transports.websocket"] = "lua/utcp/transports/websocket.lua",
    ["utcp.transports.grpc"] = "lua/utcp/transports/grpc.lua",
    ["utcp.transports.webrtc"] = "lua/utcp/transports/webrtc.lua"
  }
}
