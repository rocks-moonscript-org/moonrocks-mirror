package = "LuaSec"
version = "0.3.3-1"
source = {
   url = "http://luaforge.net/frs/download.php/4160/luasec-0.3.3.tar.gz",
   md5 = "88261020372dfe8f850fdb60e4fae186",
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
