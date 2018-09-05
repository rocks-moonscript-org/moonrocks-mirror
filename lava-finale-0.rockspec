package = "lava"
version = "finale-0"
source = {
   url = "https://github.com/mrtnpwn/lava.git"
}
description = {
    summary = "A simple (and lazy) UUID Version 4 module for Lua.",
    homepage = "https://github.com/mrtnpwn/lava",
    license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      lava = "lava/init.lua"
   }
}
