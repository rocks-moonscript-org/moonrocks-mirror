package = "milkyway"
version = "dev-1"

source = {
    url = "git://github.com/felipemxg/milkyway.git"
}

description = {
    summary = "A local version control system built entirely in Lua",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luafilesystem",
    "luasql-sqlite3"
}

build = {
    type = "builtin",
    modules = {
        ["milkyway.branch"] = "milkyway/branch.lua",
        ["milkyway.config"] = "milkyway/config.lua",
        ["milkyway.control"] = "milkyway/control.lua",
        ["milkyway.data"] = "milkyway/data.lua",
        ["milkyway.files"] = "milkyway/files.lua",
        ["milkyway.tables"] = "milkyway/tables.lua",
    },

    install = {
        bin = { "milk.lua" }
    }
}
