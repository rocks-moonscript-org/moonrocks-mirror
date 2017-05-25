package = "luafontmanager"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/deepakjois/luafontmanager",
   tag = "v0.1.0"
}
description = {
   summary = "A Lua module to access the system font catalog",
   homepage = "https://github.com/deepakjois/luafontmanager",
   license = "MIT"
}
supported_platforms = {
   "linux",
   "macosx",
   "windows"
}
dependencies = {
   "lua >= 5.2, < 5.4"
}
external_dependencies = {
   platforms = {
      linux = {
         FONTCONFIG = {
            header = "fontconfig/fontconfig.h"
         }
      }
   }
}
build = {
   type = "builtin",
   modules = {
      fontmanager = "src/fontmanager.lua"
   },
   platforms = {
      linux = {
         modules = {
            luafontmanager = {
               incdirs = {
                  "$(FONTCONFIG_INCDIR)/fontconfig"
               },
               libdirs = {
                  "$(FONTCONFIG_LIBDIR)"
               },
               libraries = {
                  "fontconfig"
               },
               sources = {
                  "src/luafontmanager/luafontmanager.c",
                  "src/luafontmanager/fonts_fontconfig.c"
               }
            }
         }
      },
      macosx = {
         build_variables = {
            CFLAGS = "$(CFLAGS)",
            LIBFLAG = "$(LIBFLAG)",
            LUA = "$(LUA)",
            LUA_BINDIR = "$(LUA_BINDIR)",
            LUA_INCDIR = "$(LUA_INCDIR)",
            LUA_LIBDIR = "$(LUA_LIBDIR)"
         },
         install_variables = {
            INST_BINDIR = "$(BINDIR)",
            INST_CONFDIR = "$(CONFDIR)",
            INST_LIBDIR = "$(LIBDIR)",
            INST_LUADIR = "$(LUADIR)",
            INST_PREFIX = "$(PREFIX)"
         },
         makefile = "Makefile.osx",
         type = "make"
      }
   }
}
