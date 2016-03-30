package = "blowfish"

version = "0.1-1"

source = {
    url = "git://github.com/leoagomes/lua-blowfish",
	tag = "v0.1-1"
}

description = {
    summary = "Blowfish bindings to lua.",
    detailed = [[
        This is a library which connects blowfish
        as in the nettle kit to lua.
    ]],
    homepage = "http://leoagomes.github.io/lua-blowfish/",
    license = "LGPL"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",

    modules = {
        blowfish = {
            "src/lua_blowfish.c",
            "src/blowfish.c"
        }
    }
}
