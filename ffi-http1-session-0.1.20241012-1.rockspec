package = "ffi-http1-session"
version = "0.1.20241012-1"
source = {
   url = "git+https://github.com/lalawue/ffi-http1-session.git",
   tag = "0.1.20241012"
}
description = {
   summary = "Socket utilities",
   detailed = "FFI bindings to http1 & websocket parser library",
   homepage = "https://github.com/lalawue/ffi-http1-session",
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
      http1_session = {
         sources = {
            "src/http_parser.c",
            "src/m_prng.c",
            "src/http1_session.c",
            "src/WjCryptLib_Sha1.c"
         }
      }
   }
}
