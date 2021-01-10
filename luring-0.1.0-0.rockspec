package = "luring"
version = "0.1.0-0"
source = {
   url = "git+https://github.com/thislight/luring.git",
   tag = "v0.1.0-0",
}
description = {
   homepage = "https://github.com/thislight/luring",
   license = "Apache-2.0",
   summary = "Luring is a callback-style interface to io_uring.",
   detailed = [[Luring is a callback-style interface to io_uring. Io_uring is a new I/O framework introduced in Linux 5.1. You should have liburing to install it.]],
}
build = {
   type = "builtin",
   modules = {
      luring = {
         sources = {"luring/luring.c"},
         incdirs = {"luring/"},
         libraries = {"uring"},
      }
   }
}
