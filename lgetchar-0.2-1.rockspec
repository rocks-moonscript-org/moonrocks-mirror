package = "lgetchar"
version = "0.2-1"
source = {
   url = "git://github.com/3uclidian/lgetchar",
   tag = "v0.2-1"
}
description = {
   summary = "A library for getting raw keyboard input in a terminal.",
   detailed = [[Some Lua bindings for getch() and getchar() for simple input in a terminal.]],
   homepage = "https://github.com/3uclidian/lgetchar",
   license = "GPL-3.0-or-later"
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
