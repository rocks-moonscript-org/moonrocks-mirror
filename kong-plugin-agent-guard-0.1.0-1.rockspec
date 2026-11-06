package = "kong-plugin-agent-guard"
version = "0.1.0-1"

source = {
  url = "git://github.com/complyee/kong-plugin-agent-guard",
  tag = "v0.1.0",
}

description = {
  summary = "Agent Control Room enforcement point for Kong Gateway",
  detailed = [[
    Asks Agent Control Room before Kong forwards an agent's request
    (mode "decide"), or checks a grant the request already carries offline
    against the published Ed25519 key set (modes "verify" and "verify_jwt").
    Only a one-way fingerprint of the request body leaves the gateway.
    Fails closed: no decision means the request is not forwarded.
  ]],
  homepage = "https://agent-cr.com/plugins#kong-gateway",
  license = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.17",
  "lua-resty-openssl >= 0.8",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.agent-guard.handler"] = "kong/plugins/agent-guard/handler.lua",
    ["kong.plugins.agent-guard.schema"] = "kong/plugins/agent-guard/schema.lua",
    ["kong.plugins.agent-guard.client"] = "kong/plugins/agent-guard/client.lua",
    ["kong.plugins.agent-guard.crypto"] = "kong/plugins/agent-guard/crypto.lua",
    ["kong.plugins.agent-guard.request"] = "kong/plugins/agent-guard/request.lua",
    ["kong.plugins.agent-guard.keys"] = "kong/plugins/agent-guard/keys.lua",
    ["kong.plugins.agent-guard.verify"] = "kong/plugins/agent-guard/verify.lua",
    ["kong.plugins.agent-guard.jwt_bind"] = "kong/plugins/agent-guard/jwt_bind.lua",
  },
}
