package = "cqueues"
version = "20150119.53-1"
source = {
   url = "https://github.com/wahern/cqueues/archive/rel-20150119.tar.gz";
   dir = "cqueues-rel-20150119";
}
description = {
   summary = "Continuation Queues: Embeddable asynchronous networking, threading, and notification framework for Lua on Unix.";
   homepage = "http://25thandclement.com/~william/projects/cqueues.html";
   license = "MIT/X11";
   maintainer = "Daurnimator <quae@daurnimator.com>";
}
supported_platforms = {
   "linux";
   "bsd";
   "solaris";
}
dependencies = {
   "lua == 5.3";
}
build = {
   type = "make";
   makefile = "GNUmakefile";

   build_target = "all5.3";
   build_variables = {
      CFLAGS = "$(CFLAGS)";
      bindir = "$(LUA_BINDIR)";
      includedir = "$(LUA_INCDIR)";
      libdir = "$(LUA_LIBDIR)";
   };

   install_target = "install5.3";
   install_variables = {
      prefix = "$(PREFIX)";
      lua53cpath = "$(LIBDIR)";
      lua53path = "$(LUADIR)";
      bindir = "$(BINDIR)";
   };
}
