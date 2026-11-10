rockspec_format = "3.0"
package = "freeimagetovideo"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/hanshs474/fitv-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Free image to video AI with no daily cap. This is the official Lua SDK for Free Image to Video.",
   detailed = [[
Free image to video AI with no daily cap: start with no sign-up, keep going on
a free account. Every video comes with sound and no watermark. This is the
official Lua SDK for Free Image to Video: turn a prompt or a photo into a video
clip with your API key, wait for the result URL, and check your credits. Ships
a `freeimagetovideo` command too.
]],
   homepage = "https://freeimagetovideo.ai/?utm_source=luarocks&utm_medium=package",
   license = "MIT",
   maintainer = "Free Image to Video <support@freeimagetovideo.ai>",
   labels = { "ai", "video", "image-to-video", "text-to-video", "http" },
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
      freeimagetovideo = "src/freeimagetovideo.lua",
   },
   install = {
      bin = { freeimagetovideo = "bin/freeimagetovideo" },
   },
}
