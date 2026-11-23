package = "apisix-plugin-agent-guard"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/complyee/apisix-plugin-agent-guard",
  tag = "v0.1.0",
}

description = {
  summary = "Agent Control Room enforcement point for Apache APISIX",
  detailed = [[
    Asks Agent Control Room before Apache APISIX forwards an agent's request
    (mode "decide"), or checks a grant the request already carries offline
    against the published Ed25519 key set (modes "verify" and "verify_jwt").
    Only a one-way fingerprint of the request body leaves the gateway.
    Fails closed: no decision means the request is not forwarded.
  ]],
  homepage = "https://agent-cr.com/plugins#apache-apisix",
  license = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["apisix.plugins.agent-guard"] = "apisix/plugins/agent-guard.lua",
    ["apisix.plugins.agent-guard.client"] = "apisix/plugins/agent-guard/client.lua",
    ["apisix.plugins.agent-guard.crypto"] = "apisix/plugins/agent-guard/crypto.lua",
    ["apisix.plugins.agent-guard.request"] = "apisix/plugins/agent-guard/request.lua",
    ["apisix.plugins.agent-guard.keys"] = "apisix/plugins/agent-guard/keys.lua",
    ["apisix.plugins.agent-guard.verify"] = "apisix/plugins/agent-guard/verify.lua",
    ["apisix.plugins.agent-guard.jwt_bind"] = "apisix/plugins/agent-guard/jwt_bind.lua",
  },
}
