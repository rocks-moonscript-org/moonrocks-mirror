package = "base2base"
version = "2.0-1"

source = {
    url = "git://github.com/oploadk/base2base.git",
    branch = "v2.0",
}

description = {
    summary = "A Teal / Lua base-to-base converter",
    detailed = [[
        Convert strings representing numbers between different bases.
    ]],
    homepage = "http://github.com/oploadk/base2base",
    license = "MIT/X11",
}

dependencies = { "lua >= 5.3" }

build = {
    type = "builtin",
    modules = { base2base = "base2base.lua" },
    install = { lua = { base2base = "base2base.tl" } },
    copy_directories = {},
}
