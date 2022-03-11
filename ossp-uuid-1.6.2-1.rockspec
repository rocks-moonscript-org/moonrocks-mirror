package = "ossp-uuid"
version = "1.6.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-ossp-uuid.git",
    tag = "v1.6.2",
}
description = {
    summary = "OSSP uuid bindings for lua",
    homepage = "https://github.com/mah0x211/lua-ossp-uuid",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
}
build = {
    type = "make",
    build_variables = {
        PACKAGE             = "ossp-uuid",
        CFLAGS              = "$(CFLAGS)",
        WARNINGS            = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS            = "-I$(LUA_INCDIR) -Ideps/uuid-1.6.2",
        LIBFLAG             = "$(LIBFLAG)",
        LIB_EXTENSION       = "$(LIB_EXTENSION)",
        OSSP_UUID_COVERAGE  = "$(OSSP_UUID_COVERAGE)",
    },
    install_variables = {
        PACKAGE         = "ossp-uuid",
        INST_LIBDIR     = "$(LIBDIR)",
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
    }
}

