rockspec_format = "3.0"
package = "lunalify"
version = "0.3.0-1"

source = {
   url = "git://github.com/WellizxSilva/lunalify.git",
   tag = "main"
}


description = {
   summary = "Native Windows 11 Toast Notifications for Lua.",
   detailed = [[
      Lunalify provides a high-performance bridge to Windows WinRT Toast Notifications
      using a C++ native daemon architecture for non-blocking interactions.
   ]],
   homepage = "https://github.com/WellizxSilva/lunalify",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "none",
   build_pass = true,
   install_pass = false,
   install = {
      lib = {
         ["lunalify_core"] = "bin/lunalify_core.dll"
      },
      lua = {
         ["lunalify.init"] = "lua/lunalify/init.lua",
         ["lunalify.errors"] = "lua/lunalify/errors.lua",
         ["lunalify.helpers"] = "lua/lunalify/helpers.lua",
         ["lunalify.configs"] = "lua/lunalify/configs.lua",
      }
   },
   build_variables = {
      CFLAGS = "$(CFLAGS)",
      LIBFLAG = "$(LIBFLAG)",
      LUA_LIBDIR = "$(LUA_LIBDIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
   },
   copy_directories  = { "docs" }
}

