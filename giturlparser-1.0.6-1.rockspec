package = "giturlparser"
version = "1.0.6-1"
source = {
   url = "git+https://linrongbin16:ghs_HZhS6gcQVg8bkWwM78DhZlt1FgfyRi0Oc5C0@github.com/linrongbin16/giturlparser.lua.git",
   tag = "v1.0.6"
}
description = {
   summary = "Pure Lua implemented git URL parsing library",
   detailed = "Pure Lua implemented git URL parsing library",
   homepage = "*** please enter a project homepage ***",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      giturlparser = "src/giturlparser.lua"
   }
}
