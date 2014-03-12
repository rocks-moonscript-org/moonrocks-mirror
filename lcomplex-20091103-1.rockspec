package = "lcomplex"
version = "20091103-1"

source = {
  url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lcomplex.tar.gz", 
  dir = "complex", 
  md5 = "ddb496b1f3f1ab64e49d68515f49dd72"
}

description = {
  summary = "Support for complex numbers in Lua", 
  detailed = [[
    This code provides support for complex numbers in Lua using the functions
    available in C99.
  ]],  
  homepage = "http://penlight.luaforge.net/packages/lcomplex.html", 
  license = "MIT/X11", 
}

build = {
  type = "builtin", 
  modules = {
    complex = {
      sources = {
        "lcomplex.c", 
      },
    }
  }
}

