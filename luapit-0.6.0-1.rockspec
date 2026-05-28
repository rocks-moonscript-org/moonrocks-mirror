package = "luapit"

local package_version = "0.6.0"
local rockspec_revision = "1"

version = package_version .. "-" .. rockspec_revision

source = {
   url = "git+https://github.com/jeffzi/luapit.git",
   tag = "v" .. package_version,
}

description = {
   summary = "Compare Lua library performance across git refs.",
   detailed = [[
      LuaPit orchestrates running LuaMark benchmarks across git references
      and local implementations, then compares the results.
   ]],
   homepage = "https://github.com/jeffzi/luapit",
   license = "MIT",
}

dependencies = {
   "lua >= 5.1",
   "argparse >= 0.7.1",
   "luamark >= 1.0.0",
   "penlight >= 1.11.0",
   "dkjson >= 2.5",
   "chronos >= 0.2",
   platforms = {
      unix = {
         "luaposix >= 36.3",
      },
   },
}

build = {
   type = "builtin",
   modules = {
      luapit = "src/luapit/init.lua",
      ["luapit.discover"] = "src/luapit/discover.lua",
      ["luapit.export"] = "src/luapit/export.lua",
      ["luapit.loader"] = "src/luapit/loader.lua",
      ["luapit.resolve"] = "src/luapit/resolve.lua",
      ["luapit.runner"] = "src/luapit/runner.lua",
      ["luapit.exec"] = "src/luapit/exec.lua",
      ["luapit.subprocess"] = "src/luapit/subprocess.lua",
      ["luapit.engines"] = "src/luapit/engines/init.lua",
      ["luapit.engines.love2d"] = "src/luapit/engines/love2d.lua",
      ["luapit.engines.defold"] = "src/luapit/engines/defold.lua",
      ["luapit.engines.defold_html5"] = "src/luapit/engines/defold_html5.lua",
   },
   install = {
      bin = {
         luapit = "bin/luapit",
         ["luapit-html5-harness"] = "src/luapit/engines/defold_html5_harness.mjs",
      },
   },
}
