package = "luaflock"
version = "1.0.1-1"
source = {
   url = "git://github.com/SolraBizna/luaflock",
   tag = "v1.0.1-1",
}
description = {
   summary = "A wrapper for the BSD-ish flock(2) system call.",
   detailed = [[
luaposix and lunix only provide wrappers for the POSIX-standard fcntl(2)-based
locking. On Linux, this does not interoperate with flock(2)-based locking,
which means that Lua code cannot interoperate with software that uses it,
including shell scripts using the flock(1) utility. This package provides a
wrapper around the flock(2) system call, closing the gap.

This package will only function on systems with fileno(3) and flock(2).
]],
   homepage = "https://github.com/SolraBizna/luaflock",
   license = "zlib",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      flock = "flock.c",
   },
}
