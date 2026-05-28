package = "argus-redact-bridge"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/wan9yu/kong-plugin-argus-redact",
  tag = "v0.1.0",
}

description = {
  summary  = "Kong plugin: PII redact/restore around upstream LLM calls via argus-redact",
  detailed = [[
Kong plugin that mediates OpenAI-compatible Chat Completions requests:
extracts messages[].content, sends each through argus-redact's HTTP /redact
endpoint to get a realistic-looking pseudonymized form, forwards the redacted
request to the upstream LLM, and restores the original PII in the response
via /restore. Fail-closed by default: returns 503 if the argus-redact sidecar
is unreachable, so unredacted PII never reaches the LLM.
]],
  homepage = "https://github.com/wan9yu/kong-plugin-argus-redact",
  license  = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.argus-redact-bridge.handler"]    = "kong/plugins/argus-redact-bridge/handler.lua",
    ["kong.plugins.argus-redact-bridge.schema"]     = "kong/plugins/argus-redact-bridge/schema.lua",
    ["kong.plugins.argus-redact-bridge.client"]     = "kong/plugins/argus-redact-bridge/client.lua",
    ["kong.plugins.argus-redact-bridge.json_codec"] = "kong/plugins/argus-redact-bridge/json_codec.lua",
  },
}
