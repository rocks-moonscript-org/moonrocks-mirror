package = "LuaCURL"
version = "1.1-3"
source = {
   url = "http://luaforge.net/frs/download.php/1651/luacurl-1.1.zip",
   md5 = "ebc4758bb1f7774a50d3e20f36fdff39"
}
description = {
   summary = "Lua module binding CURL",
   detailed = [[
      LuaCURL is Lua 5.x compatible module providing Internet browsing
      capabilities based on the CURL library. The module interface
      follows strictly the CURl architecture and is very easy to use
      if the programmer has already experience with CURL.
   ]],
   homepage = "http://luaforge.net/projects/luacurl/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   CURL = {
      header = "curl/curl.h"
   }
}
build = {
   type = "builtin",
   modules = {
     luacurl = {
       sources = { "luacurl.c" },
       libraries = { "curl" },
       incdirs = { "$(CURL_INCDIR)" },
       libdirs = { "$(CURL_LIBDIR)" }
 	 }
   }
}
