package = "wildcard_pattern"
version = "1.0.0-2"
source = {
   url = "git://github.com/gilzoide/wildcard_pattern-lua",
   tag = "1.0.0"
}
description = {
   summary = "Library for using shell-like wildcards as string patterns",
   detailed = [[
Lua library for using shell-like wildcards as string patterns with support for importing gitignore-like file content.
]],
   license = "Unlicense",
   maintainer = "gilzoide <gilzoide@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      wildcard_pattern = "wildcard_pattern.lua"
   }
}
