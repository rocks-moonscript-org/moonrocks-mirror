package = "libmdbx"
version = "0.11.13-1"
source = {
    url = "git+https://github.com/mah0x211/lua-libmdbx.git",
    tag = "v0.11.13",
}
description = {
    summary = "libmdbx binding for lua.",
    homepage = "https://github.com/mah0x211/lua-libmdbx",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
}
build = {
    type = "command",
    build_command = [[
        MDBX_VERSION="v0.11.13" sh ./build_deps.sh && \
        make clean && \
        WARNINGS="-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare" \
        MDBX_COVERAGE="$(MDBX_COVERAGE)" \
        CC="$(CC)" \
        CFLAGS="$(CFLAGS)" \
        CPPFLAGS="-I$(LUA_INCDIR) -Ideps/libmdbx" \
        LIBFLAG="$(LIBFLAG)" \
        LIBS="$(LUALIB) deps/libmdbx/libmdbx.a -pthread" \
        LIB_EXTENSION="$(LIB_EXTENSION)" \
        make
    ]],
    install_command = [[
        LIB_EXTENSION="$(LIB_EXTENSION)" \
        INST_LIBDIR="$(LIBDIR)" \
        make install
    ]],
}
