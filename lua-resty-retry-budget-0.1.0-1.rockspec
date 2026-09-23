package = "lua-resty-retry-budget"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mrjavadseydi/lua-resty-retry-budget.git",
    tag = "v0.1.0",
}
description = {
    summary = "Retry budgets and hedged requests for OpenResty",
    detailed = [[
        Limits retries to a fraction of recent traffic, and can send one
        hedged attempt to cut tail latency. Shared state lives in a
        lua_shared_dict so every nginx worker draws from the same budget.
    ]],
    homepage = "https://github.com/mrjavadseydi/lua-resty-retry-budget",
    license = "BSD",
}
dependencies = {
    "lua >= 5.1",
    "lua-resty-http",
}
build = {
    type = "builtin",
    modules = {
        ["resty.retry_budget"] = "lib/resty/retry_budget.lua",
        ["resty.retry_budget.backoff"] = "lib/resty/retry_budget/backoff.lua",
        ["resty.retry_budget.budget"] = "lib/resty/retry_budget/budget.lua",
        ["resty.retry_budget.client"] = "lib/resty/retry_budget/client.lua",
        ["resty.retry_budget.deadline"] = "lib/resty/retry_budget/deadline.lua",
        ["resty.retry_budget.hedge"] = "lib/resty/retry_budget/hedge.lua",
        ["resty.retry_budget.histogram"] = "lib/resty/retry_budget/histogram.lua",
        ["resty.retry_budget.log"] = "lib/resty/retry_budget/log.lua",
        ["resty.retry_budget.prometheus"] = "lib/resty/retry_budget/prometheus.lua",
    },
}
