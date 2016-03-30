package = "ser-alloyed"
version = "1.0.0-1"
source = {
   url = "git://github.com/alloyed/Ser",
   tag = "1.0.0"
}
description = {
   summary = "A table serialization library that generates Lua code",
   detailed = [[
Ser is a fast, robust, richly-featured table serialization library for Lua. It was specifically written to store configuration and save files for LÖVE games, but can be used anywhere.

Originally, this was the code to write save games for Space, but was released as a stand-alone library after many much-needed improvements.

Using Serpent's benchmark code, Ser is 33% faster than Serpent.
Forked/Tagged from http://github.com/gvx/Ser
]],
   homepage = "https://github.com/gvc/Ser",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ser = "ser.lua"
   }
}
