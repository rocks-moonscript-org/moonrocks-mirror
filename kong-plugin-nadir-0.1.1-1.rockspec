package = "kong-plugin-nadir"
version = "0.1.1-1"

source = {
  url = "git+https://github.com/NadirRouter/kong-plugin-nadir.git",
  tag = "0.1.1",
}

description = {
  summary  = "Cost-aware LLM model routing for Kong via Nadir's decision API",
  detailed = [[
    A Kong plugin that turns a single virtual model name ("nadir-auto") into an
    intelligent, cost-aware routing decision. In the access phase it asks
    Nadir's decision-only endpoint (/v1/recommend, no LLM call) which real model
    fits the prompt, rewrites the upstream request body, and fails open on any
    error. Auth, provider keys, streaming, and logging stay with Kong.
  ]],
  homepage = "https://getnadir.com",
  license  = "PolyForm-Noncommercial-1.0.0",
}

dependencies = {
  "lua >= 5.1",
  -- lua-resty-http ships with Kong; listed here for standalone installs.
  "lua-resty-http >= 0.17",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.nadir.handler"] = "kong/plugins/nadir/handler.lua",
    ["kong.plugins.nadir.schema"]  = "kong/plugins/nadir/schema.lua",
  },
}
