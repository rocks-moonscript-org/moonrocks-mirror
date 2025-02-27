package = "io-pread"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-pread.git",
    tag = "v0.1.0",
}
description = {
    summary = "read nbytes of data from the specified position in the file without modifying the file pointer.",
    homepage = "https://github.com/mah0x211/lua-io-pread",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.14.0",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.0",
}
build = {
    type = "make",
    build_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        IO_PREAD_COVERAGE = "$(IO_PREAD_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        INST_LIBDIR = "$(LIBDIR)/io/",
    },
}
