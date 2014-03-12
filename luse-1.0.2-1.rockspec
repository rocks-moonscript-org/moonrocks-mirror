package = "LUSE"
version = "1.0.2-1"
source = {
   url = "http://luaforge.net/frs/download.php/2637/luse-1.0.2.tar.gz"
}
description = {
   summary = "Lua bindings for the Filesystems in Userspace (FUSE) library",
   detailed = [[
      LUSE is a Lua binding for the FUSE (Filesystems in Userspace) library.
      It lets developers create a filesystem in Lua. Since FUSE itself is not
      very fast, LUSE tries to not further slow things down, and adopted a
      userdata-based approach to data passing.
   ]],
   license = "MIT/X11",
   homepage = "http://luse.luaforge.net/"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   FUSE = {
      header = "fuse.h"
   },
}
build = {
   type = "make",
   variables = {
      CC = "$(CC) -I$(LUA_INCDIR) -I$(FUSE_INCDIR)",
      LDFLAGS = "$(LIBFLAG) -L$(LUA_LIBDIR) -L$(FUSE_LIBDIR)",
      INSTALL_TOP_SHARE = "$(LUADIR)",
      INSTALL_TOP_LIB = "$(LIBDIR)"
   }
}
