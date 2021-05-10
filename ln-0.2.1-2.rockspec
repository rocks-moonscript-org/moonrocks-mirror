package = "ln"
version = "0.2.1-2"
source = {
   url = "git+https://tulpa.dev/cadey/lua-ln"
}
description = {
   homepage = "https://tulpa.dev/cadey/lua-ln",
   license = "0bsd",
   summary = "The natural log function"
}
dependencies = {
   "lua",
   "dkjson"
}
build = {
   type = "builtin",
   modules = {
      ln = "src/ln.lua"
   }
}
