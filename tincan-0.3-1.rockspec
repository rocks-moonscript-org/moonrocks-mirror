package = "tincan"
version = "0.3-1"

source = {
    url = "http://calminferno.net/lua/tincan-0.3.tar.gz",
}

description = {
    summary = "Dead simple persistent key value store library.",
    homepage = "http://calminferno.net/lua/",
    license = "GPLv3"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        tincan = "tincan.lua"
    }
}
