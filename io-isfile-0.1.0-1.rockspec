package = 'io-isfile'
version = '0.1.0-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-io-isfile.git',
    tag = 'v0.1.0',
}
description = {
    summary = 'determines whether the argument is the lua file handle or not.',
    homepage = 'https://github.com/mah0x211/lua-io-isfile',
    license = 'MIT/X11',
    maintainer = 'Masatoshi Fukunaga',
}
dependencies = {
    'lua >= 5.1',
    'lauxhlib >= 0.3.1',
}
build = {
    type = 'make',
    build_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        CFLAGS          = "$(CFLAGS)",
        WARNINGS        = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS        = "-I$(LUA_INCDIR)",
        LDFLAGS         = "$(LIBFLAG)",
        IO_ISFILE_COVERAGE = "$(IO_ISFILE_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        INST_LIBDIR     = "$(LIBDIR)/io/",
    }
}
