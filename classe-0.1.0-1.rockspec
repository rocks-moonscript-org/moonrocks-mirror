package = "classe"
version = "0.1.0-1"

source = {
    url = "https://github.com/y-akulau/classe/archive/v0.1.0.tar.gz",
}

description = {
    summary = "Lua classes.",
    detailed = [[
        Classes for Lua.
    ]],
    homepage = "https://github.com/y-akulau/classe",
    license = "MIT",
    maintainer = "Yauheni Akulau <yauheni.akulau@gmail.com>",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["classe"] = "src/classe.lua",
    },
}
