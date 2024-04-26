package = "lua-resty-healthcheck-alins"
version = "3.0.0-0"
source = {
   url = "git://github.com/AlinsRan/lua-resty-healthcheck",
   tag = "v3.0.0"
}

description = {
   summary = "Healthchecks for OpenResty to check upstream service status",
   detailed = [[
      lua-resty-healthcheck is a module that can check upstream service
      availability by sending requests and validating responses at timed
      intervals.
   ]],
   homepage = "https://github.com/AlinsRan/lua-resty-healthcheck",
   license = "Apache 2.0"
}

dependencies = {
  "lua-resty-worker-events ~> 2",
  "penlight ~> 1.7",
  "lua-resty-timer ~> 1",
}
build = {
   type = "builtin",
   modules = {
      ["resty.healthcheck"] = "lib/resty/healthcheck.lua"
   }
}
