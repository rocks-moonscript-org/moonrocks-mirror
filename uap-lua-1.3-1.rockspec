package = "uap-lua"
version = "1.3-1"
source = {
   url = "git://github.com/megafono/uap-lua.git",
   tag = "v1.3"
}
description = {
   summary = "User Agent Parser in lua",
   homepage = "https://github.com/megafono/uap-lua",
   license = "MIT"
}
dependencies = {
  "lrexlib-pcre2",
  "datafile"
}
build = {
   type = "builtin",

   modules = {
     uap = "src/user_agent_parser.lua",

     ["uap.patterns"] = "src/patterns.lua"
   },

   copy_directories = { "doc", "test", "example" }
}
