package = "utilvo-shield-filters"
version = "1.0.0-1"

source = {
   url = "git+https://github.com/utilvo/utilvo-shield-filters.git",
   tag = "v1.1.0"
}

description = {
   summary = "Parser and matcher for DNS/ABP host blocklists and Utilvo Shield network filter rules.",
   detailed = [[
      Lightweight Lua library for parsing Adblock Plus (ABP) and hosts-file domain
      blocklists and evaluating hostname blocking rules.
   ]],
   homepage = "https://utilvo.com/shield",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["utilvo_shield_filters"] = "lua/utilvo_shield_filters.lua"
   }
}
