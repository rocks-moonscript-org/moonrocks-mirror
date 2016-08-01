package = "magic"
version = "5.25-1"
source = {
    url = "gitrec://github.com/mah0x211/lua-magic.git",
    tag = "v5.25"
}
description = {
    summary = "bindings for libmagic",
    homepage = "https://github.com/mah0x211/lua-magic", 
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "luarocks-fetch-gitrec >= 0.2"
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

