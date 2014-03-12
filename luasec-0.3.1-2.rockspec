package = "LuaSec"
version = "0.3.1-2"
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
    type = "builtin",
    copy_directories = { "doc", "samples" },
    platforms = {
        unix = {
            modules = {
                ssl = {
                    sources = { "src/buffer.c", "src/context.c", "src/io.c",
                        "src/ssl.c", "src/timeout.c", "src/usocket.c" },
                    libraries = { "ssl", "crypto" }
                }
            },
            install = {
                lib = { "ssl.so" },
                lua = { "src/ssl.lua" }
            }
        },
        windows = {
            modules = {
                ssl = {
                    sources = { "src/buffer.c", "src/context.c", "src/io.c",
                        "src/ssl.c", "src/timeout.c", "src/wsocket.c" },
                    libraries = { "ssl", "crypto" }
                }
            },
            install = {
                lib = { "ssl.dll" },
                lua = { "src/ssl.lua" }
            }
        }
    }
}
