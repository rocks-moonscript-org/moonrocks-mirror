package = "praxo-core"
version = "0.3.0-1"

source = {
  url = "git+https://github.com/axisvela/praxo-core.git",
  tag = "lua/v0.3.0",
}

description = {
  summary = "Embeddable MIT-licensed agent framework for Lua",
  detailed = [[
    Native Lua Core for the PRAXO-CORE agent framework: tools, policy, events,
    memory, context, middleware, checkpoints, SSE parsing, and an agent loop.
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
    ["praxo.plugin"] = "language/lua/praxo/plugin.lua",
    ["praxo.runtime"] = "language/lua/praxo/runtime.lua",
    ["praxo.sse"] = "language/lua/praxo/sse.lua",
    ["praxo.toolcall"] = "language/lua/praxo/toolcall.lua",
  },
}
