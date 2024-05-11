package = "lua-askpass"
version = "1.1-1"
source = {
    url = "git+https://github.com/absolpega/lua-askpass",
    tag = "v1.1",
}
description = {
    homepage = "https://github.com/absolpega/lua-askpass",
    license = "OpenBSD",
}
dependencies = {
    "lua >= 5.1, <= 5.4",
}
build = {
    type = "none",
    install = {
        bin = { "askpass.lua" },
    },
}
