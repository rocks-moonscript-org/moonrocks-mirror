package = "launchdarkly-server-sdk"

rockspec_format = "3.0"

version = "2.0.6-0"

description = {
   summary = "LaunchDarkly SDK for server-side applications.",
   detailed = [[
      The Lua Server-side SDK provides access to LaunchDarkly's feature flag system and is suitable for
      server-side application. It is a wrapper around the LaunchDarkly C++ Server-side SDK, making use of its
      C API.
   ]],
   license = "Apache-2.0",
   homepage = "https://github.com/launchdarkly/lua-server-sdk",
   issues_url = "https://github.com/launchdarkly/lua-server-sdk/issues/",
   maintainer = "LaunchDarkly <sdks@launchdarkly.com>",
   labels = {"launchdarkly", "launchdarkly-sdk", "feature-flags", "feature-toggles"}
}

source = {
   url = "git+https://github.com/launchdarkly/lua-server-sdk.git",
   tag = "v2.0.6"
}

dependencies = {
   "lua >= 5.1, <= 5.4"
}

external_dependencies = {
    LD = {
        header = "launchdarkly/server_side/bindings/c/sdk.h",
        library = "launchdarkly-cpp-server"
    },
}

test = {
    type = "command",
    command = "./scripts/interpreter.sh test.lua"
}

build = {
   type = "builtin",
   modules = {
      ["launchdarkly_server_sdk"] = {
          sources = { "launchdarkly-server-sdk.c" },
          -- Uncomment to compile with debug messages, mainly to help debug parsing configuration/context
          -- builders.
          -- defines = {"DEBUG=1"},
          incdirs = {"$(LD_INCDIR)"},
          libdirs = {"$(LD_LIBDIR)"},
          libraries = {"launchdarkly-cpp-server"},
      }
   }
}
