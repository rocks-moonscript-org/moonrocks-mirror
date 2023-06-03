package = "shapeshift"
version = "2.0.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/shapeshift",
   tag = "v2.0.0"
}
description = {
   summary = "A library for validating and modifying table structure",
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
