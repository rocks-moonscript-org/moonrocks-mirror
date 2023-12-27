package = "net"
version = "0.38.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-net.git",
    tag = "v0.38.0",
}
description = {
    summary = "net module",
    homepage = "https://github.com/mah0x211/lua-net",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "error >= 0.8.0",
    "gpoll >= 0.8",
    "metamodule >= 0.3.3",
    "lauxhlib >= 0.5.0",
    "llsocket >= 0.16.0",
    "io-isfile >= 0.1.0",
    "io-fopen >= 0.1.3",
    "iovec >= 0.3",
    "isa >= 0.2.1",
    "time-clock >= 0.4",
}
external_dependencies = {
    OPENSSL = {
        header = "openssl/ssl.h",
        library = "ssl",
    },
}
build = {
    type = "builtin",
    modules = {
        net = "net.lua",
        ["net.addrinfo"] = "lib/addrinfo.lua",
        ["net.cmsghdr"] = "lib/cmsghdr.lua",
        ["net.device"] = "lib/device.lua",
        ["net.env"] = "lib/env.lua",
        ["net.msghdr"] = "lib/msghdr.lua",
        ["net.socket"] = "lib/socket.lua",
        ["net.unix"] = "lib/unix.lua",
        ["net.stream"] = "lib/stream.lua",
        ["net.stream.unix"] = "lib/stream/unix.lua",
        ["net.stream.inet"] = "lib/stream/inet.lua",
        ["net.dgram"] = "lib/dgram.lua",
        ["net.dgram.inet"] = "lib/dgram/inet.lua",
        ["net.dgram.unix"] = "lib/dgram/unix.lua",
        ["net.tls"] = "lib/tls.lua",
        ["net.tls.unix"] = "lib/tls/unix.lua",
        ["net.tls.stream"] = "lib/tls/stream.lua",
        ["net.tls.stream.inet"] = "lib/tls/stream/inet.lua",
        ["net.tls.stream.unix"] = "lib/tls/stream/unix.lua",
        ["net.tls.context"] = {
            sources = "src/tls_context.c",
            incdirs = {
                "$(OPENSSL_DIR)/include",
            },
            libdirs = {
                "$(OPENSSL_DIR)/lib",
            },
            libraries = {
                "ssl",
                "crypto",
            },
        },
        ["net.tls.client"] = {
            sources = "src/tls_client.c",
            incdirs = {
                "$(OPENSSL_DIR)/include",
            },
            libdirs = {
                "$(OPENSSL_DIR)/lib",
            },
            libraries = {
                "ssl",
                "crypto",
            },
        },
        ["net.tls.server"] = {
            sources = "src/tls_server.c",
            incdirs = {
                "$(OPENSSL_DIR)/include",
            },
            libdirs = {
                "$(OPENSSL_DIR)/lib",
            },
            libraries = {
                "ssl",
                "crypto",
            },
        },
    },
}
