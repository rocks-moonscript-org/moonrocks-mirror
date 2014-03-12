package="lua-discount"
version="1.2.7-1"
source = {
   url = "http://luaforge.net/frs/download.php/3598/lua-discount-1.2.7.tar.gz",
   md5 = "0f12d2953e2ecca9e6c0112d43f7ea3a"
}
description = {
   summary = "Binding to a fast C implementation of the Markdown text-to-html markup system",
   homepage = "http://asbradbury.org/projects/lua-discount/",
   license = "BSD"
}
supported_platforms = {"unix"}
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
      linux = {
         modules = {
            discount = {
               defines = {"HAVE_FOPENCOOKIE"}
            }
         }
      }
   }
}
