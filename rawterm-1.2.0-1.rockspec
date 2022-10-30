package = "rawterm"
version = "1.2.0-1"
source = {
   url = "git+ssh://git@github.com/emmachase/rawterm.git"
}
description = {
   summary = "A Lua library that allows access to \"non-canonical mode\" for terminal input.",
   detailed = "RawTerm is a Lua library that allows access to \"non-canonical mode\" for terminal input. This allows programs to read input from STDIN byte by byte without requiring the user to press <Enter>, and allows for reading characters not normally accessible like the arrow keys and function keys.",
   homepage = "https://github.com/emmachase/rawterm",
   license = "MIT"
}
dependencies = {
	"lua >= 5.1",
	"cffi-lua >= 0.2.1",
	"bit32 >= 5.3.5.1"
}
build = {
   type = "builtin",
   modules = {
      rawterm = "rawterm.lua",
   }
}
