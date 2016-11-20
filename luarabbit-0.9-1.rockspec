package = "luarabbit"
version = "0.9-1"
source = {
   url = "git://github.com/philanc/luarabbit" 
}
description = {
   summary = "A Lua wrapper for the Rabbit stream cipher",
   detailed = [[
		Luarabbit is a small Lua extension library including the Rabbit encryption algorithm. Rabbit is a very fast stream cipher. It is one of the four eSTREAM finalists in 2008. It is also specified in RFC 4503. 
   ]],
   homepage = "https://github.com/philanc/luarabbit",
   license = "MIT",
}
supported_platforms = { 
	"unix", "windows" 
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      luarabbit = {
		sources = { 
			"src/luarabbit.c", "src/rabbit.c", 
		},
		incdir = "src"
	  },
   },
   copy_directories = { "test" },
}

