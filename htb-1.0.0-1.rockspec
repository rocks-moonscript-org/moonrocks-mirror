-- htb rockspec: pure-Lua rewrite of hotbuckets.
-- Build/install with:  luarocks build htb-1.0.0-1.rockspec

package = "htb"
version = "1.0.0-1"

source = {
  url = "git_file:///home/fab/dev/std/hotbuckets/lua_rewrite",
}

description = {
  summary = "Generate Linux tc (traffic control) rules from a TOML configuration",
  detailed = [[
    htb reads a TOML description of qdiscs, classes, filters and actions and
    emits a ready-to-run `tc` shell script. Pure Lua rewrite of hotbuckets.
  ]],
  license = "MIT",
  homepage = "https://github.com/fdev31/hotbuckets-lua",
}

dependencies = {
  "lua >= 5.1",
  -- Pure-Lua TOML parser. Adjust to the rock you standardise on.
  "toml",
}

-- Modules live under src/ (module root).
-- Install the `htb` executable.
build = {
  type = "builtin",
  modules = {
    ["htb"] = "src/htb/init.lua",
    ["htb.cli"] = "src/htb/cli.lua",
    ["htb.config"] = "src/htb/config.lua",
    ["htb.model"] = "src/htb/model.lua",
    ["htb.resolver"] = "src/htb/resolver.lua",
    ["htb.script"] = "src/htb/script.lua",
    ["htb.registry"] = "src/htb/registry.lua",
    ["htb.graph"] = "src/htb/graph.lua",
    ["htb.auto"] = "src/htb/auto.lua",
    ["htb.errors"] = "src/htb/errors.lua",
    ["htb.plugins"] = "src/htb/plugins/init.lua",
    ["htb.plugins.qdiscs"] = "src/htb/plugins/qdiscs.lua",
    ["htb.plugins.filters"] = "src/htb/plugins/filters.lua",
    ["htb.plugins.actions"] = "src/htb/plugins/actions.lua",
  },
  install = {
    bin = {
      htb = "bin/htb",
    },
  },
}
