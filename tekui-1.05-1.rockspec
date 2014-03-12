package = "tekUI"
version = "1.05-1"
source = {
   url = "http://tekui.neoscientists.org/releases/tekui-1.05.tgz",
   md5 = "87751e501ec73fbcfed913a0de77be05",
   dir = "tekui-1.05"
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
dependencies = {
   "lua >= 5.1",
}

local osx_build_patch = [[
diff -r f2740c7288e6 include/tek/config.h
--- a/include/tek/config.hSat Feb 08 21:53:54 2014 +0100
+++ b/include/tek/config.hSun Feb 09 15:30:03 2014 +0100
@@ -8,7 +8,7 @@
 **See copyright notice in teklib/COPYRIGHT
 */
 
-#if defined(TSYS_POSIX) || defined(__linux) || defined(__FreeBSD__) || defined(__NetBSD__)
+#if defined(TSYS_POSIX) || defined(__linux) || defined(__FreeBSD__) || defined(__NetBSD__) || defined(__APPLE__)
 	#ifndef TSYS_POSIX
 		#define TSYS_POSIX
 	#endif
]]

build = {
   type = "make",
   build_target = "all",
   variables = {
      CFLAGS = "$(CFLAGS)",
      PREFIX = "$(PREFIX)",
      LUA_LIB = "$(LIBDIR)",
      LUA_SHARE = "$(LUADIR)",
      LUA_DEFS = "-I$(LUA_INCDIR)",
      X11_LIBS = "-L/usr/X11R6/lib -lX11 -lXext -lXxf86vm",
      FREETYPE_DEFS = "-I$(PREFIX)/include -I$(PREFIX)/include/freetype2 -I/usr/include/freetype2 -I/usr/X11R6/include/freetype2 -I/usr/X11/include/",
   },
   platforms = {
      unix = {
         variables = {
            CC = "gcc -fpic -DTSYS_POSIX",
         },
      },
      mingw32 = {
         variables = {
            PLATFORM = "winnt",
            DISPLAY_DRIVER = "windows",
            DLLEXT = ".dll",
            PLATFORM_LIBS = "-lmsvcrt -lkernel32 -lwinmm -luser32 -lshell32 -ladvapi32",
            LUA_LIBS = "-L$(LUA_LIBDIR) $(LUALIB)",
            CC = "gcc -mno-cygwin -DWIN32",
         },
      },
      macosx = {
         variables = {
            MODCFLAGS = "-bundle -undefined dynamic_lookup -L./lib/posix",
         },
      },
   }
}
