package = "lua-anki-connect"
version = "0.0-3"
source = {
    url = "git://gitlab.com/paul.bonnot/lua-anki-connect.git",
    tag = "v0.0-1"
}
description = {
    summary = "Lua bindings for the AnkiConnect plugin",
    detailed = [[
        The AnkiConnect plugin offers an API in order to communicate with a
        running Anki instance via HTTP.
        This library provides Lua wrappers around the functions of the
        AnkiConnect API.
    ]],
    homepage = "https://gitlab.com/paul.bonnot/lua-anki-connect",
    license = "GPLv3"
}
dependencies = {
    "lua >= 5.1, < 5.4",
    "luasocket >= 2.1",
    "dkjson >= 2.1.0",
}
build = {
    type = "builtin",
    modules = {
        ["anki-connect"] = "src/anki-connect.lua"
    }
}
