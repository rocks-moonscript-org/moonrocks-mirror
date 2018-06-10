package = "uap-lua"
version = "1.0-1"
source = {
   url = "git://github.com/megafono/uap-lua.git",
   tag = "v1.0"
}
description = {
   summary = "User Agent Parser in lua",
   homepage = "https://github.com/megafono/uap-lua",
   license = "MIT"
}
dependencies = {
  "lyaml",
  "lrexlib-pcre2",
  "datafile"
}
build = {
   type = "builtin",

   modules = {
     uap = "src/user_agent_parser.lua",
   },

   copy_directories = { "doc", "test", "vendor/uap-core" }
}
