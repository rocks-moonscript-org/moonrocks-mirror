rockspec_format = "3.0"
package = "libmagic"
version = "5.41-1"
source = {
    url = "git+https://github.com/mah0x211/lua-libmagic.git",
    tag = "v5.41"
}
description = {
    summary = "bindings for libmagic",
    homepage = "https://github.com/mah0x211/lua-libmagic",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "command",
    build_command = [[
        CFLAGS="$(CFLAGS)" sh build_deps.sh && autoreconf -ivf && CFLAGS="$(CFLAGS)" CPPFLAGS="-I$(LUA_INCDIR)" LIBFLAG="$(LIBFLAG)" OBJ_EXTENSION="$(OBJ_EXTENSION)" LIB_EXTENSION="$(LIB_EXTENSION)" LIBDIR="$(LIBDIR)" CONFDIR="$(CONFDIR)" ./configure && make clean && make
    ]],
    install_command = [[
        make install && mkdir -p $(CONFDIR) && cp deps/file/magic/magic.mgc $(CONFDIR)/magic.mgc
    ]]
}
