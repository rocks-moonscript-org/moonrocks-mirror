package = "string-format"
version = "0.2.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-string-format.git",
    tag = "v0.2.1",
}
description = {
    summary = "formatted output conversion module with asprintf and snprintf.",
    homepage = "https://github.com/mah0x211/lua-string-format",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "make",
    build_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        STRING_FORMAT_COVERAGE = "$(STRING_FORMAT_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        INST_CLIBDIR = "$(LIBDIR)/string",
    },
}
