package = "chance"
version = "1.0-0"
source = {
    url = "git://github.com/rangercyh/chance.git"
}
description = {
    summary = "A library for Mersenne Twister random number generator in lua",
    detailed = [[
        just depended lua and nothing.
    ]],
    homepage = "https://github.com/rangercyh/chance",
    license = "WTF"
}
dependencies = {
    "lua ~= 5.3"
}
build = {
    type = "buildin",
    modules = {
        tiny = "chance.lua"
    }
}
