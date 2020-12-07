package = "typedobject"
version = "1.0-1"
source = {
   url = "git+https://github.com/winterwolf/typedobject.git"
}
description = {
   homepage = "https://github.com/winterwolf/typedobject",
   license = "Unlicense"
}
dependencies = {
   "lua >= 5.1, < 5.2"
}
build = {
   type = "builtin",
   modules = {
      typedobject = "typedobject.lua",
      ["typedobject.types.basic"] = "types/basic.lua",
      ["typedobject.types.love"] = "types/love.lua",
   },
}
