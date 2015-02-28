package = "sandbox"
version = "0.1.0-1"

source = {
    url = "git://github.com/darkstalker/sandbox.git",
    tag = "0.1.0",
}

description = {
    summary = "Small library for running Lua code in a sandbox",
    detailed = [[
        Loads each chunk in a separate environment with a restricted subset of the Lua library.
        Pure Lua implementation. It doesn't implement memory/execution time restrictions.
    ]],
    homepage = "https://github.com/darkstalker/sandbox",
    license = "MIT/X11",
}

dependencies = {
    "lua >= 5.1, <= 5.3",
}

build = {
    type = "builtin",
    modules = {
        sandbox = "src/sandbox.lua",
    },
    copy_directories = { "tests" },
}
