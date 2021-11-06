rockspec_format = "3.0"
package = "sentry"
version = "0.9.1-3"
source = {
    url = "git+https://github.com/mah0x211/lua-sentry.git",
    tag = "v0.9.1"
}
description = {
    summary = "kqueue/epoll event module",
    homepage = "https://github.com/mah0x211/lua-sentry",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "command",
    build_command = [[
        autoreconf -ivf && CFLAGS="$(CFLAGS)" CPPFLAGS="-I$(LUA_INCDIR)" LIBFLAG="$(LIBFLAG)" OBJ_EXTENSION="$(OBJ_EXTENSION)" LIB_EXTENSION="$(LIB_EXTENSION)" LIBDIR="$(LIBDIR)" ./configure && make clean && make
    ]],
    install_command = "make install"
}
