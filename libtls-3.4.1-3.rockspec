package = "libtls"
version = "3.4.1-3"
source = {
    url = "git+https://github.com/mah0x211/lua-libtls.git",
    tag = "v3.4.1",
}
description = {
    summary = "libtls bindings for lua",
    homepage = "https://github.com/mah0x211/lua-libtls",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.8.0",
    "lauxhlib >= 0.3.1",
}
external_dependencies = {
    LIBTLS = {
        header = "tls.h",
        library = "tls",
    },
}
build = {
    type = "builtin",
    modules = {
        libtls = {
            sources = {
                "src/libtls.c",
            },
            libraries = {
                "tls",
            },
            incdirs = {
                "$(LIBTLS_INCDIR)",
            },
            libdirs = {
                "$(LIBTLS_LIBDIR)",
            },
        },
        ["libtls.config"] = {
            sources = {
                "src/config.c",
            },
            libraries = {
                "tls",
            },
            incdirs = {
                "$(LIBTLS_INCDIR)",
            },
            libdirs = {
                "$(LIBTLS_LIBDIR)",
            },
        },
    },
}
