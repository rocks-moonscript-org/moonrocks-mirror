package = "whereami"
version = "1.0.1-0"

source = {
    url = "gitrec+https://github.com/jprjr/lua-whereami.git",
    tag = "1.0.1"
}

description = {
    summary = "A multi-platform library for finding the executable name",
    homepage = "https://github.com/jprjr/lua-whereami",
    maintainer = "John Regan <john@jrjrtech.com>",
    license = "MIT"
}

dependencies = {
    "lua",
    "luarocks-fetch-gitrec",
}

build = {
    type = "builtin",
    modules = {
        whereami = {
            sources = { "lua-whereami.c","whereami/src/whereami.c" },
            incdirs = { "whereami/src" }
        }
    }
}

