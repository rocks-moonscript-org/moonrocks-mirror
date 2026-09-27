package = "lua-resty-surge"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mrjavadseydi/lua-resty-surge.git",
    tag = "v0.1.0",
}
description = {
    summary = "Adaptive L7 surge detection for OpenResty",
    detailed = "Tells an L7 flood apart from a busy hour, blocks only the attacking sources, and logs a readable reason for every decision.",
    homepage = "https://github.com/mrjavadseydi/lua-resty-surge",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["resty.surge"] = "lib/resty/surge.lua",
        ["resty.surge.analyzer"] = "lib/resty/surge/analyzer.lua",
        ["resty.surge.baseline"] = "lib/resty/surge/baseline.lua",
        ["resty.surge.challenge"] = "lib/resty/surge/challenge.lua",
        ["resty.surge.clientip"] = "lib/resty/surge/clientip.lua",
        ["resty.surge.config"] = "lib/resty/surge/config.lua",
        ["resty.surge.dashboard"] = "lib/resty/surge/dashboard.lua",
        ["resty.surge.decisions"] = "lib/resty/surge/decisions.lua",
        ["resty.surge.entropy"] = "lib/resty/surge/entropy.lua",
        ["resty.surge.escalation"] = "lib/resty/surge/escalation.lua",
        ["resty.surge.export"] = "lib/resty/surge/export.lua",
        ["resty.surge.feeds"] = "lib/resty/surge/feeds.lua",
        ["resty.surge.fingerprint"] = "lib/resty/surge/fingerprint.lua",
        ["resty.surge.gcra"] = "lib/resty/surge/gcra.lua",
        ["resty.surge.ipdb"] = "lib/resty/surge/ipdb.lua",
        ["resty.surge.ja4"] = "lib/resty/surge/ja4.lua",
        ["resty.surge.log"] = "lib/resty/surge/log.lua",
        ["resty.surge.messages"] = "lib/resty/surge/messages.lua",
        ["resty.surge.metrics"] = "lib/resty/surge/metrics.lua",
        ["resty.surge.presets"] = "lib/resty/surge/presets.lua",
        ["resty.surge.respond"] = "lib/resty/surge/respond.lua",
        ["resty.surge.sha256"] = "lib/resty/surge/sha256.lua",
        ["resty.surge.sketch"] = "lib/resty/surge/sketch.lua",
        ["resty.surge.sync"] = "lib/resty/surge/sync.lua",
        ["resty.surge.topk"] = "lib/resty/surge/topk.lua",
    },
}
