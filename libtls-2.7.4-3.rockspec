rockspec_format = "3.0"
package = "libtls"
version = "2.7.4-3"
source = {
    url = "git+https://github.com/mah0x211/lua-libtls.git",
    tag = "v2.7.4-3"
}
description = {
    summary = "libtls bindings for lua",
    homepage = "https://github.com/mah0x211/lua-libtls",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "command",
    build_command = [[
        CONFDIR="$(CONFDIR)" VERSION="2.7.4" sh preprocess.sh && autoreconf -ivf && CFLAGS="$(CFLAGS)" CPPFLAGS="-I$(LUA_INCDIR)" LIBFLAG="$(LIBFLAG)" OBJ_EXTENSION="$(OBJ_EXTENSION)" LIB_EXTENSION="$(LIB_EXTENSION)" LIBDIR="$(LIBDIR)" CONFDIR="$(CONFDIR)" ./configure && make clean && make
    ]],
    install_command = [[
        make install
    ]]
}

