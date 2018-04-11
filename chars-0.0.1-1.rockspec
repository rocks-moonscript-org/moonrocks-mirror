package = "chars"
version = "0.0.1-1"
source = {
   url = "git://github.com/monzita/chars.git"
}
description = {
   summary = "`Chars` is a Lua package, which contains some useful string methods.",
   detailed = "`Extends current string module, adding some useful methods.",
   homepage = "https://github.com/monzita/chars",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      chars = "src/chars.lua"
   }
}
