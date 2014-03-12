package = "lnotify"
version = "0.2-1"
source = {
   url = "http://w3.impa.br/~gabrield/code/lua_stuff/lnotify/lnotify-0.2-6.tar.gz",
}
description = {
   summary = "Simple bind from libnotify to Lua.",
   detailed = [[
   Simple library binding libnotify to Lua, quite easy
   to use, supporting emergency levels. Popping up notifications
   from Lua to your desktop now is a piece of cake.
   ]],
   homepage = "http://w3.impa.br/~gabrield/code/lnotify/",
   license = "MIT/X11"
}

dependencies = {
   "lua >= 5.1"
}

external_dependencies = {
   NOTIFY = {
      header = "libnotify/notify.h",
   }
}

build= {
   type = "make",
      install_pass = false,
   build_variables = {
--      CFLAGS = "$(CFLAGS)",
      LUAINC = "$(LUA_INCDIR)",
      LUALIB = "$(LUA_LIBDIR)",
      LUABIN = "$(LUA_BINDIR)",
      LIBS   = "-lnotify -L$(NOTIFY_LIBDIR)",
      INCS   = "-I$(LUA_INCDIR) -I$(NOTIFY_INCDIR)",
      LIBFLAG = "$(LIBFLAG)"
   },
   install = {
      lib = { "notify.so" },
   },
}

