package = "kong-plugin-agentcert-tag"
version = "0.2.0-1"
source = {
  url = "git+https://github.com/pdxlab/agentcert-tag.git",
  tag = "v0.2.0",
}
description = {
  summary = "TAG — verify TrustModel AgentCert + TrustScore in Kong",
  detailed = [[
    A drop-in Kong plugin that turns Kong into a verifier of an agent's AgentCert
    (X.509) + TrustScore. Shadow mode by default (decides + logs, blocks nothing);
    exposes kong.ctx.shared.trustscore / kong.ctx.shared.agentcert for Kong's own
    policy rules. Does NOT replace Kong's policy engine.
  ]],
  homepage = "https://trustmodel.ai/verify",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.agentcert-tag.handler"] = "kong/agentcert-tag/handler.lua",
    ["kong.plugins.agentcert-tag.schema"] = "kong/agentcert-tag/schema.lua",
  },
}
