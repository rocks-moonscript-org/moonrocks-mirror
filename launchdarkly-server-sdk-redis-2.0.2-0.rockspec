package = "launchdarkly-server-sdk-redis"

rockspec_format = "3.0"

version = "2.0.2-0"

description = {
   summary = "LaunchDarkly Lua Server-Side SDK Redis Source",
   detailed = [[
      Provides a Redis-based data source for the LaunchDarkly Lua Server-Side SDK. Use this if your feature flags
      should be retrieved from Redis instead of LaunchDarkly SaaS (for instance, when using Relay Proxy.)
   ]],
   license = "Apache-2.0",
   homepage = "https://github.com/launchdarkly/lua-server-sdk",
   issues_url = "https://github.com/launchdarkly/lua-server-sdk/issues/",
   maintainer = "LaunchDarkly <sdks@launchdarkly.com>",
   labels = {"launchdarkly", "launchdarkly-sdk", "feature-flags", "feature-toggles", "redis"}
}

source = {
   url = "git+https://github.com/launchdarkly/lua-server-sdk.git",
   tag = "v2.0.2"
}

dependencies = {
   "lua >= 5.1, <= 5.4"
}

external_dependencies = {
    LDREDIS = {
        header = "launchdarkly/server_side/bindings/c/integrations/redis/redis_source.h",
        library = "launchdarkly-cpp-server-redis-source"
    }
}

test = {
    type = "command",
    script = "test-redis.lua"
}

build = {
   type = "builtin",
   modules = {
      ["launchdarkly_server_sdk_redis"] = {
          sources = { "launchdarkly-server-sdk-redis.c" },
          incdirs = {"$(LDREDIS_INCDIR)"},
          libdirs = {"$(LDREDIS_LIBDIR)"},
          libraries = {"launchdarkly-cpp-server-redis-source"}
      }
   }
}
