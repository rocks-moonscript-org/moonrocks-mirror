package = "Terminfo"
version = "1.4-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/terminfo-1.4.tar.gz",
   md5 = "21792f6c6d900260dcdc41557d666a50"
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
   "lua >= 5.1",
   "luaposix >= 30",
}
external_dependencies = {  -- Duarn 20150216
	TERMCAP = {
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
