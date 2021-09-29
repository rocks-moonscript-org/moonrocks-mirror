package = "s6ftrig"
version = "0.0.4-1"
source = {
   url = "git://github.com/chris2511/lua-s6ftrig",
   tag = "v0.0.4"
}
description = {
   summary = "S6 fifodir library",
   detailed = [[
This library allows to register to one or more S6 service fifodirs.
The current status can be retrieved and for state changes can be poll()ed.
The queries return a dictionary with the service paths as keys
and a string of one or more event characters.
   ]],
   homepage = "https://github.com/chris2511/lua-s6ftrig",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
-- s6 is linux specific
supported_platforms = { "linux" }

external_dependencies = {
   LIBS6 = {
      header = "s6/ftrigr.h"
   },
   LIBSKARNET = {
      header = "skalibs/skalibs.h"
   }
}
build = {
  type = "builtin",
    modules = {
        s6ftrig = {
            sources = { "s6ftrig.c" },
            libraries = { "s6", "skarnet" },
        }
    }
}
