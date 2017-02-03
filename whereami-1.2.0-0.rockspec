package = "whereami"
version = "1.2.0-0"

source = {
    url = "https://github.com/jprjr/lua-whereami/archive/1.2.0.tar.gz",
    file= "lua-whereami-1.2.0.tar.gz"
}

description = {
    summary = "A multi-platform library for finding the executable name",
    homepage = "https://github.com/jprjr/lua-whereami",
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

