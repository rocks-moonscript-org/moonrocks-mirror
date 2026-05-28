package = "Lua-Linq"
version = "0.1-0"
rockspec_format = "3.0"
source = {
    url = "git+https://github.com/FireDragon91245/Lua-Linq.git"
}
description = {
    summary = "Extensive & flexible LINQ implimentation",
    detailed = [[
        Extensive and flexible LINQ implementation using stateless lazy enumerables.

        Key Features

        - Reusable enumerables
        - State stored per iter() call
        - Single enumerables for lists
        - Pair-wise enumerables for table-like structures
        - Lightweight list wrapper
        - Lightweight dict wrapper
        - Luaish style: for item in items:iter() do end
    ]],
    homepage = "https://github.com/FireDragon91245/Lua-Linq",
    license = "MIT"
}
dependencies = {
    "lua >= 5.3"
}
build_dependencies = {}
build = {
    type = "builtin",
    modules = {
        linq = "linq.lua",
        ["linq.map"] = "linq/map.lua",
        ["linq.predicates"] = "linq/predicates.lua"
    },
    copy_directories = {
        "tests"
    }
}
test_dependencies = {
    "LuaUnit"
}
test = {
    platforms = {
        windows = {
            type = "command",
            command = "lua.bat tests/test.lua"
        },
        linux = {
            type = "command",
            command = "lua tests/test.lua"
        }
    }
}
