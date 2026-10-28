package = "lapis-mcp"
version = "0.4.0-1"

source = {
  url = "git+https://github.com/leafo/lapis-mcp.git",
  branch = "v0.4.0"
}

description = {
  summary = "Model Context Protocol (MCP) server for the Lapis web framework",
  detailed = [[
    A base class and toolset for developing Model Context Protocol (MCP)
    servers in Lua/Moonscript. Includes MCP server for the Lapis web framework
    that provides information about the current Lapis application to AI agents.
  ]],
  homepage = "https://github.com/leafo/lapis-mcp",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lapis",
  "tableshape >= 2.7"
}

build = {
  type = "builtin",
  modules = {
    ["lapis.cmd.actions.mcp"] = "lapis/cmd/actions/mcp.lua",
    ["lapis.mcp.cli"] = "lapis/mcp/cli.lua",
    ["lapis.mcp.lapis_server"] = "lapis/mcp/lapis_server.lua",
    ["lapis.mcp.http"] = "lapis/mcp/http.lua",
    ["lapis.mcp.oauth"] = "lapis/mcp/oauth.lua",
    ["lapis.mcp.oauth.client_metadata"] = "lapis/mcp/oauth/client_metadata.lua",
    ["lapis.mcp.oauth.grant_model"] = "lapis/mcp/oauth/grant_model.lua",
    ["lapis.mcp.oauth.grant_store_contract"] = "lapis/mcp/oauth/grant_store_contract.lua",
    ["lapis.mcp.oauth.site"] = "lapis/mcp/oauth/site.lua",
    ["lapis.mcp.oauth.static"] = "lapis/mcp/oauth/static.lua",
    ["lapis.mcp.oauth.util"] = "lapis/mcp/oauth/util.lua",
    ["lapis.mcp.server"] = "lapis/mcp/server.lua",
    ["lapis.mcp.tool_adapter"] = "lapis/mcp/tool_adapter.lua",
    ["lapis.mcp.tool_adapter.anthropic"] = "lapis/mcp/tool_adapter/anthropic.lua",
    ["lapis.mcp.tool_adapter.gemini"] = "lapis/mcp/tool_adapter/gemini.lua",
    ["lapis.mcp.tool_adapter.openai"] = "lapis/mcp/tool_adapter/openai.lua",
    ["lapis.mcp.uri"] = "lapis/mcp/uri.lua",
    ["lapis.mcp.version"] = "lapis/mcp/version.lua",
  }
}
