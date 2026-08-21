rockspec_format = "3.0"
package = "panto-web"
version = "0.1.0-1"

source = {
   url = "git+https://code.tjp.lol/public/panto-web.git",
   tag = "v0.1.0",
}

description = {
   summary = "Lightpanda-backed web fetch and Exa search tools for pantograph",
   detailed = [[
Web access for the panto CLI: web.fetch returns JavaScript-rendered Markdown
through a Lightpanda MCP subprocess, and web.search uses Exa's keyless MCP HTTP
endpoint or its REST API when EXA_API_KEY is configured.
Lightpanda must be on PATH.
Load by adding "panto-web" to `extensions.rocks` in panto's config.toml.
]],
   homepage = "https://code.tjp.lol/public/panto-web",
   license = "MIT",
   labels = { "ai", "llm", "agent", "panto", "pantograph", "extension", "web" },
}

dependencies = {
   "lua >= 5.4, < 5.5",
}

build = {
   type = "builtin",
   modules = {
      ["panto-web"] = "panto-web/init.lua",
   },
}
