rockspec_format = "3.0"
package = "trellis2-ai"
version = "0.1.0-1"
source = {
   url = "file:///Users/sunday/文件/luarocks/trellis2-ai/trellis2-ai-0.1.0.tar.gz",
   dir = "trellis2-ai-0.1.0"
}
description = {
   summary = "Trellis 2 AI 3D Generator",
   detailed = "Trellis 2 is an AI 3D generator for 2D to 3D, photo to 3D, and prompt to 3D workflows. Visit https://trellis-2.net for more information.",
   homepage = "https://trellis-2.net",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["trellis2-ai"] = "trellis2-ai.lua"
   }
}
