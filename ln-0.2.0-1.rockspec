package = "ln"
version = "0.2.0-1"
source = {
   url = "git+https://tulpa.dev/cadey/lua-ln",
   tag = "v0.2.0"
}
description = {
   summary = "The natural log function",
   homepage = "https://tulpa.dev/cadey/lua-ln",
   license = "0bsd"
}
dependencies = {
   "lua ~> 5.3",
   "dkjson"
}
build = {
   type = "builtin",
   modules = {
      ln = "src/ln.lua"
   }
}
