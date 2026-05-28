package = "netstring"
version = "1.0.6-1"
source = {
    url = "https://buffering.party/software/netstring.lua/netstring.lua-1.0.6.tar.gz",
}
description = {
    summary = "Implementation of DJB's netstring for lua",
    homepage = "https://buffering.party/software/netstring.lua/",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        netstring = "src/netstring.lua"
    }
}
dependencies = {
    "lua >= 5.1"
}
