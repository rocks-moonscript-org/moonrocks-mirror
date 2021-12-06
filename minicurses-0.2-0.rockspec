package = "minicurses"
version = "0.2-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/minicurses-0.2.tar.gz",
   md5 = "28536eeeb9a003e29bb927c1f66df7d1"
}
description = {
   summary = "simplified access to the ncurses library",
   detailed = [[
      This module is a stripped-down re-packaging
      by Peter Billam of the abandoned lcurses module.
      stdscr is hidden, and no other windows are offered.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/minicurses.html",
   license = "MIT/X11",
}
-- http://www.luarocks.org/en/Rockspec_format
dependencies = {
   "lua >= 5.1, <5.5",
}
external_dependencies = {  -- Daurn 20150216
	NCURSES = {
		header  = "ncurses.h",
		library = "ncurses";
	};
}

build = {
   type = "builtin",
   modules = {
      ["minicurses"] = "minicurses.lua",
      ["C-minicurses"] = {
         sources   = { "C-minicurses.c" },
         libraries = { "ncurses", "ncursesw" },
      },
   },
   copy_directories = { "doc", "test" },
}
