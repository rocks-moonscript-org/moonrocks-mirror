package = "sfn-auth"
version = "0.2-1"

local url = "github.com/smartfoodnet/sfn-kong"

source = {
  url = "git://" .. url
}

description = {
  homepage = "https://" .. url,
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "kong >= 2.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.sfn-auth.access"] = "kong/plugins/sfn-auth/handler.lua",
    ["kong.plugins.sfn-auth.handler"] = "kong/plugins/sfn-auth/handler.lua",
    ["kong.plugins.sfn-auth.schema"] = "kong/plugins/sfn-auth/schema.lua"
  }
}
