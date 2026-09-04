package = "veloce"
version = "1.0-2"

source = {
    url = "git+https://github.com/Victor-Augusto-Aluno-Cps/veloce.git",
    tag = "v1.0.1"
}

description = {
    summary = "A fast and lightweight Lua framework for building servers",

    detailed = [[
Veloce is a fast and lightweight framework for building servers in Lua.

It provides a simple and flexible API for creating HTTP servers,
handling requests and responses, defining routes, and building
web applications and backend services with Lua.
]],

    homepage = "https://github.com/Victor-Augusto-Aluno-Cps/veloce",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luasocket >= 3.0"
}

build = {
    type = "builtin",

    modules = {
        ["veloce"] = "veloce/init.lua",
        ["veloce.veloce"] = "veloce/veloce.lua",

        ["veloce.core.aplication"] = "veloce/core/aplication.lua",
        ["veloce.core.functions"] = "veloce/core/functions.lua",

        ["veloce.utils.json"] = "veloce/utils/json.lua",
        ["veloce.utils.path"] = "veloce/utils/path.lua",
        ["veloce.utils.status"] = "veloce/utils/status.lua"
    }
}