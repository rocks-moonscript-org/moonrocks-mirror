package = "ltcltk"
version = "0.9-3"
source = {
   url = "http://www.tset.de/downloads/ltcltk-0.9-2.tar.gz"
}
description = {
   summary = "A binding for lua to the tcl interpreter and to the tk toolkit.",
   detailed = [[
		This is a binding of the tcl interpreter to lua. It allows
		for calls into tcl, setting and reading variables from tcl and
		registering of lua functions for use from tcl.
		Also, a binding to the tk toolit is included.
	]],
   homepage = "http://www.tset.de/ltcltk/",
   license = "MIT/X11",
   maintainer = "Gunnar Zötl <gz@tset.de>"
}
supported_platforms = {
   "unix", "mac"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   -- does not check for a header file because it 
   -- varies across Linux distributions. See below.
   TCL = {
   	library = "libtcl8.5.so",
   }
}
build = {
   type = "builtin",
   modules = {
      ltcl = {
         libraries = { "tcl8.5" },
         sources = { "ltcl.c" },
         incdirs = { "$TCL_INCDIR" },
      },
      ltk = "ltk.lua"
   },
   copy_directories = {
      "doc", "samples"
   },
   -- Some default guesses for Linux distros and possibly
   -- other unices. Seems to make even Ubuntu happy.
   platforms = {
      unix = {
         modules = {
            ltcl = {
               incdirs = {
                  [2] = "/usr/include/tcl",
                  [3] = "/usr/include/tk",
               }
            }
         }
      }
   }
}
