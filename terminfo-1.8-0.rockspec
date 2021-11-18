package = "Terminfo"
version = "1.8-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/terminfo-1.8.tar.gz",
   md5 = "afc99da94004788ccf6387c472ef571d"
}
description = {
   summary = "access the terminfo database",
   detailed = [[
      This module is a re-expression in Lua by Peter Billam of the Perl
      Term::Terminfo module, plus extra functions get() and tparm().
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/terminfo.html",
   license = "MIT/X11",
}
-- http://www.luarocks.org/en/Rockspec_format
dependencies = {
   "lua >= 5.1, <5.5",
   "luaposix >= 30",
}
external_dependencies = {  -- Daurn 20150216
	TERMCAP = {
		header  = "term.h",
		library = "termcap";
	};
}

build = {
   type = "builtin",
   modules = {
      ["terminfo"] = "terminfo.lua",
      ["C-terminfo"] = {
         sources   = { "C-terminfo.c" },
         libraries = { "termcap" },
      },
   },
   copy_directories = { "doc", "test" },
}
