
-- Packs lua-iconv into a LuaRock
-- rockspec based upon the file provided by DarkGod <darkgod at net-core.org>

package = "lua-iconv"
version = "7-3"

source = {
  url = "https://github.com/downloads/ittner/lua-iconv/lua-iconv-7.tar.gz",
  md5 = "8a38b4e6ac8a9290093898793d16fe4b"
}

description = {
   summary = "Lua binding to the iconv",
   detailed = [[
     Lua binding to the POSIX 'iconv' library, which converts a sequence of
     characters from one codeset into a sequence of corresponding characters
     in another codeset.
   ]],
   license = "MIT/X11",
   homepage = "http://ittner.github.com/lua-iconv/"
}

dependencies = {
   "lua >= 5.1",
}

local iconv_library_dependency_override = {
   ICONV = {
      library = "iconv",
   },
}

local iconv_library_module_override = {
   modules = {
      iconv = {
         libraries = {"iconv"}
      }
   }
}

external_dependencies = {
   ICONV = {
      header = "iconv.h"
   },
   platforms = {
      cygwin = iconv_library_dependency_override,
      macosx = iconv_library_dependency_override,
   }
}

build = {
   type = "builtin",
   modules = {
      iconv = {
          sources = {"luaiconv.c"},
          incdirs = {"$(ICONV_INCDIR)"},
          libdirs = {"$(ICONV_LIBDIR)"}
      }
   },
   platforms = {
      cygwin = iconv_library_module_override,
      macosx = iconv_library_module_override,
   }
}
