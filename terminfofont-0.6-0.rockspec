package = "terminfofont"
version = "0.6-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/terminfofont-0.6.tar.gz",
   md5 = "de29ff9fb49da9013023cb2490c8f985"
}
description = {
   summary = "a big font for use in a console or an xterm",
   detailed = [[
      This module is was inspired by the Bitfont5x7 font in the
	  PostScript module fonts.ps.  It offers a big, eye-catching font
	  for use on console or xterm etc - whatever supports terminfo.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/terminfofont.html",
   license = "MIT/X11"
}
dependencies = {
   "terminfo >= 1.1",
}
build = {
   type = "builtin",
   modules = {
      ["terminfofont"] = "terminfofont.lua",
   },
   copy_directories = { "doc", "test" }
}
