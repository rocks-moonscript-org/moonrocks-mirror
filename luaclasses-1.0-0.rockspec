package = "LuaClasses"
version = "1.0-0"
source = {
    url = "git://github.com/Angrypygmy/LuaClasses",
    tag = "1.0"
}
description = {
    summary = "Closure based class support for lua",
    detailed = 
    [[
        A closure based Lua script supporting:
            -Encapsulation
            -Inheritance
            -Polymorphism
    ]],
    homepage = "https://github.com/Angrypygmy/LuaClasses",
    license = "None"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        LuaClasses = "class.lua"
    }
}
