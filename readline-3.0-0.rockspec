package = "Readline"
version = "3.0-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/readline-3.0.tar.gz",
   md5 = "4e9214a68e54acfcf4e77cd7147c4f66"
}
description = {
   summary = "Interface to the readline library",
   detailed = [[
	  This Lua module offers a simple calling interface
      to the GNU Readline/History Library.
   ]],
   homepage = "http://pjb.com.au/comp/lua/readline.html",
   license = "MIT/X11",
}
-- http://www.luarocks.org/en/Rockspec_format
dependencies = {
   "lua >=5.1, <5.5",
   "luaposix >= 30",
}
external_dependencies = {  -- Duarn 20150216, 20150416
	READLINE = {
		header  = "readline/readline.h";
		library = "readline";
	};
	HISTORY = {
		header  = "readline/history.h";
		library = "history";
	}
}
build = {
   type = "builtin",
   modules = {
	  ["readline"] = "readline.lua",
	  ["C-readline"] = {
		 sources   = { "C-readline.c" },
         incdirs   = { "$(READLINE_INCDIR)", "$(HISTORY_INCDIR)" }, --20210418
         libdirs   = { "$(READLINE_LIBDIR)", "$(HISTORY_LIBDIR)" }, --20210418
		 libraries = { "readline", "history" },
	  },
   },
   copy_directories = { "doc", "test" },
}

