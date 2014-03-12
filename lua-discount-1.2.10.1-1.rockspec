package="lua-discount"
version="1.2.10.1-1"
source = {
   url = "http://luaforge.net/frs/download.php/3758/lua-discount-1.2.10.1.tar.gz",
   md5 = "7dc7055816dc755aacb48bfd5eb2eb5b"
}
description = {
   summary = "Binding to a fast C implementation of the Markdown text-to-html markup system",
   homepage = "http://asbradbury.org/projects/lua-discount/",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      discount = {
         "docheader.c",
         "dumptree.c",
         "generate.c",
         "markdown.c",
         "mkdio.c",
         "resource.c",
         "ldiscount.c"
      }
   },
   platforms = {
      windows = {
         modules = {
            discount = {
               defines = {"WINDOWS"}
            }
         }
      }
   }
}
