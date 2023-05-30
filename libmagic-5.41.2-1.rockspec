package = "libmagic"
version = "5.41.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-libmagic.git",
    tag = "v5.41.2",
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
    type = "make",
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR) -I$(LIBMAGIC_INCDIR)",
        LDFLAGS = "$(LIBFLAG) -L$(LIBMAGIC_LIBDIR) -lmagic",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        LIBMAGIC_COVERAGE = "$(LIBMAGIC_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        INST_LIBDIR = "$(LIBDIR)",
        INST_LUADIR = "$(LUADIR)",
    },
}
