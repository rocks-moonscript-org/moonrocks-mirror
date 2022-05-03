rockspec_format = "3.0"
package = "llsocket"
version = "0.13.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-llsocket.git",
    tag = "v0.13.0",
}
description = {
    summary = "low-level socket module",
    homepage = "https://github.com/mah0x211/lua-llsocket",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.6.0",
    "lauxhlib >= 0.3.1",
    "iovec >= 0.4.0",
}
build = {
    type = "command",
    build_command = [[
        autoreconf -ivf && CFLAGS="$(CFLAGS)" CPPFLAGS="-I$(LUA_INCDIR)" LIBFLAG="$(LIBFLAG)" OBJ_EXTENSION="$(OBJ_EXTENSION)" LIB_EXTENSION="$(LIB_EXTENSION)" LIBDIR="$(LIBDIR)" TMPLDIR="tmpl" VARDIR="var" ./configure && make clean && make LLSOCKET_COVERAGE="$(LLSOCKET_COVERAGE)"
    ]],
    install_command = [[
        make install
    ]]
}
