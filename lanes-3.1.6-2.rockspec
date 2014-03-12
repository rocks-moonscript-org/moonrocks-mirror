package = "Lanes"
version = "3.1.6-2"
source = {
   url = "git://github.com/LuaLanes/lanes.git",
   branch = "v3.1.6"
}
description = {
   summary = "Multithreading support for Lua",
   detailed = [[
		Lua Lanes is a portable, message passing multithreading library
		providing the possibility to run multiple Lua states in parallel.
	]],
   homepage = "https://github.com/LuaLanes/lanes",
   license = "MIT/X11",
   maintainer = "Benoit Germain <bnt.germain@gmail.com>"
}
supported_platforms = {
   "win32", "macosx", "linux", "freebsd", "msys"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   platforms = {
      linux = {
         modules = {
            ["lanes.core"] = {
               libraries = "pthread"
            },
         }
      }
   },
   modules = {
      lanes = "src/lanes.lua",
      ['lanes-keeper'] = "src/lanes-keeper.lua",
      ['lanes.core'] = {
         incdirs = {
            "src"
         },
         sources = {
            "src/lanes.c", "src/keeper.c", "src/tools.c", "src/threading.c"
         }
      }
   }
}
