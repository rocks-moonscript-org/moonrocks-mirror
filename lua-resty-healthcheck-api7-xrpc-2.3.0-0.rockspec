package = "lua-resty-healthcheck-api7-xrpc"
version = "2.3.0-0"
source = {
   url = "git://github.com/api7/lua-resty-healthcheck-xrpc",
   tag = "v2.3.0"
}

description = {
   summary = "Healthchecks for OpenResty to check upstream service status",
   detailed = [[
      lua-resty-healthcheck is a module that can check upstream service
      availability by sending requests and validating responses at timed
      intervals.
   ]],
   homepage = "https://github.com/api7/lua-resty-healthcheck-xrpc",
   license = "Apache 2.0"
}

dependencies = {
   "lua-resty-worker-events = 1.0.0"
}
build = {
   type = "builtin",
   modules = {
      ["resty.healthcheck"] = "lib/resty/healthcheck.lua",
      ["resty.healthcheck.utils"] = "lib/resty/healthcheck/utils.lua"
   }
}
