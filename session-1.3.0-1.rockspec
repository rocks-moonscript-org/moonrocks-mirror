package = "session"
version = "1.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-session.git",
    tag = "v1.3.0",
}
description = {
    summary = "session module.",
    homepage = "https://github.com/mah0x211/lua-session",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "cache >= 1.3.1",
    "cookie >= 1.3.1",
    "error >= 0.14.0",
    "lauxhlib >= 0.6.1",
    "metamodule >= 0.5.0",
    "string-random >= 0.2.0",
    "time-clock >= 0.4.1",
}
build = {
    type = "builtin",
    modules = {
        ["session"] = "session.lua",
        ["session.base32"] = "lib/base32.lua",
        ["session.cookie"] = "lib/cookie.lua",
        ["session.idgen"] = "lib/idgen.lua",
    },
}

