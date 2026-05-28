package = "vix"
version = "0.1-3"
source = {
   url = "git+https://github.com/lvitals/vix.git",
   tag = "v0.1.2"
}

local post_install_message = [[
===============================================================================
Post-installation setup for local install:

  # Add LuaRocks local bin to PATH
  export PATH="$HOME/.luarocks/bin:$PATH"

  # Setup Lua paths for local modules
  eval $(luarocks path --lua-version 5.4)

  # Enable man pages
  export MANPATH="$HOME/.luarocks/share/man:$MANPATH"
===============================================================================
]]

description = {
   summary = "vi-like editor based on Plan 9's structural regular expressions",
   detailed = [[
      vix is a highly efficient screen-oriented text editor combining the strengths of both vi(m) and sam.

      To ensure vix and its dependencies are properly found when installed via LuaRocks --local,
      add the following to your shell profile (~/.bashrc or ~/.zshrc):

      # Add LuaRocks local bin to PATH
      export PATH="$HOME/.luarocks/bin:$PATH"

      # Setup Lua paths for local modules
      eval $(luarocks path --lua-version 5.4)

      # Enable man pages
      export MANPATH="$HOME/.luarocks/share/man:$MANPATH"
   ]],
   homepage = "https://github.com/lvitals/vix",
   license = "ISC"
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
      cp man/*.1 "$HOME/.luarocks/share/man/man1/" && \
      printf '%s\n' ']] .. post_install_message .. [['
   ]],
   copy_directories = { "man" }
}
