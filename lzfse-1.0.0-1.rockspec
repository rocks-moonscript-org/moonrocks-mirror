rockspec_format = "3.0"
package = "lzfse"
version = "1.0.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-lzfse.git",
    tag = "v1.0.0",
}
description = {
    summary = "lzfse bindings for lua",
    homepage = "https://github.com/mah0x211/lua-lzfse",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "command",
    build_command = [[
        sh preprocess.sh && autoreconf -ivf && CFLAGS="$(CFLAGS)" CPPFLAGS="-I$(LUA_INCDIR)" LIBFLAG="$(LIBFLAG)" OBJ_EXTENSION="$(OBJ_EXTENSION)" LIB_EXTENSION="$(LIB_EXTENSION)" LIBDIR="$(LIBDIR)" CONFDIR="$(CONFDIR)" ./configure && make clean && make
    ]],
    install_command = [[
        make install
    ]]
}

