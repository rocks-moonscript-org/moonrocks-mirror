rockspec_format = "3.0"
package = "luapicohttpparser"
version = "0.1-0"
source = {
   url = "git+https://github.com/thislight/luapicohttpparser.git",
   tag = "v0.1",
}
description = {
   homepage = "https://github.com/thislight/luapicohttpparser",
   license = "LGPL-3"
}
dependencies = {
   "lua 5.3",
   "strbuffer 1.0-1",
}
build = {
   type = "builtin",
   modules = {
      lphr = "src/luapicohttpparser.lua",
      ['lphr.c'] = {
         sources = {'src/luapicohttpparser.c', 'picohttpparser/picohttpparser.c'},
         incdirs = {'src/', 'picohttpparser/'},
         libdirs = {'picohttpparser/'},
      }
   }
}
