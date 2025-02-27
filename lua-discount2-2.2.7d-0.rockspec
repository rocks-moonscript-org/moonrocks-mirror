package = "lua-discount2"
version = "2.2.7d-0"
source = {
   url = "https://codeberg.org/leso-kn/lua-discount2/archive/v2.2.7d-0.zip",
   dir = "lua-discount2"
}
description = {
   summary = "Binding to a fast C implementation of the Markdown text-to-html markup system",
   homepage = "https://codeberg.org/leso-kn/lua-discount2",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      discount = {
         "basename.c",
         "Csio.c",
         "css.c",
         "docheader.c",
         "dumptree.c",
         "emmatch.c",
         "generate.c",
         "markdown.c",
         "mkdio.c",
         "resource.c",
         "setup.c",
         "tags.c",
         "toc.c",
         "xml.c",
         "ldiscount.c"
      }
   },
   platforms = {
      windows = {
         modules = {
            discount = {
               defines = {
                  "WINDOWS"
               }
            }
         }
      }
   }
}
