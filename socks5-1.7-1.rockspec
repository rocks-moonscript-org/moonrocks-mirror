package = "socks5"
version = "1.7-1"
source = {
    url = 'git://github.com/starius/lua-resty-socks5',
    tag = '1.7',
}
description = {
    summary =
        "Lua SOCKS5 client for the ngx_lua based " ..
        "on the cosocket API",
    homepage = "https://github.com/starius/lua-resty-socks5",
    maintainer = "Boris Nagaev <bnagaev@gmail.com>",
    license = "MIT"
}
dependencies = {
    "lua ~> 5.1"
}
build = {
    type = "builtin",
    modules = {
        socks5 = "socks5.lua",
    },
}

