rockspec_format = "3.0"
package = "emaki"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/hanshs474/emaki-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Official SDK for emaki (emaki.ai): generate Seedance 2.5 and Seedance 2.0 videos and images from Lua.",
   detailed = [[
Official SDK for emaki (emaki.ai), the Japanese-language AI video generator
for Seedance 2.5 and Seedance 2.0. Submit text-to-video, image-to-video and
image runs with your emaki API key, wait for the result URL, and check your
credits. Ships an `emaki` command too.
]],
   homepage = "https://emaki.ai/?utm_source=luarocks&utm_medium=package",
   license = "MIT",
   labels = { "ai", "video", "seedance", "http" },
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
      emaki = "src/emaki.lua",
   },
   install = {
      bin = { emaki = "bin/emaki" },
   },
}
