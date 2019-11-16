package = "terminfofont"
version = "0.4-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/terminfofont-0.4.tar.gz",
   md5 = "27e73dae2ff1f600d5daa4012763313f"
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
