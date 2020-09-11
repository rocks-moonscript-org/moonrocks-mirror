rockspec_format = "3.0"
package = "luapicohttpparser"
version = "0.2-0"
source = {
   url = "git+https://github.com/thislight/luapicohttpparser.git",
   tag = "v0.2",
}
description = {
   homepage = "https://github.com/thislight/luapicohttpparser",
   license = "LGPL-3",
   summary = "lua binding for picohttpparser",
   detailed = [[luapicohttpparser is a binding library for picohttpparser, a high-performance HTTP parser.]],
   maintainer = "thisLight <l1589002388@gmail.com>"
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
      },
      ['lphr.c.r2'] = 'src/r2.lua',
      ['lphr.r2'] = 'src/luapicohttpparser2.lua',
   }
}
