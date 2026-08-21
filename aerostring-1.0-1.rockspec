package = "AeroString"
version = "1.0-1"

source = {
    url = "git+https://github.com/AeroForger/AeroString.git"
}

description = {
    summary = "Simple string utility functions for Lua",
    detailed = [[
        Simple string utility functions for Lua.
    ]],
    homepage = "https://github.com/AeroForger/AeroString",
    license = "Apache-2.0"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        AeroString = "AeroString.lua"
    }
}