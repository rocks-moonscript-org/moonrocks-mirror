package="lua-xmlreader"
version="0.1-2"
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
   type = "builtin",
   modules = {
      xmlreader = {
         sources = {"xmlreader.c", "error.c"},
         libraries = {"xml2"},
         incdirs = {"$(LIBXML2_INCDIR)/libxml2"},
         libdirs = {"$(LIBXML2_LIBDIR)"}
      }
   }
}
