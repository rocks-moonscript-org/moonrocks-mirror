package = "lua-errhandler"
version = "1.0-1"
source = {
    url = "git://github.com/jigordev/lua-errhandler.git",
    branch = "master",
}
description = {
    summary = "A simple Lua library for handling success and error results using classes and method chaining.",
    detailed = [[
        A simple Lua library for handling success and error results using classes and method chaining.
        - Success Class: Represents a successful result with methods to retrieve the result, handle default values, and check its success status.
        - Error Class: Represents an error result with methods to handle error propagation and check its error status.
        - Result Class: Facilitates calling a function that might succeed or fail, returning either Success or Error.
    ]],
    license = "MIT",
    homepage = "https://github.com/jigordev/lua-errhandler",
    maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
    "middleclass",
}
build = {
    type = "builtin",
    modules = {
        ["errhandler"] = "src/errhandler.lua",
    },
}