package = "geometrymoon"
version = "1.0-0"
source = {
    url = "git+https://github.com/mrtnpwn/GeometryMoon.git"
}
description = {
    summary = "A Geometry Dash API library written in Lua.",
    homepage = "https://github.com/mrtnpwn/GeometryMoon",
    license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "lua-requests >= 1.2-0"
}
build = {
    type = "builtin",
    modules = {
        GeometryMoon = "geometrymoon/init.lua"
    }
}
