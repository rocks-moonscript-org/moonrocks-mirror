package = "lgetchar"
version = "0.1-1"
source = {
   url = "git://github.com/3uclidian/lgetchar",
   tag = "v0.1"
}
description = {
   summary = "A library for getting raw keyboard input in a terminal.",
   detailed = [[
      Some Lua bindings for some termios.h and sys/ioctl.h functions to get simple input like arrow keys and such.
   ]],
   homepage = "https://github.com/3uclidian/lgetchar",
   license = "GPL-3.0-or-later"
}
supported_platforms = {
   "linux", "macosx"
}
dependencies = {
   "lua = 5.3"
}
--[[
external_dependencies = {
   TERMIOS = {
      header = "termios.h"
   },
   IOCTL = {
      header = "sys/ioctl.h"
   }
}
]]
build = {
   type = "builtin",
   modules = {
      lgetchar = {
         sources = "lgetchar.c",
 --        libraries = {"termios", "ioctl"},
 --        incdirs = {"$(TERMIOS_INCDIR)", "$(IOCTL_INCDIR)"},
 --        libdirs = {"$(TERMIOS_LIBDIR)", "$(IOCTL_LIBDIR)"},
      }
   }
}
