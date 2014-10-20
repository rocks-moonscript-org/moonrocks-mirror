package = "lua-bcrypt"
version = "0.01-1"
source = {
    url = "/home/govna/luabcrypt"
}

description = {
    summary = "LuaJIT FFI binding for OpenBSD bcrypt",
    homepage = "https://github.com/blablacio/lua-bcrypt",
    maintainer = "Vladislav Manchev <manchev@bin.bz>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["bcrypt"]                = "bcrypt.lua"
    }
}
