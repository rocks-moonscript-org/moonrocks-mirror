package="lua-tinycdb"
version="0.2-1"
source = {
   url = "http://luaforge.net/frs/download.php/3834/lua-tinycdb-0.2.tar.gz",
   md5 = "ee5d9a2c0d3b8e32d8adfcd2f4cfeb97"
}
description = {
   summary = "Provides support for creating and reading constant databases",
   homepage = "http://asbradbury.org/projects/lua-tinycdb/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "module",
   modules = {
      cdb = {
         "cdb_find.c",
         "cdb_findnext.c",
         "cdb_hash.c",
         "cdb_init.c",
         "cdb_make_add.c",
         "cdb_make.c",
         "cdb_make_put.c",
         "cdb_seek.c",
         "cdb_seq.c",
         "cdb_unpack.c",
         "lcdb.c"
      }
   }
}
