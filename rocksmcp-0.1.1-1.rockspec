package = "rocksmcp"
version = "0.1.1-1"
source = {
  url = "git+https://github.com/Servus-Altissimi/rocksmcp.git",
  tag = "v0.1.1",
}
description = {
  summary = "Write MCP (Model Context Protocol) servers in Lua",
  detailed = "Coroutine-based MCP server library: tools, resources, prompts, completion, logging, progress, sampling/elicitation, stdio transport. Lua 5.1+ and LuaJIT.",
  homepage = "https://github.com/Servus-Altissimi/rocksmcp",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["rocksmcp"] = "src/rocksmcp/init.lua",
    ["rocksmcp.json"] = "src/rocksmcp/json.lua",
    ["rocksmcp.json.dkjson"] = "src/rocksmcp/json/dkjson.lua",
    ["rocksmcp.json.cjson"] = "src/rocksmcp/json/cjson.lua",
    ["rocksmcp.protocol"] = "src/rocksmcp/protocol.lua",
    ["rocksmcp.server"] = "src/rocksmcp/server.lua",
    ["rocksmcp.schema"] = "src/rocksmcp/schema.lua",
    ["rocksmcp.transport.stdio"] = "src/rocksmcp/transport/stdio.lua",
  },
}
