package = "vix"
version = "0.1-6"
source = {
   url = "git+https://github.com/lvitals/vix.git",
   tag = "v0.1.6"
}

description = {
   summary = "vi-like editor based on Plan 9's structural regular expressions",
   detailed = [[
      vix is a highly efficient screen-oriented text editor combining the strengths of both vi(m) and sam.
   ]],
   homepage = "https://github.com/lvitals/vix",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lpeg"
}
external_dependencies = {
   TERMKEY = {
      header = "termkey.h",
      library = "termkey"
   },
   NCURSESW = {
      header = "curses.h",
      library = "ncursesw"
   },
   TRE = {
      header = "tre/tre.h",
      library = "tre"
   }
}
build = {
   type = "command",
   build_command = "make clean && make PREFIX=$(PREFIX) VIX_PATH=$(LUADIR)",
   install_command = [[
      make install PREFIX=$(PREFIX) VIX_PATH=$(LUADIR) MANPREFIX=$(PREFIX)/doc/man && \
      mkdir -p "$HOME/.luarocks/share/man/man1" && \
      cp man/*.1 "$HOME/.luarocks/share/man/man1/"
   ]],
   copy_directories = { "man" }
}
