rockspec_format = "3.0"
package = "lua-nowplaying"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/Khronos31/lua-nowplaying",
   tag = "v0.1.0"
}
description = {
   summary = "Library to get NowPlaying information for iOS.",
   detailed = "lua-nowplaying provides some wrapper functions for NowPlayingInfo(https://github.com/Khronos31/NowPlaying).",
   homepage = "https://github.com/Khronos31/lua-nowplaying",
   license = "MIT"
}
supported_platforms = {
   "macosx"
}
dependencies = {
   "lua >= 5.3"
}
build_dependencies = {
   "luarocks-build-extended"
}
external_dependencies = {
   NOWPLAYINGINFO = {
      header = "NowPlayingInfo.h",
      library = "nowplaying"
   }
}
build = {
   type = "extended",
   modules = {
      nowplaying = {
         variables = {
            CFLAG_EXTRAS = {"-fobjc-arc"},
            LIBFLAG_EXTRAS = {"-framework", "Foundation"}
         },
         sources = "nowplaying.m",
         libraries = "nowplaying"
      }
   }
}
