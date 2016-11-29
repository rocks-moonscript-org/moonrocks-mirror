package = "discount"
version = "0.2.1-1"
supported_platforms = {"unix"}

description = {
    summary = "Lua bindings for the Discount Markdown library",
    homepage = "https://github.com/craigbarnes/lua-discount",
    license = "ISC"
}

source = {
    url = "https://craigbarnes.gitlab.io/lua-discount/dist/lua-discount-0.2.1.tar.gz",
    md5 = 'c1bb8ba7d0f779b71aac0346fa4f5400'
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "command",
    build_command = "make CFLAGS='$(CFLAGS)' LIBFLAGS='$(LIBFLAG)' LUA_CFLAGS='-I$(LUA_INCDIR)' LUA='$(LUA)' LUA_PC=none USE_LOCAL_DISCOUNT=1",
    install_command = "make install LUA_CMOD_DIR='$(LIBDIR)' LUA_LMOD_DIR='$(LUADIR)' LUA_PC=none"
}
