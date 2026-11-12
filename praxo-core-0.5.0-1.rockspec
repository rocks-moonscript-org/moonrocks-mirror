package = "praxo-core"
version = "0.5.0-1"

source = {
  url = "git+https://github.com/axisvela/praxo-core.git",
  tag = "lua/v0.5.0",
}

description = {
  summary = "Embeddable MIT-licensed agent framework for Lua",
  detailed = [[
    Native Lua Core for the PRAXO-CORE agent framework: tools, policy, events,
    memory, context, middleware, checkpoints, human-in-the-loop decisions,
    SSE parsing, an optional OpenAI-compatible adapter, and an agent loop.
  ]],
  homepage = "https://axisvela.github.io/praxo-core/",
  license = "MIT",
}

dependencies = {
  "lua >= 5.4",
}

build = {
  type = "builtin",
  modules = {
    ["praxo.agent"] = "language/lua/praxo/agent.lua",
    ["praxo.errors"] = "language/lua/praxo/errors.lua",
    ["praxo.json"] = "language/lua/praxo/json.lua",
    ["praxo.jsonschema"] = "language/lua/praxo/jsonschema.lua",
    ["praxo.middleware"] = "language/lua/praxo/middleware.lua",
    ["praxo.models"] = "language/lua/praxo/models.lua",
    ["praxo.openai_compatible"] = "language/lua/praxo/openai_compatible.lua",
    ["praxo.harmovela_sink"] = "language/lua/praxo/harmovela_sink.lua",
    ["praxo.adapters.openai_compatible"] = "language/lua/praxo/adapters/openai_compatible.lua",
    ["praxo.adapters.anthropic"] = "language/lua/praxo/adapters/anthropic.lua",
    ["praxo.adapters.mcp"] = "language/lua/praxo/adapters/mcp.lua",
    ["praxo.adapters.gemini"] = "language/lua/praxo/adapters/gemini.lua",
    ["praxo.adapters.harmovela_sink"] = "language/lua/praxo/adapters/harmovela_sink.lua",
    ["praxo.plugin"] = "language/lua/praxo/plugin.lua",
    ["praxo.runtime"] = "language/lua/praxo/runtime.lua",
    ["praxo.sse"] = "language/lua/praxo/sse.lua",
    ["praxo.toolcall"] = "language/lua/praxo/toolcall.lua",
  },
}
