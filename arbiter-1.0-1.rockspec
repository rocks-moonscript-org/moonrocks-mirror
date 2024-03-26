package = "arbiter"
version = "1.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/arbiter",
   tag = "v1.0"
}
description = {
   homepage = "https://darkwiiplayer.github.io/arbiter",
   license = "Unlicense"
}
build = {
   type = "builtin",
   modules = {
      arbiter = "src/arbiter.lua"
   }
}
