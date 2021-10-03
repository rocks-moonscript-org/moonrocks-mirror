package = "lua-newrelic-integration"
version = "0.01-2"
source = {
   url = "git://github.com/danifbento/lua-newrelic-integration",
   tag = "v0.01-2"
}
description = {
   summary = "Lua newrelic client library for OpenResty / ngx_lua.",
   detailed = [[
    Features an interface to reporting and monitoring with New Relic.
    Requires New Relic C-SDK shared librarie to be installed
    (https://docs.newrelic.com/docs/agents/c-sdk/get-started/introduction-c-sdk/)
  ]],
   homepage = "https://github.com/danifbento/lua-newrelic-integration",
   license = "2-clause BSD",
   maintainer = "Daniela Filipe Bento <danibento@overdestiny.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["lua-nri.newrelic"] = "lib/nri/newrelic.lua",
      ["lua-nri.newrelic_agent"] = "lib/nri/newrelic_agent.lua"
   }
}
