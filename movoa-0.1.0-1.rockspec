rockspec_format = "3.0"
package = "movoa"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/hanshs474/movoa-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Official SDK for Movoa (movoa.ai), the AI video generator with sound.",
   detailed = [[
Unlimited AI video generator with sound: on paid plans the tenth take of a
shot costs what the first did, and your first clip is free to make right now.
Official Lua SDK for Movoa (movoa.ai): submit text to video and photo to video
runs with your Movoa API key, wait for the clip URL, and check your credits.
Ships a `movoa` command too.
]],
   homepage = "https://movoa.ai/?utm_source=luarocks&utm_medium=package",
   license = "MIT",
   labels = { "ai", "video", "text-to-video", "http" },
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
      movoa = "src/movoa.lua",
   },
   install = {
      bin = { movoa = "bin/movoa" },
   },
}
