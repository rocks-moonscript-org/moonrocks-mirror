package = "objectlua"
version = "0.4.10-1"
source = {
    url = "http://objectlua.googlecode.com/files/objectlua-0.4.10.tar.gz",
}
description = {
    summary = "A class-oriented OOP module for Lua",
    detailed = [[
            This is an implementation of a class-oriented Lua module, coded entirely in Lua.
            Its goal is to provide Lua with minimal and reusable OOP, as well as to be easily predictable and extensible.
    ]],
    homepage = "http://code.google.com/p/objectlua/",
    maintainer = "Sebastien Rocca-Serra",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "module",
    modules = {
        ["objectlua.bootstrap"] = "src/objectlua/bootstrap.lua",
        ["objectlua.Object"]    = "src/objectlua/Object.lua",
        ["objectlua.Class"]     = "src/objectlua/Class.lua",
        ["objectlua.Prototype"] = "src/objectlua/Prototype.lua",
    },
    copy_directories = {"test"},
}
