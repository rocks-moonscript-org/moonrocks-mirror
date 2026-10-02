package = "kavel"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/hanshs474/kavel-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Generate AI images from Lua with no API key and no account.",
   detailed = [[
A small client for the Kavel AI image service. Without a key it uses the
anonymous free tier, so the first call works on a machine with nothing
configured. With an API key every call runs on your kavel.ai account.
]],
   homepage = "https://www.kavel.ai",
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
      kavel = "src/kavel.lua",
   },
   install = {
      bin = { kavel = "bin/kavel" },
   },
}
