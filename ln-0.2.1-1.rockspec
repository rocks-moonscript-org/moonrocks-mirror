package = "ln"
version = "0.2.1-1"
source = {
   url = "git+https://tulpa.dev/cadey/lua-ln"
}
description = {
   homepage = "https://tulpa.dev/cadey/lua-ln",
   license = "0bsd",
   summary = "The natural log function"
}
dependencies = {
   "lua ~> 5.1",
   "dkjson"
}
build = {
   type = "builtin",
   modules = {
      ln = "src/ln.lua"
   }
}
