package="lua-xmlreader"
version="0.1-1"
source = {
   url = "http://luaforge.net/frs/download.php/3053/lua-xmlreader-0.1.tar.gz",
   md5 = "0a4a056a5faa0e1b8fe45070533a2ee6"
}
description = {
   summary = "An implementation of the XmlReader API using libxml2.",
   homepage = "http://asbradbury.org/projects/lua-xmlreader/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   LIBXML2 = {
      header = "libxml2/libxml/xmlreader.h",
      library = "libxml2.so"
   }
}
build = {
   type = "make",
   install_pass = false,
   build_variables = {
      LUA = "$(LUA_DIR)",
      LIBXML2 = "$(LIBXML2_DIR)",
      LIBFLAG = "$(LIBFLAG)"
   },
   install = {
      lib = { "xmlreader.so" },
   },
   patches = {
      ["fix_makefile.patch"] = [[
--- lua-xmlreader-0.1-old/Makefile	2008-01-28 14:42:14.000000000 -0200
+++ lua-xmlreader-0.1-new/Makefile	2008-01-28 14:44:16.000000000 -0200
@@ -4,11 +4,16 @@
 LUALIB= $(LUA)/lib
 LUABIN= $(LUA)/bin
 
+LIBXML2=/usr
+LIBXML2INC=$(LIBXML2)/include/libxml2
+LIBXML2LIB=$(LIBXML2)/lib
+
 # no need to change anything below here
 CFLAGS= $(INCS) $(DEFS) $(WARN) -O2
 WARN= -Wall
-INCS= -I$(LUAINC) -I/usr/include/libxml2/
-LIBS= -lxml2
+INCS= -I$(LUAINC) -I$(LIBXML2INC)
+LIBS= -lxml2 -L$(LIBXML2LIB)
+LIBFLAG= -shared
 
 OBJS= xmlreader.o error.o
 
@@ -17,7 +22,7 @@
 all: $(SOS)
 
 $(SOS): $(OBJS)
-	$(CC) -o $@ -shared $(OBJS) $(LIBS)
+	$(CC) -o $@ $(LIBFLAG) $(OBJS) $(LIBS)
 
 .PHONY: clean doc
 clean:
]]
   }
}
