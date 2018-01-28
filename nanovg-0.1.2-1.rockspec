package = "nanovg"
version = "0.1.2-1"
source = {
   url = "https://github.com/starwing/lua-nanovg/releases/download/0.1.2/lua-nanovg-0.1.2.zip",
   tag = "0.1.2-0",
   dir = "lua-nanovg-0.1.2"
}
description = {
   summary = "Lua binding for NanoVG",
   homepage = "https://github.com/starwing/lua-nanovg",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      nvg = {
         sources = {
            "lua-nanovg.c",
            "nanovg/src/nanovg.c"
         }
      }
   },
   platforms = {
      windows = {
         modules = {
            nvg = {
               libraries = {
                  "opengl32"
               }
            }
         }
      }
   }
}
