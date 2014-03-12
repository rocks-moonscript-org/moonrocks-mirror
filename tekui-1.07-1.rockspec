package = "tekUI"
version = "1.07-1"
source = {
   url = "http://tekui.neoscientists.org/releases/tekui-1.07.tgz",
   file = "tekui-1.0.7.tar.gz",
   dir = "tekui-1.07"
}
description = {
   summary = "A small, freestanding and portable GUI",
   detailed = [=[
TekUI is a small, freestanding and portable graphical user interface
(GUI) toolkit written in Lua and C. It was initially developed for
the X Window System and has been ported to DirectFB, Windows, Nano-X
and a raw framebuffer since. A VNC server option is
available that allows the remote control of tekUI applications.
   ]=],
   homepage = "http://tekui.neoscientists.org/",
   license = "MIT"
}

external_dependencies = {
   platforms = {
      unix = {
         FREETYPE = {
            header = "ft2build.h"
         },
         X11 = {
            header = "X11/X.h"
         }
      }
   }
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "make",
   makefile = "Makefile",
   build_target = "all",
   variables = {
      CFLAGS = "$(CFLAGS)",
      PREFIX = "\"$(PREFIX)\"",
      LUA_LIB = "\"$(LIBDIR)\"",
      LUA_SHARE = "\"$(LUADIR)\"",
      LUA_DEFS = "-I\"$(LUA_INCDIR)\"",
      RM = [["$(RM)"]],
      RMDIR = [["$(RM)" -r]],
      MKDIR = [["$(MKDIR)" -p]],
      INSTALL_F = [["$(CP)" -a]],
      INSTALL_D = [["$(MKDIR)" -p]],
      INSTALL_S = [["$(CP)" -a]],
   },
   platforms = {
      unix = {
         variables = {
            CC = "gcc -fpic -DTSYS_POSIX",
            X11_LIBS = "-L/usr/X11R6/lib -lX11 -lXext -lXxf86vm",
            FREETYPE_DEFS = "-I$(PREFIX)/include -I$(FREETYPE_INCDIR)/freetype2 -I/usr/X11R6/include/freetype2 -I/usr/X11/include/",
         },
      },
      mingw32 = {
         variables = {
            PLATFORM = "winnt",
            DLLEXT = ".dll",
            DISPLAY_DRIVER = "windows",
            TEKUI_DEFS = "-DENABLE_GRADIENT",
            PLATFORM_LIBS = "-lmsvcrt -lkernel32 -lwinmm -luser32 -lshell32 -ladvapi32",
            LUA_LIBS = "\"$(LUA_LIBDIR)/$(LUALIB)\"",
            CC = "gcc -DWIN32",
         },
      },
      macosx = {
         variables = {
            MODCFLAGS = "-bundle -undefined dynamic_lookup -L./lib/posix",
         },
      },
   }
}
