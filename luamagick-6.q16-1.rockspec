rockspec_format = "3.0"
package = "luamagick"
version = "6.q16-1"
source = {
   url = "git+https://github.com/lua-wow-tools/luamagick.git",
}
description = {
   homepage = "https://github.com/lua-wow-tools/luamagick",
   license = "MIT",
}
build_dependencies = {
   "lpeg",
   "penlight",
}
build = {
   type = "builtin",
   modules = {
      ["luamagick"] = {
         defines = {
            "MAGICKCORE_HDRI_ENABLE=0",
            "MAGICKCORE_QUANTUM_DEPTH=16",
         },
         incdirs = {
            "/usr/include/aarch64-linux-gnu/ImageMagick-6",
            "/usr/include/x86_64-linux-gnu/ImageMagick-6",
            "/usr/include/ImageMagick-6",
         },
         libraries = {
            "MagickCore-6.Q16",
            "MagickWand-6.Q16",
         },
         sources = "luamagick.c",
      },
   }
}
