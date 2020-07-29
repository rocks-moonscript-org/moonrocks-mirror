package = "luasock99"
version = "0.1-1"
source = {
   url = "git+ssh://git@git.sr.ht/~mna/luasock99"
}
description = {
   detailed = "A Lua module that exposes the socket99 C library in Lua, making it easier to create TCP/UDP/Unix Domain client and server sockets.",
   homepage = "https://git.sr.ht/~mna/luasock99",
   license = "BSD"
}
dependencies = {
   "lua >= 5.3, < 5.5",
}
build = {
   type = "builtin",
    modules = {
      sock99 = {
        sources = {"src/sock99.c", "deps/socket99/socket99.c"},
        defines = {"_POSIX_C_SOURCE=200809L"},
        incdirs = {"deps"},
      }
   },
}
