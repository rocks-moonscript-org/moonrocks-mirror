package = "typedobject"
version = "1.0-0"
source = {
   url = "git+https://github.com/winterwolf/typedobject.git"
}
description = {
   homepage = "https://github.com/winterwolf/typedobject",
   license = "Unlicense"
}
dependencies = {
   "lua == 5.1"
}
build = {
   type = "builtin",
   modules = {
      typedobject = "typedobject.lua"
   }
}
