rockspec_format = "1.0"
package = "mattata-api"
version = "1.0-0"

source = {
    url = "git://github.com/wrxck/mattata-api.git",
    dir = "mattata-api",
    branch = "master"
}

description = {
    summary = "Lua library for writing Telegram bots.",
    detailed = "Lua library for writing Telegram bots, with support for all Telegram bot API methods and extensive functions to help minimise the amount of code needed to write a bot.",
    license = "GPL-3",
    homepage = "https://github.com/wrxck/mattata-api",
    maintainer = "Matthew Hesketh <wrxck0@gmail.com>"
}

supported_platforms = { "linux" }

dependencies = {
    "dkjson >= 2.5-2",
    "lpeg >= 1.0.1-1",
    "luasec >= 0.6-1",
    "luasocket >= 3.0rc1-2",
    "multipart-post >= 1.1-1"
}

build = {
    type = "builtin",
    modules = {
        ["mattata-api.core"] = "src/core.lua",
        ["mattata-api.tools"] = "src/tools.lua"
    }
}