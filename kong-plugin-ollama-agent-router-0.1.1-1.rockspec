package = "kong-plugin-ollama-agent-router"
version = "0.1.1-1"

source = {
  url = "git+https://github.com/ExeconOne/kong-ollama-agent-router.git",
  tag = "v0.1.1",
}

description = {
  summary = "Kong Gateway plugin for routing OpenAI-compatible requests to ollama-agent-router nodes",
  detailed = [[
kong-ollama-agent-router is a Kong Gateway plugin that routes OpenAI-compatible
chat completion traffic to one or more ollama-agent-router runtime agents.
It keeps node capabilities, runtime state, model selection, and async job
handling behind Kong while preserving the OpenAI-compatible gateway surface.
]],
  homepage = "https://github.com/ExeconOne/kong-ollama-agent-router",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  "kong >= 3.8",
  "lua-resty-http >= 0.17",
  "lua-cjson >= 2.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-ollama-agent-router.handler"] = "kong-plugin/kong/plugins/kong-ollama-agent-router/handler.lua",
    ["kong.plugins.kong-ollama-agent-router.schema"] = "kong-plugin/kong/plugins/kong-ollama-agent-router/schema.lua",
    ["kong.plugins.kong-ollama-agent-router.classifier"] = "kong-plugin/kong/plugins/kong-ollama-agent-router/classifier.lua",
    ["kong.plugins.kong-ollama-agent-router.router_engine"] = "kong-plugin/kong/plugins/kong-ollama-agent-router/router_engine.lua",
    ["kong.plugins.kong-ollama-agent-router.node_router_client"] = "kong-plugin/kong/plugins/kong-ollama-agent-router/node_router_client.lua",
    ["kong.plugins.kong-ollama-agent-router.response"] = "kong-plugin/kong/plugins/kong-ollama-agent-router/response.lua",
    ["kong.plugins.kong-ollama-agent-router.metrics"] = "kong-plugin/kong/plugins/kong-ollama-agent-router/metrics.lua",
  },
}
