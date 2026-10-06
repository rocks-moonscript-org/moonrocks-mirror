rockspec_format = "3.0"
package = "veida"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/hanshs474/veida-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Generate AI images from Lua with no API key and no account.",
   detailed = [[
A small client for the Veida AI image generator. It uses the anonymous free
tier of veida.ai, so the first call works on a machine with nothing
configured: 1K output, watermarked, about seven images a day per machine.
]],
   homepage = "https://veida.ai",
   license = "MIT",
   labels = { "ai", "image", "http" },
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
      veida = "src/veida.lua",
   },
   install = {
      bin = { veida = "bin/veida" },
   },
}
