package = 'error'
version = '0.8.0-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-error.git',
    tag = 'v0.8.0',
}
description = {
    summary = 'additional features to the error module.',
    homepage = 'https://github.com/mah0x211/lua-error',
    license = 'MIT/X11',
    maintainer = 'Masatoshi Fukunaga'
}
dependencies = {
    'lua >= 5.1',
    'lauxhlib >= 0.3.1',
}
build = {
    type = 'make',
    build_variables = {
        PACKAGE         = 'error',
        LIB_EXTENSION   = '$(LIB_EXTENSION)',
        SRCDIR          = 'src',
        CFLAGS          = '$(CFLAGS)',
        WARNINGS        = '-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare',
        CPPFLAGS        = '-I$(LUA_INCDIR)',
        LDFLAGS         = '$(LIBFLAG)',
        ERROR_COVERAGE  = '$(ERROR_COVERAGE)',
    },
    install_variables = {
        PACKAGE         = 'error',
        LIB_EXTENSION   = '$(LIB_EXTENSION)',
        SRCDIR          = 'src',
        LIBDIR          = '$(LIBDIR)',
        LUA_INCDIR      = '$(LUA_INCDIR)',
    }
}
