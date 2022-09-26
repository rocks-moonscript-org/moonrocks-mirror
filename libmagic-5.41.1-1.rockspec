package = "libmagic"
version = "5.41.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-libmagic.git",
    tag = "v5.41.1",
}
description = {
    summary = "bindings for libmagic",
    homepage = "https://github.com/mah0x211/lua-libmagic",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
external_dependencies = {
    LIBMAGIC = {
        header = "magic.h",
        library = "magic",
    },
}
build = {
    type = "builtin",
    modules = {
        ["libmagic"] = {
            sources = {
                "src/magic.c",
            },
            libraries = {
                "magic",
            },
            incdirs = {
                "$(LIBMAGIC_INCDIR)",
            },
            libdirs = {
                "$(LIBMAGIC_LIBDIR)",
            },
        },
    },
}
