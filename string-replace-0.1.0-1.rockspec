package = "string-replace"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-string-replace.git",
    tag = "v0.1.0",
}
description = {
    summary = "replaces a specified string with another specified string.",
    homepage = "https://github.com/mah0x211/lua-string-replace",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["string.replace"] = "replace.lua"
    }
}

