package = "terminfofont"
version = "0.3-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/terminfofont-0.3.tar.gz",
   md5 = "c6be6ea86bf8e78a9fc7156b043e6b8d"
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
