package = "luafudge"
version = "1.0-0"

source = {
    url = "git://github.com/xunto/luafudge",
    tag = "v1.0"
}

description = {
    license = "GPLv3"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        luafudge = "./src/luafudge.lua"
    }
}
