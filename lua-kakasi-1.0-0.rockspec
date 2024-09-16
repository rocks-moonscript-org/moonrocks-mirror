package = "lua-kakasi"
version = "1.0-0"
source = {
   url = "git://github.com/MayamaTakeshi/lua-kakasi.git",
   tag = "1.0-0"
}
description = {
   summary = "A Lua extension module for kakasi",
   detailed = "",
   license = "MIT",
   homepage = "https://github.com/MayamaTakeshi/lua-kakasi",
}
dependencies = {
   "lua >= 5.1",
   "lua-iconv",
}
build = {
   type = "builtin",
   modules = {
      ["lua-kakasi"] = {
         sources = {
            "lua-kakasi.c",
         },
	 libraries = { "kakasi" },
	 build = {
	     make = "make",
         },
      },
   },
}
