package = "flatbuffers-lib"
version = "2.0.0-5"

source = {
    url = "git://github.com/fs7744/lua-flatbuffers-lib.git",
    branch = "v2.0.1",
}

description = {
    summary = "flatbuffers lib",
    homepage = "https://github.com/fs7744/lua-flatbuffers-lib",
    maintainer = "google"
}

dependencies = {
}

build = {
    type = "make",
    build_variables = {
        CFLAGS="$(CFLAGS)",
        LIBFLAG="$(LIBFLAG)",
        LUA_LIBDIR="$(LUA_LIBDIR)",
        LUA_BINDIR="$(LUA_BINDIR)",
        LUA_INCDIR="$(LUA_INCDIR)",
        LUA="$(LUA)",
    },
    install_variables = {
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
    },
}