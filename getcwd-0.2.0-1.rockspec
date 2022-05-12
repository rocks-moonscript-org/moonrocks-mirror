package = "getcwd"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-getcwd.git",
    tag = "v0.2.0",
}
description = {
    summary = "get working directory pathname.",
    homepage = "https://github.com/mah0x211/lua-getcwd",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
}
build = {
    type = 'builtin',
    modules = {
        getcwd = {
            sources = { 'src/getcwd.c' }
        },
    }
}
