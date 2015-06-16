package = "luadbg"
version = "0.1-1"

source = {
    url = "git://github.com/pratikac/luadbg",
    tag = "v0.1-1",
}

description = {
    summary = "Lua Debugger",
    detailed = [[
        Fork of clidebugger (https://github.com/ToddWegner/clidebugger).
        ]],
    homepage = "https://github.com/pratikac/luadbg",
    license = "LGP-v3",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ['luadbg.init'] = 'init.lua',
    },
}
