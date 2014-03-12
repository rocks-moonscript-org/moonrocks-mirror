package = "LuaSec"
version = "0.3.1-1"
source = {
   url = "http://luaforge.net/frs/download.php/4013/luasec-0.3.1.tar.gz",
   md5 = "aacd011996f79d625c5551a33c410411",
}
description = {
   summary = "A binding for OpenSSL library to provide TLS/SSL communication over LuaSocket.",
   detailed = "This version delegates to LuaSocket the TCP connection establishment between the client and server. Then LuaSec uses this connection to start a secure TLS/SSL session.",
   homepage = "http://luasec.luaforge.net",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1",
   "luasocket",
}
build = {
   type = "make",
   install_variables = {
      LUAPATH = "$(LUADIR)",
      CPATH = "$(LIBDIR)",
   },
   platforms = {
      linux = {
          build_target = "linux",
      },
      macosx = {
          build_target = "macosx",
      },
      bsd = {
          build_target = "bsd",
      },
   }
}
