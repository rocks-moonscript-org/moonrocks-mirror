rockspec_format = "3.0"
package = "panto-mcp"
version = "0.2.0-1"

source = {
   url = "git+https://code.tjp.lol/public/panto-mcp.git",
   tag = "v0.2.0",
}

description = {
   summary = "MCP server tools for panto, over stdio and Streamable HTTP",
   detailed = [[
Connect panto to local stdio and remote HTTP Model Context Protocol servers.
Provides deferred search/call tools, resource reads, prompts and a std.lua namespace.
]],
   homepage = "https://code.tjp.lol/public/panto-mcp",
   license = "MIT",
   labels = { "ai", "llm", "agent", "panto", "pantograph", "extension", "mcp" },
}

dependencies = {
   "lua >= 5.4, < 5.5",
}

build = {
   type = "builtin",
   modules = {
      ["panto-mcp"] = "init.lua",
      ["panto_mcp.async"] = "panto_mcp/async.lua",
      ["panto_mcp.cache"] = "panto_mcp/cache.lua",
      ["panto_mcp.client"] = "panto_mcp/client.lua",
      ["panto_mcp.config"] = "panto_mcp/config.lua",
      ["panto_mcp.docs"] = "panto_mcp/docs.lua",
      ["panto_mcp.eager"] = "panto_mcp/eager.lua",
      ["panto_mcp.http"] = "panto_mcp/http.lua",
      ["panto_mcp.hash"] = "panto_mcp/hash.lua",
      ["panto_mcp.jsonrpc"] = "panto_mcp/jsonrpc.lua",
      ["panto_mcp.manager"] = "panto_mcp/manager.lua",
      ["panto_mcp.namespace"] = "panto_mcp/namespace.lua",
      ["panto_mcp.oauth"] = "panto_mcp/oauth.lua",
      ["panto_mcp.prompts"] = "panto_mcp/prompts.lua",
      ["panto_mcp.results"] = "panto_mcp/results.lua",
      ["panto_mcp.search"] = "panto_mcp/search.lua",
      ["panto_mcp.stdio"] = "panto_mcp/stdio.lua",
      ["panto_mcp.supervisor"] = "panto_mcp/supervisor.lua",
      ["panto_mcp.tools"] = "panto_mcp/tools.lua",
      ["panto_mcp.validate"] = "panto_mcp/validate.lua",
   },
}
