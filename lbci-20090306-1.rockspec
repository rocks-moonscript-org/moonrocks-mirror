package="lbci"
version="20090306-1"

source = {
   url = "http://luarocks.org/extra/lbci.tar.gz",
   md5 = "e6195032003e12ac6af395c03fd2f5c8"
}

description = {
   summary = "A bytecode inspector library",
   detailed = [[
      A bytecode inspector library.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lbci",
   license = "Public domain, MIT"
}

dependencies = {
   "lua == 5.1" -- Strict dependency! Uses Lua internals.
}

build = {
   type = "builtin",
   modules = {
      inspector = {
         sources = {
            "lbci.c"
         },
         incdirs = {
            "lua5.1"
         }
      }
   }
}
