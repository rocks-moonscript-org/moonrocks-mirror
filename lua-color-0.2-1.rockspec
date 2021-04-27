package = "lua-color"
version = "0.2-1"
source = {
    url = "git://github.com/Firanel/lua-color",
    tag = "v0.2"
}
description = {
    summary = "Lua color library",
    detailed = "Library to convert and manipulate colors.",
    homepage = "https://github.com/Firanel/lua-color",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        [ "lua-color" ] = "init.lua",
        [ "lua-color.util" ] = "util/init.lua",
        [ "lua-color.util.class" ] = "util/class.lua",
    },
    copy_directories = { "doc" }
}
