package = "lua-shmem"
source = {
   url = "git://github.com/Eng1N33R/lua-shmem.git",
   tag = "v1.0",
}
version = "1.0-1"
description = {
   summary = "Extremely low-level shared memory management for IPC.",
   detailed = [[
      Extremely low-level shared memory management for IPC.
      Provides a convenience Lua wrapper for mmap/munmap to create and free
      shared memory, and wraps memset/memcpy calls to write and clear
      the shared memory area.
   ]],
   license = "MIT/X11",
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      shmem = {"src/shmem.c"},
   }
}
