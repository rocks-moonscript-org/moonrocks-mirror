package = "shapeshift"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/shapeshift",
   tag = "v1.0.0"
}
description = {
   homepage = "https://github.com/darkwiiplayer/shapeshift",
   license = "Public Domain"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      shapeshift = "shapeshift/init.lua",
      ["shapeshift.is"] = "shapeshift/is.lua"
   }
}
