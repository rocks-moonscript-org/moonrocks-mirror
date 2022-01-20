package = "kong-jwt-firebase"
version = "2.0.0-23"
source = {
  url = "git://github.com/simantakaushik/kong-plugin-jwt-firebase",
}
description = {
  summary = "This plugin allows Kong 2.0+ to verify JWT Firebase Token.",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1",
  --"kong >= 2.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-firebase.handler"] = "kong/plugins/jwt-firebase/handler.lua",
    ["kong.plugins.jwt-firebase.schema"]  = "kong/plugins/jwt-firebase/schema.lua",
    ["kong.plugins.jwt-firebase.constants"] = "kong/plugins/jwt-firebase/constants.lua"
  }
}

