package = "is"
version = "0.1.0-1"
source = {
    url = "git://github.com/jackwilsdon/is.lua",
    tag = "0.1.0-1"
}
description = {
    summary = "Type checking for Lua",
    detailed = [[
        An easy to use type checking library for Lua.
        Primarily designed for the creation of "statically typed" functions.
    ]],
    homepage = "https://github.com/jackwilsdon/is.lua",
    license = "Apache-2.0"
}
build = {
    type = "builtin",
    modules = {
        is = "is.lua"
    }
}
