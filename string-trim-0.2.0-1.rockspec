package = "string-trim"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-string-trim.git",
    tag = "v0.2.0",
}
description = {
    summary = "trims the specified string or spaces from the string.",
    homepage = "https://github.com/mah0x211/lua-string-trim",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["string.trim"] = "trim.lua"
    }
}

