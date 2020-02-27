package = "lgetchar"
version = "0.1-2"
source = {
   url = "git://github.com/3uclidian/lgetchar",
   tag = "v0.1-2"
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
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      lgetchar = {
         sources = "lgetchar.c",
      }
   }
}
