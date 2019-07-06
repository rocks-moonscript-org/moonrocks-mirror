package = "striter"
version = "1.0-1"
source = {
   url = "git+https://github.com/cafehaine/striter.git"
}
description = {
   summary = "The simple lua library to iterate through files and strings.",
   detailed = "The simple lua library to iterate through files and strings.",
   homepage = "https://github.com/cafehaine/striter",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      striter = "striter.lua"
   }
}
