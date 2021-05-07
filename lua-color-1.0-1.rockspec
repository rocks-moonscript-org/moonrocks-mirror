package = "lua-color"
version = "1.0-1"
source = {
    url = "git://github.com/Firanel/lua-color",
    tag = "v1.0"
}
description = {
    summary = "Lua color library",
    detailed = "Library to parse, convert and manipulate colors.",
    homepage = "https://github.com/Firanel/lua-color",
    license = "MIT"
}
dependencies = {
    "lua >= 5.3"
}
build = {
    type = "builtin",
    modules = {
        [ "lua-color" ] = "init.lua",
        [ "lua-color.util" ] = "util/init.lua",
        [ "lua-color.util.class" ] = "util/class.lua",
        [ "lua-color.colors" ] = "colors/init.lua",
        [ "lua-color.colors.X11" ] = "colors/X11.lua",
    },
}
