package = "Readline"
version = "1.6-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/readline-1.6.tar.gz",
   md5 = "56761d494f3c9056955879e832c8a420"
}
description = {
   summary = "Interface to the readline library",
   detailed = [[
	  This Lua module offers a simple calling interface
      to the GNU Readline/History Library.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/readline.html",
   license = "MIT/X11",
}
-- http://www.luarocks.org/en/Rockspec_format
dependencies = {
   "lua >=5.1, <5.3",
   "luaposix >= 30",
}
external_dependencies = {  -- Duarn 20150216, 20150416
	READLINE = {
		library = "readline";
	};
}
build = {
   type = "builtin",
   modules = {
	  ["readline"] = "readline.lua",
	  ["C-readline"] = {
		 sources   = { "C-readline.c" },
		 libraries = { "readline" },
	  },
   },
   copy_directories = { "doc", "test" },
}
