package = "minux"
version = "0.2-1"

source = {
   url = "git+https://github.com/Hollowzzzy/Minux-cli",
   tag = "master",
}

description = {
   summary = "Fast filesystem operations for Lua, backed by C++/POSIX syscalls",
   detailed = [[
      minux provides create, delete, copy, and move operations for files
      and folders, implemented directly on top of POSIX syscalls in C++.
   ]],
   license = "MIT",
}

dependencies = {
   "lua >= 5.4, < 6.0",
}

build = {
   type = "builtin",
   modules = {
      minux = {
         sources = {
            "lua_bindings.cpp",
            "open.cpp",
            "delete.cpp",
            "create.cpp",
            "copy.cpp",
            "move.cpp",
         },
      },
   },
}
