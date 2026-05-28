package = "leregex"
version = "1.0-0"

source = {
    url = "git+https://github.com/achengli/leregex"
}

description = {
    summary = "Lua regex.h C regular expressions extension",
    detailed = "Lua regex.h C regular expressions extension",
    homepage = "https://github.com/achengli/leregex",
    license = "BSD",
    maintainer = "yassin_achengli@hotmail.com"
}

dependencies = {
    "lua >= 5.1",
}

external_dependencies = {
}

build = {
    type = "builtin",
    modules = {
        leregex = {
            sources = {"src/leregex.c"},
        }
    },
    copy_directories = {
        "test",
        "src",
    }
}
