package = "LuaSec"
version = "0.4.1-1"
source = {
   url = "https://github.com/brunoos/luasec/archive/luasec-0.4.1.tar.gz",
   md5 = "f6f92d93fb3310aadf2ede5d3e8dea53",
   dir = "luasec-luasec-0.4.1",
}
description = {
   summary = "A binding for OpenSSL library to provide TLS/SSL communication over LuaSocket.",
   detailed = "This version delegates to LuaSocket the TCP connection establishment between the client and server. Then LuaSec uses this connection to start a secure TLS/SSL session.",
   homepage = "http://luasec.luaforge.net",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1", "luasocket"
}
external_dependencies = {
   platforms = {
      unix = {
         OPENSSL = {
            header = "openssl/ssl.h",
            library = "ssl"
         }
      }
   }
}
build = {
   type = "builtin",
   copy_directories = {
      "doc", "samples"
   },
   platforms = {
      unix = {
         install = {
            lib = {
               "ssl.so"
            },
            lua = {
               "src/ssl.lua", ['ssl.https'] = "src/https.lua"
            }
         },
         modules = {
            ssl = {
               incdirs = {
                  "$(OPENSSL_INCDIR)"
               },
               libdirs = {
                  "$(OPENSSL_LIBDIR)"
               },
               libraries = {
                  "ssl", "crypto"
               },
               sources = {
                  "src/buffer.c", "src/context.c", "src/io.c", "src/ssl.c", "src/timeout.c", "src/usocket.c"
               }
            }
         }
      },
      windows = {
         install = {
            lib = {
               "ssl.dll"
            },
            lua = {
               "src/ssl.lua", ['ssl.https'] = "src/https.lua"
            }
         },
         modules = {
            ssl = {
               defines = {
                  "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL", "LUASEC_EXPORTS", "BUFFER_DEBUG", "LUASEC_API=__declspec(dllexport)"
               },
               libraries = {
                  "ssl", "crypto"
               },
               sources = {
                  "src/buffer.c", "src/context.c", "src/io.c", "src/ssl.c", "src/timeout.c", "src/wsocket.c"
               }
            }
         }
      }
   }
}
