package = "benchgecko"
version = "0.1.0-1"
source = {
   url = "git://github.com/BenchGecko/benchgecko-lua.git",
   tag = "v0.1.0"
}
description = {
   summary = "Official Lua SDK for the BenchGecko API",
   detailed = [[
      Query AI model data, benchmark scores, and run side-by-side comparisons.
      BenchGecko tracks every major AI model, benchmark, and provider.
   ]],
   homepage = "https://benchgecko.ai",
   license = "MIT",
   maintainer = "BenchGecko <hello@benchgecko.ai>"
}
dependencies = {
   "lua >= 5.1",
   "lua-cjson >= 2.1",
   "luasocket >= 3.0",
   "luasec >= 1.0"
}
build = {
   type = "builtin",
   modules = {
      benchgecko = "benchgecko.lua"
   }
}
