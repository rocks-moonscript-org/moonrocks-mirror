rockspec_format = "3.0"
package = "scribunto"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/t7ru/scribunto-luacats"
}

description = {
    summary = "LuaCATS definitions for MediaWiki's Scribunto",
    homepage = "https://github.com/t7ru/scribunto-luacats",
    license = "MIT"
}

dependencies = {}

build = {
    type = "lls-addon",
    settings = {
        runtime = {
            version = "Lua 5.1",
            builtin = {
                io = "disable",
                coroutine = "disable",
                os = "disable",
                debug = "disable",
                package = "disable",
                ffi = "disable",
                jit = "disable"
            }
        }
    }
}
