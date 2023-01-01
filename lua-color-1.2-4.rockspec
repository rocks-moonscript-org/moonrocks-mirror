package = "lua-color"
version = "1.2-4"
source = {
    url = "git://github.com/Firanel/lua-color",
    tag = "v1.2-4"
}
description = {
    summary = "Lua color library",
    detailed = "Library to parse, convert and manipulate colors.",
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
        [ "lua-color.utils" ] = "utils/init.lua",
        [ "lua-color.utils.class" ] = "utils/class.lua",
        [ "lua-color.utils.bitwise" ] = "utils/bitwise.lua",
        [ "lua-color.colors" ] = "colors/init.lua",
        [ "lua-color.colors.X11" ] = "colors/X11.lua",
        [ "lua-color.terminal" ] = "terminal.lua",
    },
}
