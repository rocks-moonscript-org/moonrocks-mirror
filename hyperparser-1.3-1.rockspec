package = "hyperparser"
version = "1.3-1"
source = {
   url = "git+https://github.com/lalawue/hyperparser.git"
}
description = {
   summary = "Socket utilities",
   detailed = "Lua bindings to http parser library",
   homepage = "https://github.com/lalawue/hyperparser",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.2"
}
supported_platforms = {
   "macosx", "freebsd", "linux"
}
build = {
   type = "builtin",
   modules = {
      hyperparser = {
         sources = {
            "src/main.c",
            "src/http_parser.c"
         }
      }
   }
}
