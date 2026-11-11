rockspec_format = "3.0"
package = "aigifmaker"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/hanshs474/aigifmaker-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Official SDK for AI GIF Maker (aigifmaker.ai): turn text into animated GIFs.",
   detailed = [[
Turn text into animated GIFs with AI GIF Maker. Native GIF generation, no
video conversion. Send a prompt with your AI GIF Maker API key, wait for the
GIF URL, and check your credits. Ships an `aigifmaker` command too.
]],
   homepage = "https://aigifmaker.ai/?utm_source=luarocks&utm_medium=package",
   license = "MIT",
   labels = { "ai", "gif", "animation", "http" },
}
dependencies = {
   "lua >= 5.1",
   "luasocket",
   "luasec",
   "dkjson",
}
build = {
   type = "builtin",
   modules = {
      aigifmaker = "src/aigifmaker.lua",
   },
   install = {
      bin = { aigifmaker = "bin/aigifmaker" },
   },
}
