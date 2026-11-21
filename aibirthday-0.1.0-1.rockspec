rockspec_format = "3.0"
package = "aibirthday"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/hanshs474/abvg-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Official Lua SDK for AI Birthday Video Generator (aibirthdayvideogenerator.com).",
   detailed = [[
AI birthday video generator from a single photo: they pop champagne on a park
bench, blow out a Scorpio cake, or light a crown cake at the car window.
Official Lua SDK for AI Birthday Video Generator (aibirthdayvideogenerator.com):
render 12s 720p vertical birthday clips on Seedance 2 Mini from Lua.
]],
   homepage = "https://aibirthdayvideogenerator.com/?utm_source=luarocks&utm_medium=package",
   license = "MIT",
   labels = { "ai", "video", "birthday", "http" },
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
      aibirthday = "src/aibirthday.lua",
   },
   install = {
      bin = { aibirthday = "bin/aibirthday" },
   },
}
