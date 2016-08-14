package = "netstring"
version = "1.0.2-0"
source = {
    url = "git://github.com/jprjr/netstring.lua.git",
    tag = "1.0.2"
}
description = {
    summary = "Implementation of DJB's netstring for lua",
    homepage = "https://github.com/jprjr/netstring.lua",
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
