package="luars232"
version="1.0.3-1"

description = {
   summary = "Serial (RS-232) support",
   detailed = [[
      This module adds support for manipulation of the serial port in 
      Lua. It statically links librs232 (see the project homepage
      for the stand-alone library).
   ]],
   homepage = "https://github.com/ynezz/librs232/",
   license = "MIT/X11",
}

source = {
   url = "git://github.com/ynezz/librs232.git",
   tag = "v1.0.3",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   platforms = {
      unix = {
         modules = {
            luars232 = {
               sources = { "src/rs232.c", "src/rs232_posix.c", "bindings/lua/luars232.c" },
               incdirs = { "include" },
               defines = { "LUAROCKS_HACK -std=gnu99" },         
            }
         }
      },
      windows = {
         modules = {
            luars232 = {
               sources = { "src/rs232.c", "src/rs232_windows.c", "bindings/lua/luars232.c" },
               incdirs = { "include" },
            }
         }
      }
   },
   copy_directories = {
      "invalid"
   },
}
