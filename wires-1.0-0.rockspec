package = "wires"
version = "1.0-0"
source = {
    url = "git+https://github.com/kitsunies/wires.lua.git",
    tag = "v1.0-0"
}
description = {
    homepage = "https://github.com/kitsunies/wires.lua",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        wires = "wires.lua"
    }
}