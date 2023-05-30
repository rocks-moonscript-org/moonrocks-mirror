rockspec_format = "3.0"
package = "atpath"
version = "1.0-1"
source = {
   url = "git+https://github.com/Rinkaa/atpath.lua.git",
   tag = "1.0",
}
description = {
   homepage = "https://github.com/Rinkaa/atpath.lua",
   license = "MIT"
}
dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["atpath"] = "atpath.lua",
   }
}
test = {
   type = "busted",
}

