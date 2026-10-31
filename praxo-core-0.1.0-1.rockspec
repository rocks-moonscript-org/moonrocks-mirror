package = "praxo-core"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/axisvela/praxo-core.git",
  tag = "lua/v0.1.0",
  dir = "language/lua",
}

description = {
  summary = "Embeddable MIT-licensed agent framework for Lua",
  detailed = [[
    Native Lua Core for the PRAXO-CORE agent framework: tools, policy, events,
    memory, context, middleware, checkpoints, and an agent loop.
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
    ["praxo.agent"] = "praxo/agent.lua",
    ["praxo.errors"] = "praxo/errors.lua",
    ["praxo.json"] = "praxo/json.lua",
    ["praxo.jsonschema"] = "praxo/jsonschema.lua",
    ["praxo.middleware"] = "praxo/middleware.lua",
    ["praxo.models"] = "praxo/models.lua",
    ["praxo.plugin"] = "praxo/plugin.lua",
    ["praxo.runtime"] = "praxo/runtime.lua",
    ["praxo.toolcall"] = "praxo/toolcall.lua",
  },
}
