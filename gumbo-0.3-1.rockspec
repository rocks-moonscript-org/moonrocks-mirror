package = "gumbo"
version = "0.3-1"
supported_platforms = {"unix"}

description = {
    summary = "Lua bindings for the Gumbo HTML5 parsing library",
    homepage = "https://github.com/craigbarnes/lua-gumbo",
    license = "ISC"
}

source = {
    url = "https://github.com/craigbarnes/lua-gumbo/releases/download/0.3/lua-gumbo-0.3.tar.gz",
    md5 = 'be902b1533402b1eb45908e9a5bcda2e'
}

dependencies = {
    "lua >= 5.1"
}

external_dependencies = {
    GUMBO = {
        library = "gumbo",
        header = "gumbo.h"
    }
}

build = {
    type = "make",
    variables = {
        LUA = "$(LUA)",
        LUA_INCDIR = "$(LUA_INCDIR)",
        LUA_LIBDIR = "$(LUA_LIBDIR)"
    },
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        LDFLAGS = "$(LIBFLAG)",
        LUA_CFLAGS = "-I$(LUA_INCDIR)",
        GUMBO_CFLAGS = "-I$(GUMBO_INCDIR)",
        GUMBO_LDFLAGS = "-L$(GUMBO_LIBDIR)"
    },
    install_variables = {
        LUA_CMOD_DIR = "$(LIBDIR)",
        LUA_LMOD_DIR = "$(LUADIR)"
    }
}
