package = "whereami"
version = "1.2.1-1"

source = {
    url = "https://buffering.party/software/lua-whereami/lua-whereami-1.2.1.tar.gz",
}

description = {
    summary = "A multi-platform library for finding the executable name",
    homepage = "https://buffering.party/software/lua-whereami/",
    maintainer = "John Regan <john@jrjrtech.com>",
    license = "MIT"
}

dependencies = {
    "lua",
}

build = {
    type = "builtin",
    modules = {
        ['whereami'] = 'whereami.lua',
        ['whereami.core'] = {
            sources = { "lua-whereami.c","whereami/src/whereami.c" },
            incdirs = { "whereami/src" }
        }
    }
}

