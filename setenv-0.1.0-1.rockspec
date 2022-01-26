package = "setenv"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-setenv.git",
    tag = "v0.1.0",
}
description = {
    summary = "inserts or resets the environment variable name in the current environment list.",
    homepage = "https://github.com/mah0x211/lua-setenv",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        setenv = {
            sources = { 'src/setenv.c' }
        }
    }
}
