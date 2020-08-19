package = "ffi-hyperparser"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/lalawue/ffi_hyperparser.git"
}
description = {
   summary = "Socket utilities",
   detailed = "FFI bindings to http parser library",
   homepage = "https://github.com/lalawue/ffi_hyperparser",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
dependencies = {
    "luajit 2.0"
}
supported_platforms = {
   "macosx", "freebsd", "linux", "windows"
}
build = {
   type = "builtin",
   modules = {
      hyperparser = {
         ffi_hyperparser = {
            "ffi_hyperparser.lua"
         },
         sources = {
            "src/http_parser.c",
            "src/pull_style_api.c"
         }
      }
   }
}
