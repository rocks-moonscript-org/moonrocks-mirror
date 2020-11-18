package = "jsmin"
version = "0.0.1-1"
source = {
   url = "git+https://git.sr.ht/~ryanford/jsmin-lua"
}
description = {
   summary = "JS source minifier",
   detailed = "Lua port of Crockford's JSMin.c",
   homepage = "https://git.sr.ht/~ryanford/jsmin-lua",
   license = "see source"
}
build = {
   type = "none",
   modules = { jsmin = "jsmin/init.lua" },
   install = {
      bin = {  jsmin = "bin/jsmin.lua" }
   }
}
