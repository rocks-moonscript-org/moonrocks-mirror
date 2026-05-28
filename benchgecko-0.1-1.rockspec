package = "benchgecko"
version = "0.1-1"
source = {
   url = "git://github.com/BenchGecko/benchgecko-lua.git",
   tag = "v0.1"
}
description = {
   summary = "Lua SDK for BenchGecko — compare LLM benchmarks, estimate inference costs, and explore AI model performance data",
   detailed = [[
      benchgecko provides idiomatic Lua functions for working with LLM benchmark
      data. Build comparison tools, cost calculators, model selectors, and
      leaderboard UIs. Covers 9 benchmark categories across 300+ models.
   ]],
   homepage = "https://benchgecko.ai",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      benchgecko = "src/benchgecko.lua"
   }
}
