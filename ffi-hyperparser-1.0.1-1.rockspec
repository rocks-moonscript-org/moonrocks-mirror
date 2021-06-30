package = "ffi-hyperparser"
version = "1.0.1-1"
source = {
   url = "git+https://github.com/lalawue/ffi-hyperparser.git",
   tag = "1.0.1"
}
description = {
   summary = "Socket utilities",
   detailed = "FFI bindings to http parser library",
   homepage = "https://github.com/lalawue/ffi-hyperparser",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
supported_platforms = {
   "macosx", "freebsd", "linux", "windows"
}
build = {
   type = "builtin",
   modules = {
      hyperparser = {
         ffi_hyperparser = {
            "ffi-hyperparser.lua"
         },
         sources = {
            "src/http_parser.c",
            "src/pull_style_api.c"
         }
      }
   }
}
