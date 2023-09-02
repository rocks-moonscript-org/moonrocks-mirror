package = "lua-secureunionid"
version = "1.0-1"
rockspec_format = "3.0"
source = {
   url = "git://github.com/ChuanDou2021/lua-secureunionid",
   tag = "v1.1",
}
description = {
   summary = "Secure ECC-based DID intersection",
   detailed = [[
      Provide Secure ECC-based DID intersection for Lua.
      The details of this project can be found in [SecureUnionID](https://github.com/volcengine/SecureUnionID)
   ]],
   homepage = "https://github.com/ChuanDou2021/lua-secureunionid",
   license = "Apache-2.0 license"
}
build = {
   type = "cmake",
   build_variables = {
            CFLAGS="$(CFLAGS) -std=c99 -g -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast",
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
test = {
   type = "command",
   command = "bash runtests.sh",
}