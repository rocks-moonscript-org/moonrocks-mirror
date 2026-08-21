rockspec_format = "3.0"
package = "panto-herdr"
version = "0.1.0-1"

source = {
   url = "git+https://code.tjp.lol/public/panto-herdr.git",
   tag = "v0.1.0",
}

description = {
   summary = "Herdr lifecycle reporting for panto",
   detailed = [[
A panto extension that reports panto lifecycle state to Herdr when it runs
inside a Herdr pane.
]],
   homepage = "https://code.tjp.lol/public/panto-herdr",
   license = "MIT",
   labels = { "ai", "llm", "agent", "panto", "pantograph", "extension", "herdr" },
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["panto-herdr"] = "panto-herdr/init.lua",
   },
}
