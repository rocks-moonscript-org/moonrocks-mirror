package = "lua-marshal"
version = "v1.0"
source = {
    url = "git+https://github.com/joe7575/lua-marshal.git"
}
description = {
    summary = "Fast serialization for Lua",
    detailed = [[
        Serializes tables, which may contain cycles,
        Lua functions with upvalues and basic data types"
    ]],
    homepage = "https://github.com/joe7575/lua-marshal",
    license = "unknown"
}
dependencies = {
   "lua == 5.1"
}
build = {
    type = "builtin",
    modules = {
        marshal = {
            sources = "lmarshal.c"
        }
    }
}
