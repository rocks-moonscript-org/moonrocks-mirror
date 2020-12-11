package = "lua-array"
version = "1.0-0"
source = {
   url = "https://github.com/NotSoClassy/lua-array"
}
description = {
   homepage = "https://github.com/NotSoClassy/lua-array",
   license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      array = "array.lua"
   }
}
