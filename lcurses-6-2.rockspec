package = "lcurses"
version = "6-2"

source = {
   url = "http://luaforge.net/frs/download.php/4823/lcurses-6.tar.gz",
   dir = "lcurses-6"
}

description = {
   summary = "ncurses binding for Lua",
   detailed = [[
      lcurses is a C library for Lua 5.1 that wraps the curses API.
   ]],
   license = "MIT/X11",
   homepage = "http://luaforge.net/projects/lcurses/"
}

dependencies = {
   "lua >= 5.1",
}

external_dependencies = {
   NCURSES = {
      header = "ncurses.h",
   }
}

build = {
   type = "command",
   build_command = "CPPFLAGS='-I$(LUA_INCDIR)' ./configure --prefix=$(PREFIX) && make lualibdir=$(LIBDIR) LDFLAGS=-avoid-version",
   install_command = "make install lualibdir=$(LIBDIR) LDFLAGS=-avoid-version",
}
