package = "ltermbox"
version = "0.2-1"
source = {
   url = "git://github.com/ukasz/termbox.git",
   branch = "v0.2"
}
description = {
   summary = "A termbox library package", 
   detailed = [[
     Its general purpose is to serve as the simplest ncurses alternative.
   ]],
   homepage = "http://code.google.com/p/termbox",
   license = "New BSD License"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ltermbox = {
         sources = {"lua/ltermbox.c", "termbox.c", "term.c", "input.c",
         "ringbuffer.c", "utf8.c", },
         incdirs = { "./" },
      },
   },
}
