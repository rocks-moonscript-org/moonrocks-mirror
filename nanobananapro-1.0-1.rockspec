package = "nanobananapro"
version = "1.0-1"
source = {
   url = "https://nanobananaproai.pro/nanobananapro-1.0.tar.gz"
}
description = {
   summary = "Free AI image generator powered by Google Gemini 3 Pro Image",
   detailed = "Nano Banana Pro is a free AI image generator powered by Google Gemini 3 Pro Image, delivering 4K images with perfect text rendering and strong character consistency.",
   homepage = "https://nanobananaproai.pro/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      nanobananapro = "nanobananapro.lua"
   }
}
