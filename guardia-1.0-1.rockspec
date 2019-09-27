package = "guardia"
version = "1.0-1"
description = {
  summary = "Guards for Lua and MoonScript",
  detailed = [[Guàrdia is a function that looks to obsolete the LuaRocks guard package. It includes some more types of guards, as well as some default ones.]],
  homepage = "https://github.com/daelvn/guardia",
}
source = {
  url = "git://github.com/daelvn/guardia.git",
  tag = "v1.0",
}
build = {
  type = "builtin",
  copy_directories = { "docs",  },
  modules = { ["guardia.guards"] = "guardia/guards.lua", ["guardia.init"] = "guardia/init.lua", },
}
