package = "lua-resty-xxhash-encode"
version = "1.0-0"
source = {
    url = "git://github.com/yorkane/lua-resty-xxhash-encode",
    branch = "master",
}

description = {
    summary = "xxhash and base64 wrap for openresty ffi binding",
    homepage = "https://github.com/yorkane/lua-resty-xxhash-encode",
    license = "MIT",
    maintainer = "yorkane <whyork@gmail.com>"
}

dependencies = {
}

build = {
    type = "make",
    build_variables = {
            CFLAGS="$(CFLAGS) -std=c99 -g",
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
