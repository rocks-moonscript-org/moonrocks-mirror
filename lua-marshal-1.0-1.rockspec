package = "lua-marshal"
version = "1.0-1"
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
    license = "MIT"
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
