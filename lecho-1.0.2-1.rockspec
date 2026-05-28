package = "lecho"
version = "1.0.2-1"

source = {
    url = "https://buffering.party/software/lua-lecho/lua-lecho-1.0.2.tar.gz",
}

description = {
    summary = "A small library for enabling/disabling terminal echo",
    homepage = "https://buffering.party/software/lua-lecho/",
    maintainer = "John Regan <john@jrjrtech.com>",
    license = "MIT"
}

dependencies = {
    "lua",
}

build = {
    type = "builtin",
    modules = {
        ['lecho'] = 'lecho.lua',
        ['lecho.core'] = {
            sources = { "lecho.c" },
        }
    }
}

