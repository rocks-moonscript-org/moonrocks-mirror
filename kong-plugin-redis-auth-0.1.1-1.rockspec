package = "kong-plugin-redis-auth"
version = "0.1.1-1"

source = {
  url = "https://github.com/jooonwood/kong-plugin-redis-auth/archive/0.1.1.tar.gz",
  dir = "kong-plugin-redis-auth-0.1.1"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "use redis key auth in Kong",
  license = "MIT",
}

dependencies = {
  --"kong >= 0.13.0",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.redis-auth.handler"] = "kong/plugins/redis-auth/handler.lua",
    ["kong.plugins.redis-auth.schema"] = "kong/plugins/redis-auth/schema.lua",
  }
}
