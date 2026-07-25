rockspec_format = "3.0"
package = "wildling"
version = "2.0.7-1"
source = {
   -- Clone creates a directory named after the repo ("wildling"). Module paths
   -- below are relative to that monorepo root (not the lua/ subdirectory alone).
   url = "git+https://github.com/dotmonk/wildling.git",
   tag = "v2.0.7",
}
description = {
   summary = "Pattern based string generator library and CLI",
   detailed = [[
Enumerate pattern combinations for wordlists, domains, and test data.
POSIX-friendly Lua implementation with zero rock dependencies.
]],
   homepage = "https://github.com/dotmonk/wildling",
   license = "MIT",
   labels = { "pattern", "generator", "wildcard" },
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      wildling = "lua/lib/wildling/init.lua",
      ["wildling.generator"] = "lua/lib/wildling/generator.lua",
      ["wildling.parse_pattern"] = "lua/lib/wildling/parse_pattern.lua",
      ["wildling.token"] = "lua/lib/wildling/token.lua",
      ["wildling.json"] = "lua/lib/wildling/json.lua",
      ["wildling.cli"] = "lua/lib/wildling/cli.lua",
   },
   install = {
      bin = {
         wildling = "lua/bin/wildling.lua",
      },
   },
}
