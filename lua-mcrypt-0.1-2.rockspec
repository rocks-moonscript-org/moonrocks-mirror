package="lua-mcrypt"
version="0.1-2"
source = {
   url = "https://raw.githubusercontent.com/microwish/Lua-MCrypt/master/lmcryptlib.c",
}
description = {
   summary  = "Lua binding for C-library mcrypt",
   homepage = "https://github.com/microwish/Lua-MCrypt",
   license  = "GNU LGPL"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
	mcrypt = {
		sources = {"lmcryptlib.c"},
		libraries = {"mcrypt"}
	}
   }
}
