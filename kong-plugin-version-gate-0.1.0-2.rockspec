package = "kong-plugin-version-gate"
version = "0.1.0-2"

source = {
  url = "git://github.com/erayack/version-gate-kong",
  tag = "v0.1.0-1",
}

description = {
  summary = "Kong plugin that enforces monotonic version consistency between request and response headers.",
  detailed = "version-gate compares an expected version header on the request with an actual version header on the upstream response, detects invariant violations, and enforces configurable actions (log, warn, or reject) to guarantee monotonic-read consistency at the API gateway layer.",
  homepage = "https://github.com/erayack/version-gate-kong",
  license = "Apache 2.0",
}

dependencies = {
  "kong >= 3.4, < 4.0",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.version-gate.handler"] = "kong/plugins/version-gate/handler.lua",
    ["kong.plugins.version-gate.schema"] = "kong/plugins/version-gate/schema.lua",
    ["kong.plugins.version-gate.daos"] = "kong/plugins/version-gate/daos.lua",
    ["kong.plugins.version-gate.constants"] = "kong/plugins/version-gate/constants.lua",
    ["kong.plugins.version-gate.ctx"] = "kong/plugins/version-gate/ctx.lua",
    ["kong.plugins.version-gate.decision_engine"] = "kong/plugins/version-gate/decision_engine.lua",
    ["kong.plugins.version-gate.enforcement"] = "kong/plugins/version-gate/enforcement.lua",
    ["kong.plugins.version-gate.invariant"] = "kong/plugins/version-gate/invariant.lua",
    ["kong.plugins.version-gate.observability"] = "kong/plugins/version-gate/observability.lua",
    ["kong.plugins.version-gate.policy"] = "kong/plugins/version-gate/policy.lua",
    ["kong.plugins.version-gate.state_store"] = "kong/plugins/version-gate/state_store.lua",
    ["kong.plugins.version-gate.version_extractor"] = "kong/plugins/version-gate/version_extractor.lua",
  },
}
