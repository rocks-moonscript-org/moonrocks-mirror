rockspec_format = "3.0"
package = "panto-report-status"
version = "0.1.0-1"

source = {
   url = "git+https://code.tjp.lol/public/panto-report-status.git",
   tag = "v0.1.0",
}

description = {
   summary = "Terminal-native OSC 7501 lifecycle reporting for panto",
   homepage = "https://code.tjp.lol/public/panto-report-status",
   license = "MIT",
   labels = { "ai", "llm", "agent", "panto", "pantograph", "extension", "terminal" },
}

-- panto supplies luv in its embedded Lua runtime.
dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["panto-report-status"] = "panto-report-status/init.lua",
   },
}
