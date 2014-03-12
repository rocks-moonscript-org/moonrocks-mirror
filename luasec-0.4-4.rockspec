package = "LuaSec"
version = "0.4-4"
source = {
   url = "http://luaforge.net/frs/download.php/4255/luasec-0.4.tar.gz",
   md5 = "712158d60207bdbb6215fc7e07d8db24",
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
external_dependencies = {
   platforms = {
      unix = {
         OPENSSL = {
            header = "openssl/ssl.h",
            library = "ssl",
         }
      }
   },
}
build = {
    type = "builtin",
    copy_directories = { "doc", "samples" },
    platforms = {
        unix = {
            modules = {
                ssl = {
                    sources = { "src/buffer.c", "src/context.c", "src/io.c",
                        "src/ssl.c", "src/timeout.c", "src/usocket.c" },
                    libraries = { "ssl", "crypto" },
                    incdirs = { "$(OPENSSL_INCDIR)" },
                    libdirs = { "$(OPENSSL_LIBDIR)" },
                }
            },
            install = {
                lib = { "ssl.so" },
                lua = {
                    "src/ssl.lua",
                    ["ssl.https"] = "src/https.lua" }
            }
        },
        windows = {
            modules = {
                ssl = {
                    sources = { "src/buffer.c", "src/context.c", "src/io.c",
                        "src/ssl.c", "src/timeout.c", "src/wsocket.c" },
                    defines = { "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL",
                        "LUASEC_EXPORTS", "BUFFER_DEBUG",
                        "LUASEC_API=__declspec(dllexport)" },
                    libraries = { "ssl", "crypto" }
                }
            },
            install = {
                lib = { "ssl.dll" },
                lua = {
                   "src/ssl.lua",
                   ["ssl.https"] = "src/https.lua"
                }
            }
        }
    }
}
