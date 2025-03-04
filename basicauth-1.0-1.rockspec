package = "basicAuth"
version = "1.0-1"

source = {
   url = "git+ssh://git@github.com/pro100n1nJkeee/basicauth.git"
}

description = {
    summary = "Basic access authentication for http clients",

    maintainer = "Gavrilov Nikita <nikitadef@live.com>"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = { 
        basic_auth = "src/basic_auth.lua"
    }
}
