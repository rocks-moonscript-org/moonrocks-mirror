package = "gumbo"
version = "0.4-1"
supported_platforms = {"unix"}

description = {
    summary = "Lua bindings for the Gumbo HTML5 parsing library",
    homepage = "https://craigbarnes.github.io/lua-gumbo/",
    license = "ISC"
}

source = {
    url = "https://craigbarnes.github.io/lua-gumbo/dist/lua-gumbo-0.4.tar.gz",
    md5 = '7fb4d046569cbd908578b22b463a0e28'
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
        LUA_LIBDIR = "$(LUA_LIBDIR)",
        LUA_CFLAGS = "-I$(LUA_INCDIR)",
        LUA_PC = "none"
    },
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        LDFLAGS = "$(LIBFLAG)",
        GUMBO_CFLAGS = "-I$(GUMBO_INCDIR)",
        GUMBO_LDFLAGS = "-L$(GUMBO_LIBDIR) -lgumbo"
    },
    install_variables = {
        LUA_CMOD_DIR = "$(LIBDIR)",
        LUA_LMOD_DIR = "$(LUADIR)"
    }
}
