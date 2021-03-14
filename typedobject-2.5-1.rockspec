package = "typedobject"
version = "2.5-1"
rockspec_format = "3.0"
source = {
   url = "git+https://github.com/winterwolf/typedobject.git"
}
description = {
   summary = "Object-oriented library with type checking.",
   labels = {"type", "object", "class", "oop", "oo"},
   homepage = "https://github.com/winterwolf/typedobject",
   license = "Unlicense"
}
dependencies = {
   "lua > 5, < 6"
}
build = {
   type = "builtin",
   modules = {
      typedobject = "typedobject.lua",
      ["types.basic"] = "types/basic.lua",
      ["types.love"] = "types/love.lua",
   },
}
