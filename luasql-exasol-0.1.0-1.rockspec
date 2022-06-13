rockspec_format = "3.0"

local tag = "0.1.0"

package = "luasql-exasol"
version = tag .. "-1"

source = {
    url = 'git://github.com/exasol/exasol-driver-lua',
    tag = tag
}

description = {
    summary = "Exasol SQL driver for Lua",
    labels = {"luasql", "sql", "database", "driver", "exasol"},
    detailed = [[Exasol SQL driver for Lua based on the LuaSQL API.

    You can find the user guide in the project's GitHub repository.
    
    Links:
    
    - User guide: https://github.com/exasol/exasol-driver-lua/blob/master/doc/user_guide/user_guide.md]],
    homepage = "https://github.com/exasol/exasol-driver-lua",
    issues_url = "https://github.com/exasol/exasol-driver-lua/issues",
    license = "MIT",
    maintainer = 'Exasol <opensource@exasol.com>'
}

dependencies = {
    "lua == 5.4",
    "luasocket >= 3.0rc1-2",
    "luasec >= 1.0.2-1",
    "luaossl >= 20200709-0",
    "lua-cjson == 2.1.0", -- pinned to prevent "undefined symbol: lua_objlen" in 2.1.0.6 (https://github.com/mpx/lua-cjson/issues/56)
    "base64 >= 1.5-3",
    "exaerror >= 1.2.2-1",
    "remotelog >= 1.1.1-1"
}

test_dependencies = {
    "busted >= 2.0.0-1",
    "mockagne >= 1.0-2",
    "luacov >= 0.15.0-1",
    "luacov-coveralls >= 0.2.3-1",
    "luacheck >= 0.25.0-1",
    "ldoc >= 1.4.6-2",
    "luasql-sqlite3 >= 2.6.0-1"
}

test = {
    type = "busted"
}

build = {
    type = "builtin",
    modules = {
        ["luasql.exasol"] = "src/luasql/exasol.lua",
        ["luasql.exasol.ConnectionProperties"] = "src/luasql/exasol/ConnectionProperties.lua",
        ["luasql.exasol.Connection"] = "src/luasql/exasol/Connection.lua",
        ["luasql.exasol.constants"] = "src/luasql/exasol/constants.lua",
        ["luasql.exasol.CursorData"] = "src/luasql/exasol/CursorData.lua",
        ["luasql.exasol.Cursor"] = "src/luasql/exasol/Cursor.lua",
        ["luasql.exasol.Environment"] = "src/luasql/exasol/Environment.lua",
        ["luasql.exasol.ExasolWebsocket"] = "src/luasql/exasol/ExasolWebsocket.lua",
        ["luasql.exasol.luws"] = "src/luasql/exasol/luws.lua",
        ["luasql.exasol.util"] = "src/luasql/exasol/util.lua",
        ["luasql.exasol.WebsocketDatahandler"] = "src/luasql/exasol/WebsocketDatahandler.lua",
        ["luasql.exasol.Websocket"] = "src/luasql/exasol/Websocket.lua",
    },
    copy_directories = { "doc" }
}
