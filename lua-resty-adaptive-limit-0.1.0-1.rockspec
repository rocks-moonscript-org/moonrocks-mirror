package = "lua-resty-adaptive-limit"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mrjavadseydi/lua-resty-adaptive-limit.git",
    tag = "v0.1.0",
}

description = {
   summary = "Adaptive concurrency limiting and load shedding for OpenResty",
   detailed = [[
Adaptive concurrency limiting for OpenResty: the allowed number of
concurrent requests against a protected upstream adjusts automatically
from observed completion latency and explicit overload signals, so
excess load is shed early instead of piling onto a saturating backend.

O(1) request-path admission on top of atomic lua_shared_dict
operations (~0.25us/op measured), one scheduler timer per worker,
deterministic windows with lease-based single-leader controller
updates, Gradient2 (default) and AIMD controllers, graceful-reload
state preservation, worker-exit reconciliation, stuck-pool
diagnostics, and no runtime dependencies beyond OpenResty >= 1.15.8.1.
]],
   homepage = "https://github.com/mrjavadseydi/lua-resty-adaptive-limit",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["resty.adaptive_limit"] = "lib/resty/adaptive_limit.lua",
      ["resty.adaptive_limit.limiter"] = "lib/resty/adaptive_limit/limiter.lua",
      ["resty.adaptive_limit.scheduler"] = "lib/resty/adaptive_limit/scheduler.lua",
      ["resty.adaptive_limit.state"] = "lib/resty/adaptive_limit/state.lua",
      ["resty.adaptive_limit.errors"] = "lib/resty/adaptive_limit/errors.lua",
      ["resty.adaptive_limit.runtime"] = "lib/resty/adaptive_limit/runtime.lua",
      ["resty.adaptive_limit.config"] = "lib/resty/adaptive_limit/config.lua",
      ["resty.adaptive_limit.upstream_time"] = "lib/resty/adaptive_limit/upstream_time.lua",
      ["resty.adaptive_limit.http"] = "lib/resty/adaptive_limit/http.lua",
      ["resty.adaptive_limit.controller.gradient2"] = "lib/resty/adaptive_limit/controller/gradient2.lua",
      ["resty.adaptive_limit.controller.aimd"] = "lib/resty/adaptive_limit/controller/aimd.lua",
      ["resty.adaptive_limit.controller.common"] = "lib/resty/adaptive_limit/controller/common.lua",
      ["resty.adaptive_limit.util.clamp"] = "lib/resty/adaptive_limit/util/clamp.lua",
      ["resty.adaptive_limit.util.ewma"] = "lib/resty/adaptive_limit/util/ewma.lua",
   },
}
