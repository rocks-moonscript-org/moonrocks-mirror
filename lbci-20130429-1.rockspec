package="lbci"
version="20130429-1"

source = {
   url = "http://luarocks.org/extra/multi/lbci-20130429-1.tar.gz",
   dir = "lbci",
   md5 = "d30fe0ab8b84c77f905c6e4392accc6a"
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
  -- Uses Lua internals. Includes support for Lua 5.1 *and* Lua 5.2.
   "lua >= 5.1, < 5.3"
}

build = {
   type = "builtin",
   modules = {
      bci = {
         sources = {
            "lbci_multi.c"
         },
         incdirs = {
            "dummy"
         }
      }
   }
}

