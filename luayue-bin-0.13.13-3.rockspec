package = "luayue-bin"
version = "0.13.13-3"
source = {
   url = "git+https://github.com/Frityet/luayue",
   branch = "main"
}
description = {
   detailed = "Binary releases for yue",
   homepage = "https://github.com/yue/yue",
   license = "LGPLv3"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "command",
   platforms = {
      macosx = {
         build_command = "$(LUA) install.lua build mac \"CFLAGS=$(CFLAGS)\" \"LIBFLAG=$(LIBFLAG)\" \"LUA_LIBDIR=$(LUA_LIBDIR)\" \"LUA_BINDIR=$(LUA_BINDIR)\" \"LUA_INCDIR=$(LUA_INCDIR)\" \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_PREFIX=$(PREFIX)\" \"INST_BINDIR=$(BINDIR)\" \"INST_LIBDIR=$(LIBDIR)\" \"INST_LUADIR=$(LUADIR)\" \"INST_CONFDIR=$(CONFDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" ",
         install_command = "$(LUA) install.lua install mac \"CFLAGS=$(CFLAGS)\" \"LIBFLAG=$(LIBFLAG)\" \"LUA_LIBDIR=$(LUA_LIBDIR)\" \"LUA_BINDIR=$(LUA_BINDIR)\" \"LUA_INCDIR=$(LUA_INCDIR)\" \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_PREFIX=$(PREFIX)\" \"INST_BINDIR=$(BINDIR)\" \"INST_LIBDIR=$(LIBDIR)\" \"INST_LUADIR=$(LUADIR)\" \"INST_CONFDIR=$(CONFDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" "
      },
      mingw32 = {
         build_command = "$(LUA) install.lua build win32 \"CFLAGS=$(CFLAGS)\" \"LIBFLAG=$(LIBFLAG)\" \"LUA_LIBDIR=$(LUA_LIBDIR)\" \"LUA_BINDIR=$(LUA_BINDIR)\" \"LUA_INCDIR=$(LUA_INCDIR)\" \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_PREFIX=$(PREFIX)\" \"INST_BINDIR=$(BINDIR)\" \"INST_LIBDIR=$(LIBDIR)\" \"INST_LUADIR=$(LUADIR)\" \"INST_CONFDIR=$(CONFDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" ",
         install_command = "$(LUA) install.lua install win32 \"CFLAGS=$(CFLAGS)\" \"LIBFLAG=$(LIBFLAG)\" \"LUA_LIBDIR=$(LUA_LIBDIR)\" \"LUA_BINDIR=$(LUA_BINDIR)\" \"LUA_INCDIR=$(LUA_INCDIR)\" \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_PREFIX=$(PREFIX)\" \"INST_BINDIR=$(BINDIR)\" \"INST_LIBDIR=$(LIBDIR)\" \"INST_LUADIR=$(LUADIR)\" \"INST_CONFDIR=$(CONFDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" "
      },
      unix = {
         build_command = "$(LUA) install.lua build linux \"CFLAGS=$(CFLAGS)\" \"LIBFLAG=$(LIBFLAG)\" \"LUA_LIBDIR=$(LUA_LIBDIR)\" \"LUA_BINDIR=$(LUA_BINDIR)\" \"LUA_INCDIR=$(LUA_INCDIR)\" \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_PREFIX=$(PREFIX)\" \"INST_BINDIR=$(BINDIR)\" \"INST_LIBDIR=$(LIBDIR)\" \"INST_LUADIR=$(LUADIR)\" \"INST_CONFDIR=$(CONFDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" ",
         install_command = "$(LUA) install.lua install linux \"CFLAGS=$(CFLAGS)\" \"LIBFLAG=$(LIBFLAG)\" \"LUA_LIBDIR=$(LUA_LIBDIR)\" \"LUA_BINDIR=$(LUA_BINDIR)\" \"LUA_INCDIR=$(LUA_INCDIR)\" \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_PREFIX=$(PREFIX)\" \"INST_BINDIR=$(BINDIR)\" \"INST_LIBDIR=$(LIBDIR)\" \"INST_LUADIR=$(LUADIR)\" \"INST_CONFDIR=$(CONFDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" "
      },
      win32 = {
         build_command = "$(LUA) install.lua build win32 \"CFLAGS=$(CFLAGS)\" \"LIBFLAG=$(LIBFLAG)\" \"LUA_LIBDIR=$(LUA_LIBDIR)\" \"LUA_BINDIR=$(LUA_BINDIR)\" \"LUA_INCDIR=$(LUA_INCDIR)\" \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_PREFIX=$(PREFIX)\" \"INST_BINDIR=$(BINDIR)\" \"INST_LIBDIR=$(LIBDIR)\" \"INST_LUADIR=$(LUADIR)\" \"INST_CONFDIR=$(CONFDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" ",
         install_command = "$(LUA) install.lua install win32 \"CFLAGS=$(CFLAGS)\" \"LIBFLAG=$(LIBFLAG)\" \"LUA_LIBDIR=$(LUA_LIBDIR)\" \"LUA_BINDIR=$(LUA_BINDIR)\" \"LUA_INCDIR=$(LUA_INCDIR)\" \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_PREFIX=$(PREFIX)\" \"INST_BINDIR=$(BINDIR)\" \"INST_LIBDIR=$(LIBDIR)\" \"INST_LUADIR=$(LUADIR)\" \"INST_CONFDIR=$(CONFDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" "
      }
   }
}
