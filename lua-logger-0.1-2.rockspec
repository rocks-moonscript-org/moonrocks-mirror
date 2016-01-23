package = "lua-logger"
version = "0.1-2"
source = {
   url = "https://github.com/ChickenNuggers/lua-logger",
   tag = "v" .. version
}
description = {
   summary = "An IRC color compatible logging library",
   detailed = [[
	An IRC color code to xterm/ANSI-compatible logging
	library written for private use by ChickenNuggers
	]],
   homepage = "https://chickennuggers.github.io/lua-logger",
   license = "MIT/X11"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      logger = "logger.lua"
   }
}
