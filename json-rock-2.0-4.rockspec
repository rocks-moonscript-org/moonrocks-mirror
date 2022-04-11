package = "json-rock"
version = "2.0-4"
source = {
    url = "git+https://github.com/gladkikhviktor/json-rock",
}
description = {
    summary = "A lightweight JSON library for Lua.",
    homepage = "https://github.com/gladkikhviktor/json-rock",
    license = " MIT",
    maintainer = "Viktor Gladkikh <vgladkih7@gmail.com>"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        json2 = "src/json2.lua"
    }
}
