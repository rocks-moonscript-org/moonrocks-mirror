rockspec_format = "3.0"
package = "wildling"
version = "2.0.5-1"
source = {
   url = "git+https://github.com/dotmonk/wildling.git",
   tag = "v2.0.5",
   dir = "lua",
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
      wildling = "lib/wildling/init.lua",
      ["wildling.generator"] = "lib/wildling/generator.lua",
      ["wildling.parse_pattern"] = "lib/wildling/parse_pattern.lua",
      ["wildling.token"] = "lib/wildling/token.lua",
      ["wildling.json"] = "lib/wildling/json.lua",
      ["wildling.cli"] = "lib/wildling/cli.lua",
   },
   install = {
      bin = {
         wildling = "bin/wildling.lua",
      },
   },
}
