rockspec_format = "3.0"
package = "saymaker"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/hanshs474/saymaker-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Generate images and video from Lua on SayMaker: Veo 3.1, Kling 3.0, Seedance 2.0, Nano Banana 2 with one API key.",
   detailed = [[
A small client for saymaker.ai: text-to-image, photo edits and text- or
image-to-video across Veo 3.1, Kling 3.0, Seedance 2.0, MiniMax H3,
Nano Banana 2, GPT Image 2.5 and Seedream 5.0, on one API key and your own
credits. Ships a `saymaker` command too.
]],
   homepage = "https://saymaker.ai/?utm_source=luarocks&utm_medium=package",
   license = "MIT",
   labels = { "ai", "video", "image", "http" },
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
      saymaker = "src/saymaker.lua",
   },
   install = {
      bin = { saymaker = "bin/saymaker" },
   },
}
