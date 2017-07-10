package = "ngxjsonform"
version = "1.0-1"
source = {
   url = "git://github.com/rtbz/ngxjsonform",
   tag = "v1.0",
}
description = {
   summary = "Parses nginx JSON form data to key:value tables.",
   detailed = [[
      Safely decodes nginx JSON POST requests to lua tables.
   ]],
   homepage = "git://github.com/rtbz/ngxjsonform",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lua-cjson >= 2"
}
build = {
   type = "builtin",
   modules = {
      ngxjsonform = "src/ngxjsonform.lua"
   },
   copy_directories = { "src" }
}
