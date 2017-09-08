package = "modest"
version = "0.1-1"

source = {
    url = "git://github.com/marcoonroad/modest",
    tag = "v0.1-1",
}

local detailed = [[
    This library is a successfully encoding of the Python magic
    __name__ variable. In Python programmers often check that
    variable to detect if their files are running under script
    mode or either being loaded and imported as modules. It is
    useful, for example, to provide an usage example for your
    library's clients, or even to embed unit tests in your own
    modules. It's also useful to expose your own module to be
    called from command-line applications (e.g, shell/pipes).
]]

description = {
    summary  = "Script/module mode detection while running/loading Lua files.",
    detailed = detailed,
    homepage = "http://github.com/marcoonroad/modest",
    license  = "MIT/X11",
}

dependencies = {
    "lua >= 5.1, < 5.4",
}

build = {
    type = "builtin",

    modules = {
        [ "modest" ] = "src/modest/init.lua",
    },
}

-- END --
