package = "llsocket"
version = "0.15.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-llsocket.git",
    tag = "v0.15.1",
}
description = {
    summary = "low-level socket module",
    homepage = "https://github.com/mah0x211/lua-llsocket",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "lauxhlib >= 0.3.1",
    "iovec >= 0.5.0",
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
