rockspec_format = "3.0"
package = "ldk-discount"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/ldk-discount.git",
   tag = "0.1.0"
}
description = {
   summary = "LDK - Discount Bindings",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   modules = {
      ["ldk.discount"] = {
         defines = {
            "GITHUB_CHECKBOX",
            "__WITHOUT_AMALLOC"
         },
         sources = {
            "csrc/discount/amalloc.c",
            "csrc/discount/basename.c",
            "csrc/discount/Csio.c",
            "csrc/discount/css.c",
            "csrc/discount/docheader.c",
            "csrc/discount/dumptree.c",
            "csrc/discount/emmatch.c",
            "csrc/discount/flags.c",
            "csrc/discount/generate.c",
            "csrc/discount/github_flavoured.c",
            "csrc/discount/html5.c",
            "csrc/discount/markdown.c",
            "csrc/discount/mkdio.c",
            "csrc/discount/resource.c",
            "csrc/discount/setup.c",
            "csrc/discount/tags.c",
            "csrc/discount/toc.c",
            "csrc/discount/version.c",
            "csrc/discount/xml.c",
            "csrc/discount/xmlpage.c",
            "csrc/discount.c"
         }
      }
   },
   platforms = {
      windows = {
         modules = {
            ["ldk.discount"] = {
               defines = {
                  "WINDOWS",
                  "GITHUB_CHECKBOX",
                  "__WITHOUT_AMALLOC",
                  "_CRT_SECURE_NO_WARNINGS"
               }
            }
         }
      }
   }
}
test = {
   type = "busted"
}
