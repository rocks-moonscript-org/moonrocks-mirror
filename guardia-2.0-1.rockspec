package = "guardia"
version = "2.0-1"
description = {
  summary = "Guards for Lua and MoonScript",
  detailed = [[Guàrdia is a function that looks to obsolete the LuaRocks guard package. It includes some more types of guards, as well as some default ones.]],
  homepage = "https://github.com/daelvn/guardia",
}
source = {
  url = "git://github.com/daelvn/guardia.git",
  tag = "v2.0",
}
build = {
  type = "builtin",
  copy_directories = { "docs",  },
  modules = { ["guardia.guards"] = "guardia/guards.lua", ["guardia.init"] = "guardia/init.lua", ["guardia.v2.init"] = "guardia/v2/init.lua", ["guardia.v2.guards"] = "guardia/v2/guards.lua", },
}

