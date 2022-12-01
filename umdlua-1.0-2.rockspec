package = "umdlua"
version = "1.0-2"
source = {
    url = "git://github.com/vanishs/umdlua.git"
}
description = {
    summary = "umdlua (URL Module Definition of Lua)",
    detailed = "this is a UMD Module and also is a UMD tool",
    license = "MIT",
    homepage = "https://github.com/vanishs/umdlua",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["umd"] = "umd.lua",
    },
    install = {
        bin = {
            "umd.lua",
        },
    },
}
