package = "ai-lasso-guardrail"
version = "1.0.1-1"

source = {
  url = "git+https://github.com/lasso-security/kong-ai-lasso-guardrail.git",
  tag = "1.0.1",
}

description = {
  summary = "Kong plugin: classify chat traffic with Lasso Security and block or mask inline.",
  homepage = "https://github.com/lasso-security/kong-ai-lasso-guardrail",
  license = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.ai-lasso-guardrail.handler"] = "kong/plugins/ai-lasso-guardrail/handler.lua",
    ["kong.plugins.ai-lasso-guardrail.schema"]  = "kong/plugins/ai-lasso-guardrail/schema.lua",
    ["kong.plugins.ai-lasso-guardrail.lasso"]   = "kong/plugins/ai-lasso-guardrail/lasso.lua",
    ["kong.plugins.ai-lasso-guardrail.client"]  = "kong/plugins/ai-lasso-guardrail/client.lua",
  },
}
