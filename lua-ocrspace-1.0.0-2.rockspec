package = "Lua-OcrSpace"
version = "1.0.0-2"
source = {
   url = "git+https://github.com/IgorMael/Lua-OcrSpace.git"
}
description = {
   homepage = "https://github.com/IgorMael/Lua-OcrSpace",
   license = "MIT",
   summary = "A wrapper to https://ocr.space api",
   detailed = "A Lua wrapper to make get or post requests to https://ocr.space api",    
}
dependencies = {
    "lua >= 5.1",
    "luasocket >= 2.0.2",
    "lua-cjson >= 2.0",
    "multipart-post >= 1.1"
}
build = {
   type = "builtin",
   modules = {
      ocrSpace = "src/ocrSpace.lua"
   },
   copy_directories = {"doc"}
}