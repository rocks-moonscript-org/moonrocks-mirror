package = "luix"
version = "0.0.1-1"
source = {
    url = "git+https://github.com/Hacknique/Luix.git",
    tag = "v0.0.1"
}
description = {
    summary = "A Lua implemented kernel",
    detailed = "Lunix is a kernel implemented in Lua.",
    homepage = "https://github.com/Hacknique/Luix",
    license = "LGPLv3 or later"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        lunix = "src/init.lua"
    }
}
