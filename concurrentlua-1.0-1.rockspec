package = "ConcurrentLua"
version = "1.0-1"
source = {
   url = "http://luaforge.net/frs/download.php/3024/concurrentlua-1.0.tar.bz2"
}
description = {
   summary = "Concurrency Oriented Programming in Lua",
   detailed = [[
      ConcurrentLua is a system that implements Erlang-style concurrency for
      the Lua programming language. It is a system that brings an alternative
      to what scripting languages offer for concurrent and distributed programming.
   ]],
   license = "MIT/X11",
   homepage = "http://concurrentlua.luaforge.net/"
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 2.0",
   "copas >= 1.1"
}
build = {
   type = "make",
   variables = {
      PREFIX = "$(PREFIX)",
      LIBDIR = "$(LIBDIR)",
      SHAREDIR = "$(LUADIR)",
      INCDIRS = "-I$(LUA_INCDIR)",
      MYCFLAGS = "$(CFLAGS)",
      MYLDFLAGS = "$(LIBFLAG)"
   },
   patches = {
   ["01-makefile1.patch"] = [[
--- old/src/concurrent/Makefile	2008-01-25 14:54:00.000000000 -0200
+++ new/src/concurrent/Makefile	2008-01-25 14:53:09.000000000 -0200
@@ -1,6 +1,7 @@
 DESTDIR = 
 PREFIX = /usr/local
-SHAREDIR = $(PREFIX)/share/lua/5.1/concurrent
+SHAREDIR = $(PREFIX)/share/lua/5.1
+SHAREMODDIR = $(SHAREDIR)/concurrent
 
 SHARE = init.lua \
 	option.lua \
@@ -17,16 +18,16 @@
 $(SHARE):
 
 install:
-	if test ! -d $(DESTDIR)$(SHAREDIR); \
-		then mkdir -p $(DESTDIR)$(SHAREDIR); \
+	if test ! -d $(DESTDIR)$(SHAREMODDIR); \
+		then mkdir -p $(DESTDIR)$(SHAREMODDIR); \
 	fi
-	cp -f $(SHARE) $(DESTDIR)$(SHAREDIR) && \
-		cd $(DESTDIR)$(SHAREDIR) && \
+	cp -f $(SHARE) $(DESTDIR)$(SHAREMODDIR) && \
+		cd $(DESTDIR)$(SHAREMODDIR) && \
 		chmod 0644 $(SHARE)
 	cd distributed && $(MAKE) install
 
 uninstall:
-	cd $(DESTDIR)$(SHAREDIR) && \
+	cd $(DESTDIR)$(SHAREMODDIR) && \
 	    	rm -f $(SHARE)
 	cd distributed && $(MAKE) uninstall
 
]],
   ["02-makefile2.patch"] = [[
--- old/src/concurrent/distributed/Makefile	2008-01-25 14:50:57.000000000 -0200
+++ new/src/concurrent/distributed/Makefile	2008-01-25 14:52:05.000000000 -0200
@@ -1,6 +1,7 @@
 DESTDIR = 
 PREFIX = /usr/local
-SHAREDIR = $(PREFIX)/share/lua/5.1/concurrent/distributed
+SHAREDIR = $(PREFIX)/share/lua/5.1/
+SHAREMODDIR = $(SHAREDIR)/concurrent/distributed
 
 SHARE = init.lua \
 	network.lua \
@@ -18,15 +19,15 @@
 $(SHARE):
 
 install:
-	if test ! -d $(DESTDIR)$(SHAREDIR); \
-		then mkdir -p $(DESTDIR)$(SHAREDIR); \
+	if test ! -d $(DESTDIR)$(SHAREMODDIR); \
+		then mkdir -p $(DESTDIR)$(SHAREMODDIR); \
 	fi
-	cp -f $(SHARE) $(DESTDIR)$(SHAREDIR) && \
-		cd $(DESTDIR)$(SHAREDIR) && \
+	cp -f $(SHARE) $(DESTDIR)$(SHAREMODDIR) && \
+		cd $(DESTDIR)$(SHAREMODDIR) && \
 		chmod 0644 $(SHARE)
 
 uninstall:
-	cd $(DESTDIR)$(SHAREDIR) && \
+	cd $(DESTDIR)$(SHAREMODDIR) && \
 	    	rm -f $(SHARE)
 
 clean:
]]
   }   
}
