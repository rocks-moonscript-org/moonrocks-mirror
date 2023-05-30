package = "cgi"
version = "1.0.0-1"
source = {
    url = "https://github.com/Javier164/LuaCGI.git",
    tag = "v1.0.0",
}
description = {
    summary = "A CGI module for the Lua scripting language.",
    detailed = [[
        CGI.lua is a Lua module that provides support for CGI programming.
        It includes features such as handling GET/POST requests, cookies,
        file uploads, HTML tag generation, and more.
    ]],
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        ["cgi"] = "cgi.lua"
    }
}
