package = "stp"
version = "0.1.2-1"
source = {
    url = "git://www.kennyshields.net/stp",
    tag = "0.1.2"
}
description = {
    summary = "A Lua module for parsing tokens in text strings.",
    homepage = "https://www.kennyshields.net/",
    license = "GPL v3",
    maintainer = "Kenny Shields <mail@kennyshields.net>"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        stp = "init.lua"
    }
}
