package = "kong-dynamic-upstream"
version = "0.2.0-1"
source = {
  url = "git+https://github.com/davidgrldo/kong-dynamic-upstream.git",
  tag = "v0.2.0",
  -- luarocks clones the repo into a directory named after it; source.dir
  -- is relative to that clone's parent, so the repo name stays in the path.
  dir = "kong-dynamic-upstream/plugins/dynamic-upstream",
}
description = {
  summary = "Gravitee-style dynamic upstream routing for Kong Gateway OSS",
  detailed = [[
Route requests to a different upstream per request, decided at the gateway:
by header value or regex, by authenticated consumer, or by a templated URL
built from request variables — with an SSRF-safe host allowlist enforced at
both config time and request time.

Two target modes:
- upstream: reference a Kong Upstream entity (load balancing, health checks)
- url: a literal or templated http(s) URL (Gravitee-style endpoint override)

First-match-wins rules, configurable no-match behavior (passthrough or 503),
DB-less/KIC friendly (no custom entities).
]],
  homepage = "https://github.com/davidgrldo/kong-dynamic-upstream",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.dynamic-upstream.handler"] = "kong/plugins/dynamic-upstream/handler.lua",
    ["kong.plugins.dynamic-upstream.rules"] = "kong/plugins/dynamic-upstream/rules.lua",
    ["kong.plugins.dynamic-upstream.schema"] = "kong/plugins/dynamic-upstream/schema.lua",
    ["kong.plugins.dynamic-upstream.template"] = "kong/plugins/dynamic-upstream/template.lua",
  },
}
