package = "sass"
version = "0.1-1"

description = {
    summary = "Lua bindings for libsass",
    homepage = "https://github.com/craigbarnes/lua-sass",
    license = "ISC"
}

source = {
    url = "https://craigbarnes.gitlab.io/dist/lua-sass/lua-sass-0.1.tar.gz",
    md5 = "b609b2469615ac1f28b8b7e13aadeaaf"
}

dependencies = {
    "lua >= 5.1"
}

external_dependencies = {
    SASS = {
        header = "sass/context.h",
        library = "sass"
    }
}

build = {
    type = "builtin",
    modules = {
        sass = {
            sources = {"sass.c"},
            libraries = {"sass"}
        }
    }
}
