package = "LuaSec"
version = "0.3.3-2"
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
                    defines = { "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL",
                        "LUASEC_EXPORTS", "BUFFER_DEBUG",
                        "LUASEC_API=__declspec(dllexport)" },
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
